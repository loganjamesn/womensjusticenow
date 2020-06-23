<?php get_header();?>

<main>

	<div class="topper-issues">
		<div class="container narrow">
			<h1 class="page-title split-words underline blue"><?php the_title();?></h1>
		</div>
	</div>
	
	<div class="page-wrap">
		<div class="container narrow">
			<?php get_template_part('includes/section', 'content');?>
		</div>
	</div>
	
	<?php get_template_part('includes/section', 'bottom-cta');?>	

</main>

<?php get_footer();?>