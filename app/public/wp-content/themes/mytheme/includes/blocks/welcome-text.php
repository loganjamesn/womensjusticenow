<?php

$className = 'module welcome-text';

if (!empty($block['className'])) {
	$className .= ' ' . $block['className'];
}
if (!empty($block['align'])) {
	$className .= ' align' . $block['align'];
}

?>



<div class="<?php echo esc_attr($className); ?>">
	<div class="container narrow">
		<div class="welcome-heading">
			<h1 class="page-title split-words underline blue"><?php the_field('title');?></h1>	
		</div>
		<div class="text">
			<div class="row">
				<div class="col-md-5">
					<?php $button = get_field('left_button'); ?>
					<button class="red"><a href="<?php echo esc_url($button['button_link']);?>"><?php echo esc_html($button['button_text']);?></a></button>
				</div>
				<div class="col-md-7">
					<?php the_field('right_content');?>
				</div>
			</div>	
		</div>
	</div>		
</div>