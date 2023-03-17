<?php include_once (VIEWS.'header.php') ?>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

        google.charts.load('current', {'packages':['bar']});

        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {

            var data = google.visualization.arrayToDataTable([
                ["Fecha", "Ventas" ],
							 <?php
							 $string ='';
							 foreach ($data['data'] as $sale) {
									$string .= "['" . $sale->date . "', " . $sale->sale . "],";
							 }
							 print rtrim($string, ',');
							 ?>
            ]);

            var options = {
                chart: {
                    title: "Ventas diarias",
                    subtitle: "MVC Tienda"
                },
                colors: ["yellow"],
                fontSize: 25,
                fontName: "Times",
                bars: "vertical",
                height: 500,
                hAxis: {
                    title: "Ventas €",
                    titleTextStyle: {color: "black", fontSize: 30},
                    textPosition: "out",
                    textStyle: {color: "gray", fontSize: 20, bold: true, italic: true}
                },
                vAxis: {
                    title: "Fecha",
                    titleTextStyle: {color: "black", fontSize: 30},
                    textPosition: "out",
                    textStyle: {color: "gray", fontSize: 20, bold: true, italic: true},
                    gridlines: {color: "gray"}
                },
                legend: {postition: "none"},
                titleTextStyle: {color: "black", fontSize: 40, italic: true}
            }

            var chart = new google.charts.Bar(document.getElementById('chart'));
            chart.draw(data, google.charts.Bar.convertOptions(options));
        }
    </script>
    <div id="chart"></div>
    <a href="<?= ROOT ?>adminSales" class="btn btn-success">Volver</a>
<?php include_once (VIEWS.'footer.php') ?>