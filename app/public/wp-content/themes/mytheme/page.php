<?php get_header();?>

<section class="page-wrap content-page">
	<div class="container small">
		<h1 class="page-title split-words underline yellow"><?php the_title();?></h1>
		<small><?php the_field('subheader_text');?></small>
		<?php get_template_part('includes/section', 'content');?>
	</div>
</section>

<?php get_footer();?>