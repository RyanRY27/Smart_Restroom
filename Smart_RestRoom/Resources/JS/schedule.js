/* chart 1*/
$(document).ready(function () {

    var ctx = document.getElementById('cleaningchart').getContext('2d');
    var cleaningchart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'],
            datasets: [
                {
                    label: 'Cleaning Frequency',
                    data: [3, 2, 3, 4, 2, 1, 3],
                    backgroundColor: 'rgba(54, 162, 235, 0.5)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1,
                    yAxisID: 'y',
                },
                {
                    label: 'User Traffic',
                    data: [150, 200, 250, 300, 270, 220, 180],
                    backgroundColor: 'rgba(255, 99, 132, 0.5)',
                    borderColor: 'rgba(255, 99, 132, 1)',
                    borderWidth: 1,
                    yAxisID: 'y1',
                }
            ]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            scales: {
                y: {
                    beginAtZero: true,
                    position: 'left',
                    title: {
                        display: true,
                        text: 'Cleaning Frequency',
                    }
                },
                y1: {
                    beginAtZero: true,
                    position: 'right',
                    title: {
                        display: true,
                        text: 'User Traffic',
                    },
                    grid: {
                        drawOnChartArea: false,
                    }
                }
            }
        }
    });


    function updateChartType(type) {
        cleaningchart.config.type = type;
        cleaningchart.update();
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
        }


        if (chartType) {
            updateChartType(chartType);
        }
    });

});

/* chart2*/
$(document).ready(function () {

    var ctx = document.getElementById('cleaningHours').getContext('2d');
    var cleaningHours = new Chart(ctx, {
        type: 'doughnut',
        data: {
            labels: ['Janitor 1', 'Janitor 2', 'Janitor 3', 'Janitor 4', 'Janitor 5'],
            datasets: [{
                label: 'Janitor Cleaning Hours',
                data: [45, 30, 50, 40, 35],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)'
                ],
                borderColor: [
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
                    beginAtZero: false,
                    min: 20,
                    max: 60,
                    title: {
                        display: true,
                        text: 'Cleaning Duration (Minutes)'
                    }
                },
                x: {
                    type: 'category',
                    labels: ['1', '2', '3', '4', '5'],
                    title: {
                        display: true,
                        text: 'Janitor'
                    },
                    ticks: {
                        align: 'center',
                    },
                    offset: true,
                    barPercentage: 0.9,
                    categoryPercentage: 0.6
                }
            }
        }
    });

    function updateChartType(type) {
        cleaningHours.config.type = type;

        if (type === 'line') {

            cleaningHours.options.scales.x.offset = false;
        } else {

            cleaningHours.options.scales.x.offset = true;
        }

        cleaningHours.update();
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



/*   Tableset*/
$(document).ready(function () {

    $('#janitorperformance').DataTable({
        "paging": true,
        "searching": true,
        "ordering": true,
        "info": true,
        "order": []
    });
});

$(document).ready(function () {

    $('#janitorschedule').DataTable({
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