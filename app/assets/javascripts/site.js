$(document).on('turbolinks:load', function(){
	$('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
	$('.rated').raty({ path: '/assets',
      readOnly: true,
      score: function() {
        return $(this).attr('data-score');
      }
    });
  console.log($(".alert"));
  $(".alert").delay(4000).slideUp(3000).fadeOut("slow");

  /* elevate zoom */
  $(".img-zoom").elevateZoom({tint:true, tintColour:'black', tintOpacity:0.5, scrollZoom:true});
});