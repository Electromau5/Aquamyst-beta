
window.onLoad = function(callback) {
  // binds ready event and turbolink page:load event
  $(document).ready(callback);
  $(document).on('page:load',callback);
};



onLoad(function() {
  $('#grid').masonry({
   
   itemSelector: '#listing-box',
   isFitWidth: true
  
                   });

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