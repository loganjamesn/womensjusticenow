// Add class to body when page has scrolled down
jQuery(window).on('scroll resize', function() {
    var distanceY = window.pageYOffset || document.documentElement.scrollTop;
    jQuery('body').toggleClass('has-scrolled', distanceY > 0);
}); 

// Hamburger menu
jQuery('.menu-toggle').click(function() {
	jQuery('body').toggleClass('menu-opened');
	jQuery(this).toggleClass('open');
})

// Split H1 words into spans
jQuery(document).ready(function() {
	jQuery(".split-words").lettering('words');
});