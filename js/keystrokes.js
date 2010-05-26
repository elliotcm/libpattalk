var slides;
var currentSlide;

$(document).ready(function() {
  document.onkeydown = keyDown;
  $('html').click(nextSlide);

  slides = $('.slide');
  showSlide(0);
})

function keyDown(event)
{
    var key = event.keyCode;

    if (event.ctrlKey || event.altKey || event.metaKey) {return true;}

    if (key == 32) // space bar
    {
      nextSlide();
    }
    else if (key == 37 || key == 33) // Left arrow or page up
    {
      prevSlide()
    }
    else if (key == 39 || key == 34) // Right arrow or page down
    {
      nextSlide()
    }

    return true
}

function nextSlide() {
  if (currentSlide >= slides.length - 1) {return false}
  showSlide(currentSlide + 1);
}

function prevSlide() {
  if (currentSlide <= 0) {return false}
  showSlide(currentSlide - 1);
}

function showSlide(index) {
  slides.hide();
  $(slides[index]).show();
  currentSlide = index;
}
