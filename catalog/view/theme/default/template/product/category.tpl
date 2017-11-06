<?php echo $header; ?>

<div class="cont page_catalog clearfix">
    <div class="breadcrumbs">
        <?php foreach ($breadcrumbs as $key => $breadcrumb) { ?>
            <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
            <?php if($key < count($breadcrumbs)-1) { ?>
                <span>/</span>
            <?php } ?>
        <?php } ?>
        
    </div>
    <div class="wrapp">
        <div class="left_block">
            <div class="h_catalog">
                <h1><?php echo $heading_title; ?></h1>
                <?php if($product_total > 0) { ?>
                    <span><?php echo $product_total_text ?></span>
                <?php } ?>
            </div>
            <?php if($categories) { ?>
                <div class="products clearfix">
                    <?php foreach ($categories as $category) { ?>
                        <div class="product_item">
                            <a href="<?php echo $category['href']; ?>" class="img_tovar">
                                <img src="<?php echo $category['image']; ?>" alt="<?php echo $category['name']; ?>">
                            </a>
                            <a href="<?php echo $category['href']; ?>" class="h_tovar group_catalog">
                                <?php echo $category['name']; ?>
                            </a>
                        </div>
                    <?php } ?>

                </div><!--products end-->
            <?php } ?>
<!-- TODO при можливості запилить пагінацію            -->
            <?php if(false) { ?>
            <div class="paginator">
                <a href="" class="back">Назад</a>
				<span>
					<a href="" class="active_page">1</a>
					<a href="">2</a>
					<a href="">3</a>
					<a href="">4</a>
				</span>
                <a href="" class="next">Далее</a>
            </div>
            <?php } ?>
            <div class="clearfix"></div>


            <?php if ($description) { ?>
                <div class="detail_text_catalog">
                    <?php echo $description; ?>
                </div>
            <?php } ?>

            <?php if ($products) { ?>
                <div class="sortirovka_grid">
                    <span class="sortirovka">
                        <span><?php echo $text_sort; ?></span>
                            <select id="input-sort" onchange="location = this.value;">
                                <?php foreach ($sorts as $sorts) { ?>
                                    <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                                        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                                    <?php } else { ?>
                                        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                                    <?php } ?>
                                <?php } ?>
                            </select>
                    </span>
<!-- TODO при можливості прикрутить зміну плитки                     -->
                    <?php if(false) { ?>
                        <span class="product_view">
                            <a href=""><img src="img/menu-grid.png" alt=""></a>
                            <a href=""><img src="img/list.png" alt=""></a>
                        </span>
                    <?php } ?>
                </div>


                <div class="products clearfix">
                    <?php foreach ($products as $product) { ?>
                        <div class="product_item">
                            <a href="<?php echo $product['href']; ?>" class="img_tovar">
                                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
                            </a>
                            <a href="<?php echo $product['href']; ?>" class="h_tovar"><?php echo $product['name']; ?></a>
                            <?php if(false) { ?>
                                <div class="rating_tovar">
                                    <p>5 отзывов</p>
                                </div>
                            <?php } ?>
                            <div class="availability_tovar">
                                <p class="in_stock">Есть в наличии</p>
                            </div>
                            <div class="compare_tovar">
                                <label onclick="compare.add('<?php echo $product['product_id']; ?>');">
                                    <input type="checkbox">
                                    <span><?php echo $button_compare; ?></span>
                                </label>
                            </div>
                            <div class="price_btn_buy">
                                <span class="price"><?php echo $product['price']; ?></span>
                                <a href="" class="btn_buy" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><?php echo $button_cart; ?></a>
                            </div>
                        </div>
                    <?php } ?>
                </div>
                <div class="btn_compare_cont clearfix">
                    <a href="/index.php?route=product/compare" class="btn_compare"><?php echo $button_compare_list ?></a>
                </div>
                <div class="product_on_page">
                    <span><?php echo $text_limit; ?></span>
                    <select id="input-limit" onchange="location = this.value;">
                        <?php foreach ($limits as $limits) { ?>
                            <?php if ($limits['value'] == $limit) { ?>
                                <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                            <?php } else { ?>
                                <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                            <?php } ?>
                        <?php } ?>
                    </select>
<!-- TODO може прикрутить якось                    -->
                    <?php if(false) { ?>
                        <a href="" class="btn_product_on_page">oк</a>
                    <?php } ?>
                </div>
                <?php echo $pagination; ?>

            <?php } ?>
        </div>
        <div class="right_block">

            <?php echo $column_right; ?>

            <div class="right_block_module">
                <div class="h_catalog">
                    <p>Рассылка</p>
                </div>
                <div class="mail_send">
                    <input type="text" placeholder="Ваш email">
                    <input type="submit" value="ок" >
                </div>
            </div>
        </div>
    </div>
</div>



<?php if(false) { ?>
    <div class="container">
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
      <div class="row"><?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
          <h1><?php echo $heading_title; ?></h1>
          <?php if ($thumb || $description) { ?>
          <div class="row">
            <?php if ($thumb) { ?>
            <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
            <?php } ?>
            <?php if ($description) { ?>
            <div class="col-sm-10"><?php echo $description; ?></div>
            <?php } ?>
          </div>
          <hr>
          <?php } ?>
          <?php if ($categories) { ?>
          <h3><?php echo $text_refine; ?></h3>
          <?php if (count($categories) <= 5) { ?>
          <div class="row">
            <div class="col-sm-3">
              <ul>
                <?php foreach ($categories as $category) { ?>
                <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                <?php } ?>
              </ul>
            </div>
          </div>
          <?php } else { ?>
          <div class="row">
            <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
            <div class="col-sm-3">
              <ul>
                <?php foreach ($categories as $category) { ?>
                <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                <?php } ?>
              </ul>
            </div>
            <?php } ?>
          </div>
          <?php } ?>
          <?php } ?>
          <?php if ($products) { ?>
          <div class="row">
            <div class="col-md-2 col-sm-6 hidden-xs">
              <div class="btn-group btn-group-sm">
                <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
                <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
              </div>
            </div>
            <div class="col-md-3 col-sm-6">
              <div class="form-group">
                <a href="<?php echo $compare; ?>" id="compare-total" class="btn btn-link"><?php echo $text_compare; ?></a>
              </div>
            </div>
            <div class="col-md-4 col-xs-6">
              <div class="form-group input-group input-group-sm">
                <label class="input-group-addon" for="input-sort"><?php echo $text_sort; ?></label>
                <select id="input-sort" class="form-control" onchange="location = this.value;">
                  <?php foreach ($sorts as $sorts) { ?>
                  <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                  <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select>
              </div>
            </div>
            <div class="col-md-3 col-xs-6">
              <div class="form-group input-group input-group-sm">
                <label class="input-group-addon" for="input-limit"><?php echo $text_limit; ?></label>
                <select id="input-limit" class="form-control" onchange="location = this.value;">
                  <?php foreach ($limits as $limits) { ?>
                  <?php if ($limits['value'] == $limit) { ?>
                  <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select>
              </div>
            </div>
          </div>
          <div class="row">
            <?php foreach ($products as $product) { ?>
            <div class="product-layout product-list col-xs-12">
              <div class="product-thumb">
                <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
                <div>
                  <div class="caption">
                    <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                    <p><?php echo $product['description']; ?></p>
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
                  </div>
                  <div class="button-group">
                    <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
                  </div>
                </div>
              </div>
            </div>
            <?php } ?>
          </div>
          <div class="row">
            <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
            <div class="col-sm-6 text-right"><?php echo $results; ?></div>
          </div>
          <?php } ?>
          <?php if (!$categories && !$products) { ?>
          <p><?php echo $text_empty; ?></p>
          <div class="buttons">
            <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
          </div>
          <?php } ?>
          <?php echo $content_bottom; ?></div>
        <?php echo $column_right; ?></div>
    </div>
<?php } ?>
<?php echo $footer; ?>
