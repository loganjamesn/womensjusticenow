<?php
/*
Template Name: Issues
*/
?>

<?php get_header();?>

<main class="page-wrap content-page">
	<div class="content">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-md-10">
					<h1 class="page-title split-words underline yellow"><?php the_title();?></h1>
				</div>
			</div>
		</div>
		<div class="content-section">
			<?php get_template_part('includes/section', 'content');?>
		</div>
	</div>
</main>

<?php get_template_part('includes/section', 'bottom-cta');?>

<?php get_footer();?>