
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name='apple-mobile-web-app-capable' content='yes'>
<meta name='apple-touch-fullscreen' content='yes'>
<meta name='apple-mobile-web-app-status-bar-style' content='black'>
<meta name='format-detection' content='telephone=no'>
<meta name="description" content="">
<meta name="author" content="ui-design-engineering.com">

<!-- Remove this Robots Meta Tag, to allow indexing of site -->

<%-- JSTL --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"; ?>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"; ?>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"; ?>

<%-- Session Time Out Refresh. --%>
<c:if test="${doSessionTimeout}">
    <noscript>
        <c:set var="errorTimeout" value="./error_timeout.php"/>
        <c:set var="refreshSecs" value="1800"/>
        <meta http-equiv="refresh" content="${refreshSecs};url=${errorTimeout}">
    </noscript>
</c:if>

<c:if test="${!empty seoRobots}">
    <meta name="robots" content="${seoRobots}"/>
</c:if>
<c:if test="${!empty lastModified}">
    <meta http-equiv="last-modified" content="${lastModified}"/>
</c:if>
<c:if test="${!empty metaDescription}">
    <meta name="description" content="${metaDescription}"/>
</c:if>
<c:if test="${!empty metaKeywords}">
    <meta name="keywords" content="${metaKeywords}"/>
</c:if>

<c:set var="assetPath" value="./splash"/>
<link rel="icon" href="./favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="./favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon-precomposed" href="./images/apple-touch-icon.png">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

<link rel="stylesheet" href="./splash/css/normalize.css">
<link rel="stylesheet" href="./splash/compiled/_am-v1.min.css">
<link rel="stylesheet" href="./splash/css/custom-w.css">
<link rel="stylesheet" href="./splash/css/animate.min.css">
<script src="./splash/js/components/wow.min.js"></script>
<script src="https://use.fontawesome.com/a93ff65ce0.js"></script>

<script src="./splash/compiled/_am-v1.min.js"></script>
<script src="./splash/js/uikit.min.js"></script>
<script src="./splash/js/components/sticky.js"></script>
<%--


--%>
