$(window).load(function(){
        $('#myModal').modal('show');
    });


function Bricks() {

    var $container = $('#grid');

    $container.imagesLoaded(function () {
        $container.masonry({
           itemSelector: '#listing-box',
          isFitWidth: true,
          isAnimated: !Modernizr.csstransitions
        });
    });

}

$(document).ready(function () {
    Bricks();
});


$(function() {
  return $('.zoom').elevateZoom({
    gallery: 'gallery',
    zoomWindowPosition: 3,
    scrollZoom: true,
    responsive: true,
    borderSize: 1,
    cursor: 'pointer',
    galleryActiveClass: 'active',
    imageCrossfade: true
  });
});

Turbolinks.cacheCurrentPage();
