function toggleSidebar() {
    const sidebar = document.getElementById('sidebar');
    const contentArea = document.getElementById('content-area');
    const isCollapsed = sidebar.style.width === '70px';

    if (isCollapsed) {
        sidebar.style.width = '250px';
        contentArea.classList.remove('collapsed');
        localStorage.setItem('sidebarState', 'expanded');
    } else {
        sidebar.style.width = '70px';
        contentArea.classList.add('collapsed');
        localStorage.setItem('sidebarState', 'collapsed');
    }

    const texts = document.getElementsByClassName('item-text');
    for (let text of texts) {
        text.style.opacity = isCollapsed ? '1' : '0';
        text.style.width = isCollapsed ? 'auto' : '0';
    }
}
function restoreSidebarState() {
    const sidebar = document.getElementById('sidebar');
    const contentArea = document.getElementById('content-area');
    const sidebarState = localStorage.getItem('sidebarState');

    if (sidebarState === 'collapsed') {
        sidebar.style.width = '70px';
        contentArea.classList.add('collapsed');
    } else {
        sidebar.style.width = '250px';
        contentArea.classList.remove('collapsed');
    }

    const texts = document.getElementsByClassName('item-text');
    for (let text of texts) {
        text.style.opacity = sidebarState === 'collapsed' ? '0' : '1';
        text.style.width = sidebarState === 'collapsed' ? '0' : 'auto';
    }
}
document.addEventListener('DOMContentLoaded', restoreSidebarState);

$(document).ready(function () {

    const activeLink = localStorage.getItem('activeLink');
    if (activeLink) {
        $('.list-group-item').removeClass('active');
        $('#' + activeLink).addClass('active');
    }


    $('.list-group-item').click(function () {

        $('.list-group-item').removeClass('active');


        $(this).addClass('active');


        localStorage.setItem('activeLink', this.id);


        console.log($(this).text() + " is active now");
    });
});

$(document).ready(function () {
    $('.dropdown-item').click(function (e) {
        e.preventDefault();
        var target = $(this).data('target');
        var newValue = $(this).data('value');

        $(target).html(newValue + ': <span class="badge rounded-pill" style="font-size: 20px; color: white;">Updated Data</span>');
    });
});


