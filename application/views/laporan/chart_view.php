<!DOCTYPE html>
<html>
<body>
<section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="box">
              <div class="box-header" style="background:red; color:white">
                <h3 class="box-title text-white">Chart Data</h3>
            </div>
            <br>
    <div class="container">
    <div class="box">
    <div class="box-header" style="background:red; color:white;">
    <h3 class="box-title text-white">Grafik Garis</h3>
    </div>
    <div class="box-body">
    <div class="row mt-4">
    <div  class="col-12"></div>
    <canvas id="line" height="200"></canvas>
    </div>
    </div>
    </div>
<br>
    <div class="box">
     <div class="box-header" style="background:red; color:white;">
    <h3 class="box-title text-white">Grafik Batang</h3>
    </div>
    <div class="box-body">
    <div class="row mt-2">
    <div class="col-9">
    <canvas id="bar"></canvas>
    </div>
    </div>
    </div>
    </div>
<br>
<div class="box">
    <div class="box-header" style="background:red; color:white;">
    <h3 class="box-title text-white">Grafik Pie</h3>
    </div>
    <div class="box-body">
    <div class="col-4">
    <canvas id="pie"></canvas>
    </div>
    </div>
    </div>
    </div>
<br>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
<script>
const baseUrl = "<?php echo base_url();?>"
    const myChart = (chartType) => {
        $.ajax({
        url: baseUrl+'index.php/Chart/chart_data',
        dataType: 'json',
        method: 'get',
        success: (data)=>{
            let chartX = []
            let chartY = []
            let chartY2 = []

            console.log(data)

            data.map( data =>{
                chartX.push(data.nama);
                chartY.push(data.total);
                chartY2.push(data.activity);
            })
            const chartData = {
                labels: chartX,
                datasets: [
                    {
                        label:'total',
                        data: chartY,
                        backgroundColor: ['lightcoral'],
                        borderColor: ['lightcoral'],
                        borderWidth: 4
                    },{
                        label:'activity',
                        data: chartY2,
                        backgroundColor: ['lightcoral'],
                        borderColor: ['lightcoral'],
                        borderWidth: 4
                    },
                ]
            }
            const ctx = document.getElementById(chartType).getContext('2d')
            const config = {
                type: chartType,
                data: chartData
            }
            switch(chartType){
                case 'pie':
                    const pieColor = ['salmon','red','green','blue','aliceblue','pink','gold','plum','darkcyan','wheat','silver','orange','black','magenta','white']
                    chartData.datasets[0].backgroundColor = pieColor
                    chartData.datasets[0].borderColor = pieColor
                    break;
                case 'bar' :
                    chartData.datasets[0].backgroundColor = ['skyblue']
                    chartData.datasets[0].borderColor = ['skyblue']
                    break;
                case 'line' :
                    chartData.datasets[0].backgroundColor = ['red']
                    chartData.datasets[0].borderColor = ['red']
                    break;
                default :
                config.options = {
                    scales: {
                        y: {
                            beginAtZero: true
                        }  
                    }
                }
            }
            const chart = new Chart(ctx, config)
        }
    })
    }
    myChart('pie')
    myChart('bar')
    myChart('line')  
	</script>
  </body>
</html>