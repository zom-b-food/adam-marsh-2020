<!DOCTYPE html>
<html lang="en-gb" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>React.js demo</title>
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
     .todoItem {padding-top:10px;}
     .uk-button-danger {margin-left:8px;}
     .board {margin-top:12px; width:200px; border-top:1px solid #ccc;}
	 </style>
        <script src="../js/react.min.js"></script>
        <script src="../js/react-dom.min.js"></script>
        <script src="../js/browser.min.js"></script>
</head>


<body class="popDiv">
<div class="uk-container-center">
	<div class="uk-grid" data-uk-grid-margin>
		<div class="uk-width-1-1">
			<h3>React.js Component</h3>
			<p>Dynamically add, edit, remove items from a list using a .jsx array. </p>

			<main id="content">
				<div class="uk-middle uk-container uk-container-center">
					<div class="uk-grid" data-uk-grid-margin>
						<div class="uk-width-medium-1-2"><h2>React.js Todo List</h2>
							<div id="todo" class="uk-panel uk-panel-box uk-panel-box-primary"></div>
							<script type="text/babel" src="todo.jsx"></script>
						</div>
						<div class="uk-width-medium-1-2">
							&nbsp;
						</div>
					</div>
				</div>

			</main>

		</div>
	</div>
</div>


</body>

</html>
