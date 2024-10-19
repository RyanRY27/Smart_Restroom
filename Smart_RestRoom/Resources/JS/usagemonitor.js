$(document).ready(function () {

    var ctx = document.getElementById('cubicleusage').getContext('2d');
    var cubicleusage = new Chart(ctx, {
        type: 'doughnut',
        data: {
            labels: ['Cubicle 1', 'Cubicle 2', 'Cubicle 3', 'Cubicle 4', 'Cubicle 5', 'Cubicle 6'],
            datasets: [{
                label: 'Cubicle Usage',
                data: [15, 25, 10, 30, 35, 20],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1,
                fill: true,
                tension: 0.4
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: 'Usage Count'
                    }
                },
                x: {
                    title: {
                        display: true,
                        text: 'Cubicle Number'
                    },
                    offset: true,

                }
            }
        }
    });

    function updateChartType(type) {
        cubicleusage.config.type = type;

        if (type === 'line') {

            cubicleusage.options.scales.x.offset = false;
        } else {

            cubicleusage.options.scales.x.offset = true;
        }

        cubicleusage.update();
    }



    $('.dropdown-menu .dropdown-item').click(function () {
        var selectedValue = $(this).data('value');
        var chartType;

        switch (selectedValue) {
            case 'Bar Chart':
                chartType = 'bar';
                break;
            case 'Line Chart':
                chartType = 'line';
                break;
            case 'Donut Chart':
                chartType = 'doughnut';
                break;
        }

        if (chartType) {
            updateChartType(chartType);
        }
    });
});


$(document).ready(function () {

    var ctx = document.getElementById('usagechart').getContext('2d');
    var usagechart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ['8 AM', '9 AM', '10 AM', '11 AM', '12 PM', '1 PM', '2 PM', '3 PM'],
            datasets: [{
                label: 'Cubicle Usage',
                data: [3, 7, 5, 8, 6, 10, 4, 9],
                backgroundColor: [
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)',
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)'
                ],
                borderColor: [
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)'
                ],
                borderWidth: 1,
                fill: true,
                tension: 0.4
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: 'Usage Count'
                    }
                },
                x: {
                    title: {
                        display: true,
                        text: 'Time of Day'
                    },
                    offset: false,

                }
            }
        }
    });

    function updateChartType(type) {
        usagechart.config.type = type;

        if (type === 'bar') {

            usagechart.options.scales.x.offset = true;
        } else {

            usagechart.options.scales.x.offset = false;
        }

        usagechart.update();
    }

    $('.dropdown-menu .dropdown-item').click(function () {
        var selectedValue = $(this).data('value');
        var chartType;

        switch (selectedValue) {
            case 'Bar Chart1':
                chartType = 'bar';
                break;
            case 'Line Chart1':
                chartType = 'line';
                break;
            case 'Donut Chart1':
                chartType = 'doughnut';
                break;
        }

        if (chartType) {
            updateChartType(chartType);
        }
    });
});


$(document).ready(function () {
    var ctx = document.getElementById('aiusagechart').getContext('2d');
    var aiusagechart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
            datasets: [{
                label: 'AI Usage Prediction',
                data: [5, 10, 15, 20, 25, 30, 35],


                backgroundColor: [
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)',
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)'
                ],
                borderColor: [
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)'
                ],
                borderWidth: 1,
                fill: true,
                tension: 0.4
            }]
        },
        options: {
            responsive: true,
            scales: {
                y: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: 'Predicted Usage'
                    }
                },
                x: {
                    title: {
                        display: true,
                        text: 'Time'
                    },
                    offset: false,

                }
            }
        }
    });
    function updateChartType(type) {
        aiusagechart.config.type = type;

        if (type === 'bar') {

            aiusagechart.options.scales.x.offset = true;
        } else {

            aiusagechart.options.scales.x.offset = false;
        }

        aiusagechart.update();
    }

    $('.dropdown-menu .dropdown-item').click(function () {
        var selectedValue = $(this).data('value');
        var chartType;

        switch (selectedValue) {
            case 'Bar Chart2':
                chartType = 'bar';
                break;
            case 'Line Chart2':
                chartType = 'line';
                break;
            case 'Donut Chart2':
                chartType = 'doughnut';
                break;
        }

        if (chartType) {
            updateChartType(chartType);
        }
    });
});


$(document).ready(function () {
    var aiPredictionData = [18, 22, 12, 33, 28, 25];

    var ctx = document.getElementById('aicubicleusage').getContext('2d');
    var aicubicleusage = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Cubicle 1', 'Cubicle 2', 'Cubicle 3', 'Cubicle 4', 'Cubicle 5', 'Cubicle 6'],
            datasets: [{
                label: 'AI Predicted Cubicle Usage',
                data: aiPredictionData,
                backgroundColor: [
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)',
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)'
                ],
                borderColor: [
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)'
                ],
                borderWidth: 1,
                fill: true,
                tension: 0.4

            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: 'Predicted Usage Count'
                    }
                },
                x: {
                    title: {
                        display: true,
                        text: 'Cubicle Number'
                    },
                    offset: true,

                }
            }
        }
    });
    function updateChartType(type) {
        aicubicleusage.config.type = type;

        if (type === 'line') {

            aicubicleusage.options.scales.x.offset = false;
        } else {

            aicubicleusage.options.scales.x.offset = true;
        }

        aicubicleusage.update();
    }


    $('.dropdown-menu .dropdown-item').click(function () {
        var selectedValue = $(this).data('value');
        var chartType;

        switch (selectedValue) {
            case 'Bar Chart3':
                chartType = 'bar';
                break;
            case 'Line Chart3':
                chartType = 'line';
                break;
            case 'Donut Chart3':
                chartType = 'doughnut';
                break;
        }

        if (chartType) {
            updateChartType(chartType);
        }
    });
});

//datatbles sample js
$(document).ready(function () {
    $('#cubicleUsageTable').DataTable({
        "paging": true,
        "searching": true,
        "ordering": true,
        "info": true,
        "order": []
    });
});




//tool tip
document.addEventListener('DOMContentLoaded', function () {
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl);
    });
});


//chart button
document.addEventListener('DOMContentLoaded', () => {
    const chartContainers = document.querySelectorAll('.card');

    chartContainers.forEach(container => {
        const links = container.querySelectorAll('.chart-link');

        links.forEach(link => {
            link.addEventListener('click', (event) => {
                event.preventDefault();

                links.forEach(lnk => {
                    lnk.classList.remove('active');
                    lnk.style.backgroundColor = '';
                });

                link.classList.add('active');
                link.style.backgroundColor = '#D7D7D7';
            });

            link.addEventListener('mouseover', () => {
                if (!link.classList.contains('active')) {
                    link.style.backgroundColor = '#D1D9FF';
                }
            });

            link.addEventListener('mouseout', () => {
                if (!link.classList.contains('active')) {
                    link.style.backgroundColor = '';
                }
            });
        });
    });
});