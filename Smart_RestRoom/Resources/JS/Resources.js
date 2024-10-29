$(document).ready(function () {

    var ctx = document.getElementById('resourceUsage').getContext('2d');
    var resourceUsage = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Soap', 'Disinfectant', 'Paper Towels', 'Cleaning Chemicals'],
            datasets: [{
                label: 'Resources Consumed',
                data: [15, 25, 10, 20], 
                backgroundColor: 'rgba(255, 99, 132, 0.2)',
                borderColor: 'rgba(255, 99, 132, 1)',
                borderWidth: 1
            }, {
                label: 'Remaining Stock',
                data: [35, 25, 40, 30], 
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

$(document).ready(function () {
    
    var ctx = document.getElementById('janitorusage').getContext('2d');
    var janitorusage = new Chart(ctx, {
        type: 'bar', 
        data: {
            labels: ['8 AM', '9 AM', '10 AM', '11 AM', '12 PM', '1 PM', '2 PM', '3 PM'],
            datasets: [] 
        },
        options: {
            scales: {
                x: {
                    title: {
                        display: true,
                        text: 'Time of Day'
                    }
                },
                y: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: 'Resources Used'
                    }
                }
            },
            plugins: {
                tooltip: {
                    callbacks: {
                        label: function (context) {
                            let label = context.dataset.label || '';
                            let value = context.raw;
                            return label + ': ' + value;
                        }
                    }
                }
            }
        }
    });

   
    var janitorsData = {
        'Janitor A': {
            mop: [2, 1, 0, 3, 1, 1, 2, 1],
            disinfectant: [1, 2, 1, 0, 2, 3, 2, 0],
            broom: [0, 1, 0, 2, 0, 1, 1, 1]
        },
        'Janitor B': {
            mop: [0, 2, 1, 0, 1, 2, 3, 1],
            disinfectant: [1, 0, 2, 1, 2, 1, 0, 3],
            broom: [0, 1, 1, 2, 0, 1, 2, 0]
        },
        'Janitor C': {
            mop: [1, 1, 0, 3, 2, 1, 0, 2],
            disinfectant: [2, 1, 0, 1, 3, 0, 1, 2],
            broom: [0, 0, 2, 1, 0, 2, 3, 1]
        }
    };


    function updateChartForJanitor(janitor) {
        var janitorData = janitorsData[janitor];

        janitorusage.data.datasets = [
            {
                label: 'Mop',
                data: janitorData.mop,
                backgroundColor: 'rgba(75, 192, 192, 0.8)',
                borderColor: 'rgba(75, 192, 192, 1)',
                borderWidth: 1
            },
            {
                label: 'Disinfectant',
                data: janitorData.disinfectant,
                backgroundColor: 'rgba(153, 102, 255, 0.8)',
                borderColor: 'rgba(153, 102, 255, 1)',
                borderWidth: 1
            },
            {
                label: 'Broom',
                data: janitorData.broom,
                backgroundColor: 'rgba(255, 159, 64, 0.8)',
                borderColor: 'rgba(255, 159, 64, 1)',
                borderWidth: 1
            }
        ];

        janitorusage.update();
    }

  
    updateChartForJanitor('Janitor A');

 
    $('.dropdown-menu .dropdown-item').click(function () {
        var selectedJanitor = $(this).data('value');
        updateChartForJanitor(selectedJanitor); 
    });
});
