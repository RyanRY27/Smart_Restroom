$(document).ready(function () {

    var ctx = document.getElementById('resourceUsage').getContext('2d');
    var resourceUsage = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Soap', 'Disinfectant', 'Paper Towels', 'Cleaning Chemicals'],
            datasets: [{
                label: 'Resources Consumed',
                data: [15, 25, 10, 20], // example values for consumed
                backgroundColor: 'rgba(255, 99, 132, 0.2)',
                borderColor: 'rgba(255, 99, 132, 1)',
                borderWidth: 1
            }, {
                label: 'Remaining Stock',
                data: [35, 25, 40, 30], // example values for remaining stock
                backgroundColor: 'rgba(54, 162, 235, 0.2)',
                borderColor: 'rgba(54, 162, 235, 1)',
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: 'Quantity'
                    }
                },
                x: {
                    title: {
                        display: true,
                        text: 'Resources'
                    }
                }
            },
            plugins: {
                title: {
                    display: true,
                    text: 'Resources Consumed vs. Remaining'
                }
            }
        }
    });

    function updateChartType(type) {
        resourceUsage.config.type = type;
        resourceUsage.update();
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
