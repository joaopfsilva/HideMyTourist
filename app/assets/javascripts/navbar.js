$(window).scroll(function() {
  if($(this).scrollTop() <= 0)  /*height in pixels when the navbar becomes non opaque*/
  {
    $('#navbarID').addClass('hidden');
   // $('.navbar-inverse .navbar-nav>li>a').css('color', 'black');


  } else {
    $('#navbarID').removeClass('hidden');
    //$('.navbar-inverse .navbar-nav>li>a').css('color', 'white');

  }
});
