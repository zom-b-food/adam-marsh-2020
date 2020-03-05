<!DOCTYPE html>
<html lang="en-gb" dir="ltr">
  <head>

		<title>AJAX and JSON</title>
		 <?php include "../../../sitewide/globals-pop.php"; ?>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/uikit/2.27.4/js/components/grid.min.js">
		<style type="text/css">
			.hide-me {
  visibility: hidden;
  opacity: 0;
  transform: scale(.75);
}

		</style>
	</head>

    <body class="popDiv">
    <div class="uk-container-center">
        <div class="uk-grid" data-uk-grid-margin>
            <div class="uk-width-1-1">
                <h3>Ajax JSON Component</h3>
                <p>Loops through a JSON array </p>
            </div>
        </div>
	    <main id="content">
		    <div class="uk-grid" data-uk-grid-margin>
			    <div class="uk-width-1-2">
				   <h4>JSON and AJAX</h4>

				</div>
			    <div class="uk-width-1-2">
				    <button type="button" class="mbtn" id="btn">Get Info on 3 Dogs</button>
			    </div>
			</div>
		    <div class="uk-grid" data-uk-grid-margin>
			    <div class="uk-width-1-1" id="animal-info">
				    &nbsp;
				</div>
			</div>
	    </main>
    </div>
	</body>
	<script type='text/javascript'>
var pageCounter = 1;
var animalContainer = document.getElementById("animal-info");
var btn = document.getElementById("btn");

btn.addEventListener("click", function() {
  var ourRequest = new XMLHttpRequest();
  ourRequest.open('GET', 'dogs-' + pageCounter + '.json');
  ourRequest.onload = function() {
    if (ourRequest.status >= 200 && ourRequest.status < 400) {
      var ourData = JSON.parse(ourRequest.responseText);
      renderHTML(ourData);
    } else {
      console.log("We connected to the server, but it returned an error.");
    }

  };

  ourRequest.onerror = function() {
    console.log("Connection error");
  };

  ourRequest.send();
  pageCounter++;
  if (pageCounter > 3) {
    btn.classList.add("hide-me");
  }
});

function renderHTML(data) {
  var htmlString = "";

  for (i = 0; i < data.length; i++) {
    htmlString += "<p>" + data[i].name + " is a " + data[i].breed + " that likes to eat ";

    for (ii = 0; ii < data[i].foods.likes.length; ii++) {
      if (ii == 0) {
        htmlString += data[i].foods.likes[ii];
      } else {
        htmlString += " and " + data[i].foods.likes[ii];
      }
    }

    htmlString += ' but hates ';

    for (ii = 0; ii < data[i].foods.hates.length; ii++) {
      if (ii == 0) {
        htmlString += data[i].foods.hates[ii];
      } else {
        htmlString += " and " + data[i].foods.hates[ii];
      }
    }

    htmlString += '.</p>';

  }

  animalContainer.insertAdjacentHTML('beforeend', htmlString);
}
	</script>

</html>
