(function($) {

    var json = [{
            "comment": { "value": "He's deadline oriented, independent and a focused strategist.<br/>Always ready to put all his energy into getting the job done." },
            "name": { "value": "Curtis N." },
            "timestamp": { "value": " - Group Health Coop" }
        }, {
           "comment": { "value": "Adam interacted with the product and business teams<br/> and gave valuable suggestions for improving<br/> the user experience." },
           "name": { "value": "Sonal J." },
           "timestamp": { "value": " - Visa" }
       }, {
           "comment": { "value": "Adam was so fabulous to manage on the Core Ops team,<br/> he was willing to do anything and everything<br/> to get the work done." },
           "name": { "value": "Jane M." },
           "timestamp": { "value": " - Group Health Coop" }
       }, {
            "comment": { "value": "Adam's blend of strong implementation skills and<br/> creative ideas make him an asset for any team." },
            "name": { "value": "   Mike H." },
            "timestamp": { "value": " - Sotto Wireless" }
        }, {
            "comment": { "value": "Adam went above and beyond spending<br/> time reviewing and improving the UI/UX<br/> experience for the user." },
            "name": { "value": "John D." },
            "timestamp": { "value": " - Ramsell Corp" }
        },{
            "comment": { "value": "Adam was always cool and always delivering<br/> the UI, accommodating rapid<br/> changes in requirements." },
            "name": { "value": " Amit S." },
            "timestamp": { "value": " - Ramsell Corp" }
        }, {
            "comment": { "value": "                                  Yeah, my dad's AWESOME!" },
            "name": { "value": "                 Rufus" },
            "timestamp": { "value": " - the Schnoodle" }
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
