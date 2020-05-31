<?php 
/*
Template Name:index
*/
get_header(); ?>
</div>
<section class="slider">
    <?php get_template_part('partes/index','slider'); ?>
</section>

<?php get_template_part('searchform'); ?>
<div class="wrapper">
	<section class="tours clear ">
    <?php get_template_part('partes/index','tours'); ?>
    </section> <!--tours -->
    <section class="consejos-testimoniales clear">
        <div class="grid2-3">
        <?php get_template_part('partes/index','consejos'); ?>

        <?php get_template_part('partes/index','testimoniales'); ?>
        
    </section>

<?php get_footer(); ?>
