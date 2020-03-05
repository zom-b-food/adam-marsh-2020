(function($) {

    var json = [{
            "comment": { "value": "The most active thing about me is my imagination." },
            "name": { "value": "Garfield," },
            "timestamp": { "value": "1/12/2015" }
        }, {
            "comment": { "value": "Maybe if I stare at this paper long enough people will think I can read." },
            "name": { "value": "Daffy Duck," },
            "timestamp": { "value": "3/19/2014" }
        }, {
            "comment": { "value": "Eh, what's up doc? Got any carrots?" },
            "name": { "value": "Bugs Bunny," },
            "timestamp": { "value": "11/27/2012" }
        }, {
            "comment": { "value": "Some people are worth melting for." },
            "name": { "value": "Olaf," },
            "timestamp": { "value": "1/12/2015" }
        }, {
            "comment": { "value": "You're never too old to be young." },
            "name": { "value": "Snow White," },
            "timestamp": { "value": "3/19/2014" }
        }, {
            "comment": { "value": "There's no one I'd rather be than me." },
            "name": { "value": "Wreck-It Ralph," },
            "timestamp": { "value": "11/27/2012" }
        }, {
            "comment": { "value": "To laugh at yourself is to love yourself." },
            "name": { "value": "Mickey Mouse," },
            "timestamp": { "value": "11/27/2012" }
        }
    ];


    var carousel = new $.slideview({
        data: json,
        container: '#my-slideview',
        loop: true
    });

    carousel.load();

    // Timed slide change only works if option.loop is set to true
    carousel.startTimed(5000);

})(jQuery);
