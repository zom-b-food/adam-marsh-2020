<!doctype html>
<html lang="en" class="no-js">
    <head>
        <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-107289842-1"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());

            gtag('config', 'UA-107289842-1');
        </script>
        <meta name="description"
              content="Adam L Marsh; UI/UX Designer and Developer, www.adam-marsh.com, www.ui-design-engineering.com, www.myuikit.com, front-end web design and development.">
        <meta name="author" content="ui-design-engineering.com www.myuikit.com">

        <?php include "../sitewide/globals-css.php"; ?>
        <title>Samples</title>
        <link type="text/css" rel="stylesheet" href="../samplesites/styles/styles.css"/>
        <script type="text/javascript">
            /*function showDiv() {
             var ele1 = document.getElementById("home");
             var ele2 = document.getElementById("close");
             if (window.opener && window.opener.open) {
             ele2.style.display = "block";
             }
             else {
             ele1.style.display = "block";
             }
             }*/
        </script>
        <style type="text/css">
            .no-js #loader {
                display: none;
            }

            .js #loader {
                display: block;
                position: absolute;
                left: 100px;
                top: 0;
            }

            .se-pre-con {
                position: fixed;
                left: 0px;
                top: 0px;
                width: 100%;
                height: 100%;
                z-index: 9999;
                background: url(../splash/images/loading.svg) center no-repeat #02313e;
            }

            #home, #close {
                display: none;
                text-align: center
            }

            .oc {
                width: 86px;
                height: 38px;
            }

            .web * {
                position: absolute !important;
                margin-top: -2000px !important;
                margin-left: -1000px !important;
                z-index: 0 !important;
                color: transparent !important;
            }

            html, body {
                margin: 0 auto;
                width: 540px;
            }
        </style>
    </head>
    <body>
        <div class="se-pre-con"></div>
        <script>
            $(window).load(function () {
                $(".se-pre-con").fadeOut("slow");
            });
        </script>
        <table>
            <tr>
                <td align="center"><a target="sampleFrame" href="/samplesites/hilton1.php"><img class="mo"
                                                                                                 onmouseout="this.style.opacity=1;this.filters.alpha.opacity=100"
                                                                                                 onmouseover="this.style.opacity=0.4;this.filters.alpha.opacity=40"
                                                                                                 src="/assets/images/logos/hiltonLogo.png"
                                                                                                 name="hiltonBut"
                                                                                                 alt="Hilton"
                                                                                                 border="0"/></a></td>
                <td align="center"><a target="sampleFrame" href="/samplesites/ghc1.php"><img class="mo"
                                                                                              onmouseout="this.style.opacity=1;this.filters.alpha.opacity=100"
                                                                                              onmouseover="this.style.opacity=0.4;this.filters.alpha.opacity=40"
                                                                                              src="/assets/images/logos/ghcLogo.png"
                                                                                              name="ghcBut"
                                                                                              alt="GroupHealth"
                                                                                              border="0"/></a></td>
                <td align="center"><a target="sampleFrame" href="/samplesites/visa1.php"><img class="mo"
                                                                                               onmouseout="this.style.opacity=1;this.filters.alpha.opacity=100"
                                                                                               onmouseover="this.style.opacity=0.4;this.filters.alpha.opacity=40"
                                                                                               src="/assets/images/logos/visaLogo.png"
                                                                                               name="visaBut" alt="VISA"
                                                                                               border="0"/></a></td>
                <td align="center"><a target="sampleFrame" href="/samplesites/att1.php"><img class="mo"
                                                                                              onmouseout="this.style.opacity=1;this.filters.alpha.opacity=100"
                                                                                              onmouseover="this.style.opacity=0.4;this.filters.alpha.opacity=40"
                                                                                              src="/assets/images/logos/attLogo.jpg"
                                                                                              name="attBut" alt="ATT"
                                                                                              border="0"/></a></td>
                <td align="center"><a target="sampleFrame" href="/samplesites/ms1.php"><img class="mo"
                                                                                             onmouseout="this.style.opacity=1;this.filters.alpha.opacity=100"
                                                                                             onmouseover="this.style.opacity=0.4;this.filters.alpha.opacity=40"
                                                                                             src="/assets/images/logos/msLogo.png"
                                                                                             name="msBut"
                                                                                             alt="Microsoft"
                                                                                             border="0"/></a></td>
            </tr>
        </table>
        <iframe name="sampleFrame" frameborder="0" scrolling="no" height="960" width="100%"
                src="../samplesites/hilton1.php"></iframe>
        <!-- jQuery -->
        <?php include "../sitewide/globals-js.php"; ?>

    </body>
</html>
