var refreshRating = function() {
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
    $('.rated').raty({ path: '/assets',
        readOnly: true,
        score: function() {
            return $(this).attr('data-score');
        }
    });
};

$(document).on('turbolinks:load ajaxSucces', function(){
	refreshRating();

  /* elevate zoom */
  $(".img-zoom").elevateZoom({tint:true, tintColour:'black', tintOpacity:0.5, scrollZoom:true});

    /* notification */
  console.log($(".alert"));
  $(".alert").delay(4000).slideUp(3000).fadeOut("slow");

});