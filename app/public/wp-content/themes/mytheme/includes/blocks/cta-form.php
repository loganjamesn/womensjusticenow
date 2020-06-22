<?php

$className = ('module cta-form');

if (!empty($block['className'])) {
	$className .= ' ' . $block['className'];
}
if (!empty($block['align'])) {
	$className .= ' align' . $block['align'];
}

?>



<div class="<?php echo esc_attr($className); ?>">
	<div class="cta-image" style="background: url('<?php echo the_field('image') ?>') no-repeat top center;"></div>
	<div class="container">
		<div class="row">
			<div class="vertical-centered">
				<div class="col-xs-12 cta-headline">
					<h1 class="page-title split-words underline yellow"><?php echo the_field('title') ?></h1>
					<p><?php echo the_field('text') ?></p>
				</div>
				<div class="form-embed">
					<?php echo the_field('form') ?>
				</div>
			</div>
		</div>
	</div>
</div>