// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery3
//= require jquery_ujs
//= require jquery-ui
//= require jquery.validate
//= require popper
//= require bootstrap.min
//= require fastclick
//= require adminlte.min
//= require demo
//= require reniec-sunat-js.min
//= require enterprises
//= require employees
//= require sweetalert
//= require cocoon
//= require type_exams
//= require exams
//= require chosen-jquery

$(function(){
  $('.chosen').chosen({ width: '100%', allow_single_deselect: true});
})
//Just numbers
$(document).on('keypress', '.just-number', function(e){
  if(isNaN(this.value + String.fromCharCode(e.charCode)))
  return false;
});

//Email validator
$(document).on('change', '.validate-email', function(e){
  var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  if (!(regex.test(this.value))) {
    swal("Alerta", "Email inválido", "warning");
    $(this).val('');
  }
})
