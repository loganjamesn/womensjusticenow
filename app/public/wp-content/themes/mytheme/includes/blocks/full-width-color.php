<?php

$color = get_field('background_color');

$className = ('module full-width-color ' . $color);

if (!empty($block['className'])) {
	$className .= ' ' . $block['className'];
}
if (!empty($block['align'])) {
	$className .= ' align' . $block['align'];
}

?>



<div class="<?php echo esc_attr($className); ?>">
	<div class="container small">
		<?php the_field('content');?>		
	</div>
</div>