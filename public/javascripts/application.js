// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function(){

  $("ul#serverlist-ul > li").click(function(e) {
      window.location.href = 'servers/'+$(this).attr("id");
  })
  .find("a")
  .click(function(e) {
      e.stopPropagation();
  });
 $("ul#userlist-ul > li").click(function(e) {
      window.location.href = 'users/'+$(this).attr("id");
  })
  .find("a")
  .click(function(e) {
      e.stopPropagation();
  });


});
