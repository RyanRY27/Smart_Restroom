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
document.addEventListener('DOMContentLoaded', function () {

    $(document).ready(function () {

       
        const currentPath = window.location.pathname;
        console.log('Current Path:', currentPath);  
    
        function setActiveLinkByUrl(urlPath) {
            let foundMatch = false; 
            $('.list-group-item').each(function () {
                const linkHref = $(this).attr('href');
                
                if (linkHref && urlPath.includes(linkHref)) {
                    $('.list-group-item').removeClass('active'); 
                    $(this).addClass('active');                  
                    localStorage.setItem('activeLink', this.id);  
                    foundMatch = true;
                    return false; 
                }
            });

            return foundMatch;
        }

        function setActiveLinkById(linkId) {
            $('.list-group-item').removeClass('active');   
            $('#' + linkId).addClass('active');            
            localStorage.setItem('activeLink', linkId);    
        }

        
        const urlMatched = setActiveLinkByUrl(currentPath);

       
        if (!urlMatched) {
            const savedLink = localStorage.getItem('activeLink');
            if (savedLink) {
                setActiveLinkById(savedLink);
            }
        }

        $('.list-group-item').click(function () {
            $('.list-group-item').removeClass('active'); 
            $(this).addClass('active');                 
            localStorage.setItem('activeLink', this.id); 
        });

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


