<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name='apple-mobile-web-app-capable' content='yes'>
<meta name='apple-touch-fullscreen' content='yes'>
<meta name='apple-mobile-web-app-status-bar-style' content='black'>
<meta name='format-detection' content='telephone=no'>
<meta name="description"
      content="Adam L Marsh; UI/UX Designer and Developer, www.adam-marsh.com, www.ui-design-engineering.com, www.myuikit.com, front-end web design and development.">
<meta name="author" content="ui-design-engineering.com www.myuikit.com">
<link rel="icon" href="./favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="./favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon-precomposed" href="./images/apple-touch-icon.png">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<style type="text/css">
    .web * {
        position: absolute !important;
        margin-top: -2000px !important;
        margin-left: -1000px !important;
        z-index: 0 !important;
        color: transparent !important;
    }

    body,
    html {
        padding: 8px;
        margin: 0 auto;
        background: #fff;
    }

    body, div.popDiv {
        width: 100%;
        color: #325050;
        background: #fff;
        font-family: Candara, sans-serif !important;
        height: auto;
        font-size:16px;
    }

    #container-page, #container, .container, .uk-container-center {
        width: 100%;
        height: 100%;
        width: 98%;
        padding-right: 0;
        padding-left: 0;
        margin-right: auto;
        margin-left: auto;
        margin-top: -12px !important;
    }

    .btn-default {
        color: #5b8cb6;
        background-color: #e4ebf1;
        border-color: #eeeeee;
        padding-top: 3px;
    }

    legend {
        font-weight: bold;
        padding-left: 2px;
        font-size: 1.5rem;
        line-height: inherit;
        color: #23527c;
        background-color: #b5c4c9;
        border: 0;
        border-bottom: none;
    }

    div.form {
        width: 40%;
    }

    .head {
        padding-top: 6px;
    }

    h3 {
        padding: 4px !important;
        background: linear-gradient(#597c8a, #6d858e) !important;
        color: #ebf2f4 !important;
        border-bottom: 1px solid #000033;
        border-top: 1px solid #000033;
        margin-top: 0 !important;
        margin-bottom: 0 !important;
        font-size: 1.5rem !important;
    }

    h4:first-of-type {
        margin-top: 4px;
        margin-bottom: 4px;
    }

    h4 {

        font-weight: bold;
        margin-top: 10px;
        margin-bottom: 4px;
    }

    table {
        border-collapse: collapse;
        border-spacing: 0;
        display: table;
        width: 100%;
        max-width: 526px !important;
        padding: 4px;
        border: 1px solid #96aab1 !important;
        margin: 0 auto;
    }

    td {
        white-space: nowrap;
    }

    td:first-of-type {
        white-space: nowrap;
        width: 25%;
    }

    .back-to-top {
        display: none;
    }

    form {
        border: 1px solid #beced5 !important;
        border-radius: 3px;
        padding: 10px;
        height: 98% !important;
        margin-bottom: 20px;
    }

    input.form-control {
        line-height: normal;
        padding: 2px !important;
        margin: 4px !important;
        height: 26px;
        border: 1px solid #beced5 !important;
    }

    .btn-default {
        color: #5b8cb6;
        background-color: #e4ebf1;
        border-color: #eeeeee;
        padding-top: 3px;
    }

    legend {
        font-weight: bold;
        padding-left: 2px;
        font-size: 1.5rem;
        line-height: inherit;
        color: #23527c;
        background-color: #b5c4c9;
        border: 0;
        border-bottom: none;
    }

    input[type="text"],
    input[type="search"],
    input[type="password"] {
        background: #fff;
        /*fallback for non-CSS3 browsers*/
        background: -webkit-gradient(linear, 0 0, 0 100%, from(#eee) to(#fff));
        /*old webkit*/
        background: -webkit-linear-gradient(#eee, #fff);
        /*new webkit*/
        background: -moz-linear-gradient(#eee, #fff);
        /*gecko*/
        background: -ms-linear-gradient(#eeeeee, #ffffff);
        /*IE10*/
        background: -o-linear-gradient(#eee, #fff);
        /*opera 11.10+*/
        background: linear-gradient(#eee, #fff);
        /*future CSS3 browsers*/
        border: 1px solid #848484;
        color: #666;
        position: relative;
        z-index: 0;
        display: block;
        vertical-align: middle;
        border-radius: 4px;
        -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
        box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
        -webkit-transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
        transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
    }

    :root input[type="text"],
    :root input[type="password"] {
        -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorStr='#eeeeee', EndColorStr='#ffffff')";
    }

        /* IE9 + IE10pp4 */

    textarea {
        background: #fff;
        /*fallback for non-CSS3 browsers*/
        background: -webkit-gradient(linear, 0 0, 0 100%, from(#eee) to(#fff));
        /*old webkit*/
        background: -webkit-linear-gradient(#eee, #fff);
        /*new webkit*/
        background: -moz-linear-gradient(#eee, #fff);
        /*gecko*/
        background: -ms-linear-gradient(#eee, #fff);
        /*IE10*/
        background: -o-linear-gradient(#eee, #fff);
        /*opera 11.10+*/
        background: linear-gradient(#eee, #fff);
        /*future CSS3 browsers*/
        border: 1px solid #aaa;
        border-radius: 4px;
        -moz-border-radius: 4px;
        -webkit-border-radius: 4px;
        color: #a7a7b4 !important;
        position: relative;
        z-index: 0;
        width: 97%;
        height: 85px;
    }

    textarea:focus {
        color: #000000 !important;
    }

    :root textarea {
        -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorStr='#eeeeee', EndColorStr='#ffffff')";
    }

        /* IE9 + IE10pp4 */

    input[type="text"]:focus,
    input[type="password"]:focus,
    textarea:focus {
        border-color: #649eb4;
        -moz-box-shadow: 0 0 2px #a1bac3;
        -webkit-box-shadow: 0 0 2px #a1bac3;
        outline: none;
        color: #222;
        position: relative;
        z-index: 0;
    }

    input[type="submit"], button, .mbtn,
    input[type="button"] {
        width: auto !important;
        margin-top: 10px;
        border: 1px solid #122126 !important;
        border-radius: 3px;
        background: linear-gradient(#597c8a, #6d858e);
        color: #ebf2f4;
        box-shadow: 1px 1px 1px #386a7d;
        padding: 3px 7px !important;
        font-weight: 300;
        text-decoration: none;
        position: relative;
        text-align: center;
    }

    input[type="submit"]:hover, button:hover, .mbtn:hover
                                input[type="button"]:hover {
        border: 1px solid #5ab5d7;
        background: linear-gradient(#6d858e, #597c8a) repeat scroll 0% 0% transparent;
    }

    .form-control {

        margin-bottom: 4px;
    }

    select {
        color: #4d4d4d;
        padding: 3px;
        margin-left: 1px;
        border: 1px solid #aaa;
        outline: none;
    }

    #error,
    .error {
        color: red;
    }
</style>
<script src="/assets/compiled/_am-v2.min.js"></script>

