<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
    <?php include "../sitewide/globals-w.php"; ?>
    <title>React - Page</title>
    <script src="../js/react.min.js"></script>
    <script src="../js/react-dom.min.js"></script>
    <script src="../js/browser.min.js"></script>
</head>
<body>

    <div id="container"></div>

    <script type="text/babel">
        ReactDOM.render(
            <h2 className="poodle">Welcome to React!</h2>,
            document.getElementById('container')
        );
    </script>

</body>
</html>
