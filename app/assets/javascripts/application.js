// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require owl.carousel
//= require_tree .

$(document).on('ready page:load', function () {
  $(document).ready( function(){
    ajustaPonentes();
    ajustaBanamex();
    $("#showroom-carousel").owlCarousel({
      singleItem: true,
      slideSpeed : 300
    });
    $("#banamex-carousel").owlCarousel({
      singleItem: true,
      autoPlay: true,
      pagination: false,
      slideSpeed: 300
    });
    
  });

  $(window).resize( function(){
    ajustaPonentes();
    ajustaBanamex();
  });

  $('.subscribe-form').click( function(){
    console.log( $(this) );
    window.current_event = $(this);
  })
});

function ajustaPonentes(){
  var arr = $('.ponente-list');
  var max = 0;
  var height = 0;

  // Encuentra máximo de altura
  for (var i = 0; i <= arr.length; i++){
    if( $(arr[i]).height() > max )
      max = $(arr[i]).height();
  }

  if( max > 220)
    max = 220;

  // Ajusta todos al máximo
  for (var i = 0; i <= arr.length; i++){
    height = $(arr[i]).children().children().height();

    $(arr[i]).children().children().css("padding-top", (max - height)/2 + "px" );
    $(arr[i]).children().children().css("padding-bottom", (max - height)/2 + "px" );
    
  }
}

function ajustaBanamex(){
  $('.img-banamex').height( $('.tag-banamex').height() + 100 );
}



