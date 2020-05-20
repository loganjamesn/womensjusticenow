<?php get_header();?>

<section class="page-wrap content-page">
	<div class="container small">
		
		<h1 class="page-title split-words underline yellow"><?php echo single_cat_title();?></h1>
		<?php get_template_part('includes/section', 'archive');?>

		<?php previous_posts_link();?>
		<?php next_posts_link();?>


	</div>
</section>

<?php get_footer();?>