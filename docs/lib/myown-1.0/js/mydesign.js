document.addEventListener('DOMContentLoaded', function() {
    var el_tabs = document.querySelector(".tabs");
    var instance_tabs = M.Tabs.init(el_tabs);
    var elems_sidenav = document.querySelectorAll('.sidenav');
    var instances_sidenav = M.Sidenav.init(elems_sidenav);
    var elems_carousel = document.querySelectorAll('.carousel');
    var instances_carousel = M.Carousel.init(elems_carousel);


});
