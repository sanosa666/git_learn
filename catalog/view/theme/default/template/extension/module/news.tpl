<div class="right_block_module">
    <div class="h_catalog">
        <p><?php echo $heading_title; ?></p>
    </div>
    <?php foreach ($news as $news_item) { ?>
        <div class="item_news clearfix">
            <a href="<?php echo $news_item['href'] ?>" class="img_news">
                <img src="<?php echo $news_item['image'] ?>" alt="">
            </a>
            <a href="<?php echo $news_item['href'] ?>" class="h_hews"><?php echo $news_item['name'] ?></a>
            <p class="date_news"><?php echo $news_item['date_added'] ?></p>
        </div>
    <?php }
    ?>
</div>
