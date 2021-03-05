 const slider = () => {
  $(function() {
    let $activeSlide = $('#slides .slide:first-child');

    // show first slide
    $activeSlide.add('showing');

    $('#decline').on('click', function(){
      goToSlide('decline');
    });

    $('#approve').on('click', function(){
      goToSlide('approve');
    });

    function goToSlide(action) {
      $activeSlide.remove('showing');
      $activeSlide = $activeSlide.next('.slide');

      if (action == 'approve') {
        console.log(action)
      } else {
        console.log(action)
      }
      $activeSlide.addClass('showing')
    };
  });
} 

export { slider };