<?php
/*
Template Name: Issues
*/
?>

<?php get_header();?>

<main>

	<div class="topper-issues">
		<div class="container narrow">
			<div class="left-right-split">
				<div class="content-left">
					<h5><?php the_field('small_title');?></h5>
					<h1 class="page-title split-words underline blue"><?php the_field('title');?></h1>
				</div>
				<div class="content-right">
					<div class="description">
						<p><?php the_field('description');?></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="page-wrap">
		<?php get_template_part('includes/section', 'content');?>
	</div>
	
	<?php get_template_part('includes/section', 'bottom-cta');?>	

</main>

<?php get_footer();?>