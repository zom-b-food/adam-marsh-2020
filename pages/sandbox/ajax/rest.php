<!doctype html>
<html lang="en">

  <head>
    <title>www.ui-design-engineering.com --REST</title>
    <?php include "../../../sitewide/globals-pop.php"; ?>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/uikit/2.27.4/js/components/grid.min.js">
      <style type="text/css">
        #txtDiv {
          display: none;
          background-color: lavender;
        }
        #btnGetWeather {
          margin-top: 8px;
        }
      </style>
      <script type="text/javascript">
        function submitTxt() {
          $("#txtDiv").text("Current Weather for " + $("#txtCity").val());
          $("#txtDiv").slideDown(800);
        }
        $(document).ready(function () {

          $('#btnGetWeather').click(function () {
            var requestData = $('#txtCity').val() + ',' + $('#txtCountry').val();
            var resultElement = $('#resultDiv');
            var APPIDkey = '5aa77646559bbd120a169ce6eefebd55';
            $.ajax({
              url: 'http://api.openweathermap.org/data/2.5/weather?units=imperial&',
              method: 'GET',
              data: {
                q: requestData,
                APPID: APPIDkey
              },
              dataType: 'JSON',
              success: function (data) {
                resultElement.html('<strong>Map:</strong> ' + data.coord.lon + ' longitude / ' + data.coord.lat + ' latitude<br/><strong>Conditions:</strong> ' + data.weather[0].main + '<br/><strong>Temperature:</strong> ' + data.main.temp + ' degrees F (high of: ' + data.main.temp_max + ' with a low of: ' + data.main.temp_min + ')<br /><strong>Wind:</strong> ' + data.wind.speed + ' miles/hr<br /><strong>Humidity:</strong> ' + data.main.humidity + '%');
              }
            });
          });
        });
      </script>
    </head>

    <body class="popDiv">
      <div class="uk-container-center">
        <div class="uk-grid" data-uk-grid-margin>
          <div class="uk-width-1-1">
            <h3>AJAX REST Call</h3>
            <h4>View Source to copy/examine the source</h4>
            <p>Using openweathermap.com API
            </p>
            <hr/>

            <h5>Get Weather Data</h5>
            <br class="clear">
              <div class="form">

                <form>
                  <div class="form-group">
                    <label for="txtCity">City</label>
                    <input type="text" class="form-control" id="txtCity"></div>
                    <div class="form-group">
                      <label for="txtCountry">Country [if not in US]</label>
                      <input type="text" class="form-control" id="txtCountry"></div>
                      <div class="form-group">
                        <input type="button" id="btnGetWeather" value="Get Weather Data" onclick="submitTxt()"></div>
                      </form>

                    </div>
                    <br/>
                    <h2 id="txtDiv"></h2>
                    <div id="resultDiv"></div>
                  </div>
                </div>

              </div>
              <div style="visibility:hidden; z-index:1;">

                "/rest.txt";

              </div>
            </body>

          </html>
