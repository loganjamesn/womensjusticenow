<?php get_header();?>

<section class="page-wrap content-page">
	<div class="container small">
		<h1 class="page-title split-words underline yellow"><?php the_title();?></h1>
		<?php get_template_part('includes/section', 'blogcontent');?>
	</div>
</section>

<?php get_footer();?>