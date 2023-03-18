<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../s.css" />
    <script
      src="https://kit.fontawesome.com/b598df9775.js"
      crossorigin="anonymous"
    ></script>
    <script
      defer
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
      integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
      crossorigin="anonymous"
    ></script>
    <script
      defer
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
      integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
      crossorigin="anonymous"
    ></script>
    <title>dashboard</title>
  </head>
  <body>
    <div class="container w-100 h-100 p-4">
      <nav
        class="col-12 navbar bg-primary rounded-3 p-4 mb-4"
        data-bs-theme="dark"
      >
        <!-- Navbar content -->
        <h2>crYpto <i class="fa-solid fa-wallet"></i></h2>
        <ul class="nav nav-pills">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#"
              >logout <i class="fa-solid fa-right-from-bracket"></i
            ></a>
          </li>
        </ul>
      </nav>

      <div class="row d-flex">
        <div class="col-2 d-flex flex-column">
          <button type="button" class="btn btn-lg btn-primary mb-2">
            Bitcoin
            <i class="fa-brands fa-bitcoin"></i>
          </button>
          <button type="button" class="btn btn-lg btn-primary mb-2">
            Ethereum
            <i class="fa-brands fa-ethereum"></i>
          </button>
        </div>

        <div class="col-9 d-flex flex-center flex-grow-1" >
          <canvas id="myChart" ></canvas>
        </div>
      </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
      var ctx = document.getElementById("myChart").getContext("2d");

      var gradientStroke = ctx.createLinearGradient(500, 0, 100, 0);
      gradientStroke.addColorStop(0, "#80b6f4");
      gradientStroke.addColorStop(1, "#f49080");

      var myChart = new Chart(ctx, {
        type: "line",
        data: {
          labels: ["JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL"],
          datasets: [
            {
              label: "Data",
              borderColor: gradientStroke,
              pointRadius: 0,
              fill: true,
              backgroundColor: gradientStroke,
              borderWidth: 1,
              data: [100, 120, 150, 170, 180, 170, 160],
            },
          ],
        },
        options: {
          legend: {
            position: "bottom",
          },
          scales: {
            yAxes: [
              {
                ticks: {
                  fontColor: "rgba(0,0,0,0.5)",
                  fontStyle: "bold",
                  beginAtZero: true,
                  maxTicksLimit: 5,
                  padding: 20,
                },
                gridLines: {
                  drawTicks: false,
                  display: false,
                },
              },
            ],
            xAxes: [
              {
                gridLines: {
                  zeroLineColor: "transparent",
                },
                ticks: {
                  padding: 20,
                  fontColor: "rgba(0,0,0,0.5)",
                  fontStyle: "bold",
                },
              },
            ],
          },
        },
      });
    </script>
  </body>
</html>
