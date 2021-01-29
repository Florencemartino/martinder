$(function () {

  const slides = $('#slides .slide');
  const currentSlide = 0;

  console.log(slides);

  function nextSlide() {
    goToSlide(currentSlide + 1)
  }

  function previousSlide() {
    goToSlide(currentSlide - 1)
  }

  function goToSlide() {
    slides[currentSlide].className = 'slide';
    currentSlide = (n + slides.length) % slides.length;
    slides[currentSlide].className = 'slide showing';
  }
});


