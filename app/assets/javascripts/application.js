// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require jquery_ujs
//= require popper
//= require bootstrap-sprockets
//= require bootstrap-table
//= require_tree .



function navOverlay() {
  /* Open Menu */
	$( ".open-close-btn" ).on('click touchstart', function(e) {
		// prevent default anchor click
		e.preventDefault();
		$(".overlay").toggleClass("overlay-open");
		$("#hamburger-icon").toggleClass("hamburger-open");
	});
}

function respond() {
  // Put all responsive functions here
  navOverlay();
}

$(document).ready(function() {
  respond();
});

$(window).load(function() {
});

$(window).scroll(function() {
});
