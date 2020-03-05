module.exports = function (grunt) {

    "use strict";
    require("matchdep").filterDev("grunt-*").forEach(grunt.loadNpmTasks);

    grunt.initConfig({

        pkg: grunt.file.readJSON('package.json'),

        cssc: {
            build: {
                options: {
                    sortSelectors: true,
                    lineBreaks: true,
                    sortDeclarations: true,
                    consolidateViaDeclarations: false,
                    consolidateViaSelectors: false,
                    consolidateMediaQueries: false
                },
                files: {
                    'assets/css/custom.css': 'assets/css/custom.css'
                }
            }
        },

        cssmin: {
            build: {
                src: 'assets/css/custom.css',
                dest: 'assets/css/<%= pkg.name %>.min.css'
            }
        },

        sass: {
            build: {
                files: {
                    'assets/css/custom.css': 'assets/sass/custom.scss',
                    'assets/css/components.css': 'assets/sass/components.scss'
                    /*  not included in pgk.name.min.css  (not global enough) build these separately--not included in globals.php */
                   /* 'assets/css/components/highlight.css': 'assets/sass/components/highlight.scss',
                    'assets/css/components/amslides.css': 'assets/sass/components/amslides.scss'*/

                }
            }
        },

        watch: {

            js: {
                files: ['assets/js/<%= pkg.name %>.js'],
                tasks: ['uglify']
            },
            css: {
                files: ['assets/sass/**/*.scss'],
                tasks: ['buildcss']
            },
            livereload: {
                files: ['*.php', 'assets/css/*.css', 'assets/js/*.js'],
                options: {
                    livereload: true
                }
            }
        },

        uglify: {
            build: {
                files: {
                    'assets/js/<%= pkg.name %>.min.js': [
                        'assets/js/site.js'


                    ]
                }
            }
        }

    });


    // These plugins provide necessary tasks.
    grunt.loadNpmTasks('grunt-contrib-jshint');
    grunt.loadNpmTasks('grunt-contrib-sass');
    grunt.loadNpmTasks('grunt-cssc');
    grunt.loadNpmTasks('grunt-contrib-cssmin');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-watch');

    grunt.registerTask('default', ['sass', 'uglify', 'cssc', 'cssmin', 'watch']);
    grunt.registerTask('buildcss', ['sass', 'cssc', 'cssmin']);

};
