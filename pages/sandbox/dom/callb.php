<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>Javascript Callback Loop</title>
   <?php include "../../../sitewide/globals-pop.php"; ?>
<style type="text/css">
h3 {
  color: #fff;
font-family: Candara, sans-serif;
font-size: 1rem;
font-weight: bold;
text-align: left;
padding: 1px 0 4px 12px;
background-color: #cccccc;
border-bottom: 1px solid #000033;
border-top: 1px solid #000033;
}
</style>
</head>

<body class="popDiv">
    <div class="uk-container-center">
        <div class="uk-grid" data-uk-grid-margin>
            <div class="uk-width-1-1">
                <h3>Javascript Callback Loops</h3>
                <h4>View Source to copy/examine the source</h4>
                <script>
                $(document).ready(function() {
                    var list = [5, 8, 9, 2, 7, 6, 3, 1, 4];

                    $("#btn1").click(function() {
                        // items greater than 5
                        function callback1(list) {
                            var newList = [];
                            for (var i = 0; i < list.length; i++) {
                                if (list[i] < 5) newList.push(list[i]);
                            }
                            return newList;
                        }

                        function filter1(list, callback1) {
                            return callback1(list);
                        }

                        var filtered1 = filter1(list, callback1);
                        //console.log(filtered1);
                        $("p.one").append(filtered1);
                    });

                    $("#btn2").click(function() {
                        // items less than 5
                        function callback2(list) {
                            var newList = [];
                            for (var i = 0; i < list.length; i++) {
                                if (list[i] > 5) newList.push(list[i]);
                            }
                            return newList;
                        }

                        function filter2(list, callback2) {
                            return callback2(list);
                        }

                        var filtered2 = filter2(list, callback2);
                        //console.log(filtered2);
                        $("p.two").append(filtered2);
                    });
                });
                </script>
                <p><hr/></p>
                <p>Load the appropriate number array.</p>
                <p>Here's the array: var list = [5, 8, 9, 2, 7, 6, 3, 1, 4];</p>
                <button type="button" id="btn1">Numbers Less than 5</button>
                <p class="one"> </p>
                <button type="button" id="btn2">Numbers Greater than 5</button>
                <p class="two"> </p>
            </div>
        </div>
    </div>
</body>

</html>
