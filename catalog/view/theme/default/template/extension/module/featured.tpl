<?php if($limit == 1) { ?>
    <div class="right_block_module">
        <div class="h_catalog">
            <p><?php echo $heading_title_day_product; ?></p>
        </div>
        <?php foreach ($products as $product) { ?>
            <div class="tovar_sale clearfix">
                <a href="<?php echo $product['href']; ?>" class="img_news">
                    <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
                </a>
                <a href="<?php echo $product['href']; ?>" class="h_hews"><?php echo $product['name']; ?></a>
                <?php if (!$product['special']) { ?>
                    <p class="old_price_tovar_sla"><?php echo $product['price']; ?></p>
                <?php } else { ?>
                    <p class="old_price_tovar_sla"><?php echo $product['price']; ?></p>
                    <p class="new_price_tovar_sale"><?php echo $product['special']; ?></p>
                <?php } ?>
                <div class="clearfix"></div>
                <div id="tovar_of_day"></div>
            </div>
        <?php } ?>
    </div>
<?php } if($limit == 4) { ?>
<div class="popular-products">
    <h2 class="heading"><?php echo $heading_title; ?></h2>
    <div class="row">
        <?php foreach ($products as $product) { ?>
            <div class="col-sm-3 col-xs-4 popular-products-i">
                <div class="product-wrap">
                    <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" class="img-responsive center-block prod-img"></a>
                    <a href="<?php echo $product['href']; ?>" class="product-name"><?php echo $product['name']; ?></a>
                    <span class="product-price"><?php echo $product['price']; ?></span>
                    <button class="btn btn-default buy-btn" onclick="cart.add('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></button>
                </div><!-- /.product-wrap -->
            </div><!-- /.col-sm-3 popular-products-i -->
        <?php } ?>
    </div><!-- /.row -->
</div><!-- /.popular-products -->

<?php } ?>

<!-- TODO почистить-->
<?php if(false) { ?>
<div class="row">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
        <p><?php echo $product['description']; ?></p>
        <?php if ($product['rating']) { ?>
        <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['price']) { ?>
        <p class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </p>
        <?php } ?>
      </div>
      <div class="button-group">
        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
      </div>
    </div>
  </div>
  <?php } ?>
</div>

<?php } ?>