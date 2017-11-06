<div class="home-slider">
    <div id="home-slider" class="owl-carousel owl-theme slideshow<?php echo $module; ?>">
        <?php foreach ($banners as $banner) { ?>
            <div class="item"><img src="<?php echo $banner['image'] ?>"></div>
        <?php } ?>
    </div>
</div><!-- /.home-slider -->
<script>
    var owl = $(".slideshow<?php echo $module; ?>");

    owl.owlCarousel({
        singleItem : true,
        navigation : false,
        transitionStyle : "fade",
        autoPlay : true
    });
</script>


<?php if(false) { ?>
<div id="slideshow<?php echo $module; ?>" class="owl-carousel" style="opacity: 1;">
  <?php foreach ($banners as $banner) { ?>
  <div class="item">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
    <?php } ?>
  </div>
  <?php } ?>
</div>
<script type="text/javascript"><!--
$('#slideshow<?php echo $module; ?>').owlCarousel({
	items: 6,
	autoPlay: 3000,
	singleItem: true,
	navigation: true,
	navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
	pagination: true
});
--></script>
<?php } ?>