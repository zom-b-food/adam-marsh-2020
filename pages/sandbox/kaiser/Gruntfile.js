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
                    'css/un-minimized-core.css': 'css/un-minimized-core.css'
                }
            }
        },

        cssmin: {
            build: {
                src: 'css/un-minimized-core.css',
                dest: 'compiled/<%= pkg.name %>.min.css'
            }
        },

        sass: {
            build: {
                files: {
                    'css/un-minimized-core.css': 'sass/framework.scss',
                    'css/custom.css': 'sass/custom.scss'

                }
            }
        },

        watch: {

            js: {
                files: ['js/<%= pkg.name %>.js'],
                tasks: ['uglify']
            },
            css: {
                files: ['sass/**/*.scss'],
                tasks: ['buildcss']
            },
            livereload: {
                files: ['*.jsp', 'css/*.css', 'js/*.js'],
                options: {
                    livereload: true
                }
            }
        },

        uglify: {
            build: {
                files: {
                    'compiled/<%= pkg.name %>.min.js': [
                        'js/site.js',
                        'js/uikit.js'


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

    grunt.registerTask('watch', ['sass', 'uglify', 'cssc', 'cssmin', 'watch']);
    grunt.registerTask('default', ['sass', 'uglify', 'cssc', 'cssmin']);
    grunt.registerTask('buildcss', ['sass', 'cssc', 'cssmin']);

};