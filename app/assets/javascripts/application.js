// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
// = require jquery
// = require jquery_ujs
//= require_tree .

$.get(
    '/auth/facebook/callback',
    { signed_request: response.authResponse.signedRequest },
    function(json) {
      alert("received logged in response");
  });    $.get(
    '/auth/facebook/callback',
    { signed_request: response.authResponse.signedRequest },
    function(json) {
      alert("received logged in response");
  });


$(document).ready(function() {
  console.log('hi');

    var container = document.querySelector('#container');
    var msnry = new Masonry( container, {
      // options
      columnWidth: 200,
      itemSelector: '.item'
    });

});
