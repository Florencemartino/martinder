import { post } from "jquery";

 const slider = () => {
  $(function() {
    let $activeSlide = $('#slides .slide:first-child');

    //console.log($activeSlide.data('id'))
    
    
    // show first slide
    $activeSlide.add('showing');

    $('#decline').on('click', function(){
      console.log(user_id)
      goToSlide('decline');
    });

    $('#approve').on('click', function(){

      const user_id = $activeSlide.data('id')
    
      console.log(user_id)
      $.ajax({
        url: "/approve/" + user_id,
        method: "POST",
        dataType: "ajax"

      })
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