<div class="right_block_module">
    <div class="h_catalog">
        <p><?php echo $heading_title; ?></p>
    </div>
    <?php foreach ($reviews as $review) { ?>
        <div class="review_item">
            <i>“<?php echo $review['text']; ?>”</i>
            <p>
                <img src="<?php echo $review['image']; ?>" alt="">
                <a rel="nofollow" target="_blank"><?php echo $review['author']; ?></a>
            </p>
        </div>
    <?php }
    ?>
</div>