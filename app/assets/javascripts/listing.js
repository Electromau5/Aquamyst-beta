$(document).ready( function() {
  $('img').on('load',function(){
   $('#grid').masonry({
   itemSelector: '#listing-box',
   isFitWidth: true
                     });
                });    
});

$(function() {
  return $('.zoom').elevateZoom({
    gallery: 'gallery',
    zoomWindowPosition: 1,
    scrollZoom: true,
    responsive: true,
    borderSize: 1,
    cursor: 'pointer',
    galleryActiveClass: 'active',
    imageCrossfade: true
  });
});

Turbolinks.cacheCurrentPage();