<?php echo $header; ?>
<div class="cont polezno_item_page clearfix">
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
            <h1><?php echo $heading_title; ?></h1>
            <p class="date_item_polezno"><?php echo $date; ?></p>
            <div class="cont_text_polezno">
                <?php echo $description; ?>
            </div>
            <p class="public_razdel">Опубликованно в разделе <a href="<?php echo $article_list['href']; ?>"><?php echo $article_list['name']; ?></a></p>

<!-- TODO доробить як буде час            -->
            <?php if(false) { ?>
                <p class="pohozhie"><strong>Похожие статьи</strong><a href="">Кухонные ножи. Как выбрать?</a><a href="">Кухонные ножи. Как выбрать?</a></p>
            <?php } ?>
        </div>
        <div class="right_block">
            <?php echo $column_right; ?>


            <!-- TODO Вставить реальний модуль                -->

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
<!-- Banner -->
<section id="banner" class="banner banner-post" style="background-image: url('/image/<?php echo $image; ?>')">
    <!-- Avoid collapse -->
    <div></div>
</section>
<!-- Banner END -->

<!-- Page intro -->
<section id="page-intro" class="page-intro page-intro-post">
    <div class="container">

        <h1><?php echo $heading_title;?></h1>
<!--TODO оживить шарінг-->
        <div class="share-icons">
            <div class="share">
                <img src="/image/icons/share-share-w.svg" alt="Share icon" />
            </div>

            <div class="icon">
                <a class="link-block" data-href="http://www.facebook.com/sharer.php?u=">
                    <img src="/image/icons/share-facebook.svg" alt="Share icon" />
                </a>
            </div>

            <div class="icon">
                <a class="link-block" data-href="http://twitter.com/share?url=">
                    <img src="/image/icons/share-twitter.svg" alt="Share icon" />
                </a>
            </div>

            <div class="icon">
                <a class="link-block mail" href="mailto:?subject=INSTYTUTUM: latest news and beauty advice&amp;body=Check out this article ">
                    <img src="/image/icons/share-mail.svg" alt="Share icon" />
                </a>
            </div>
        </div>

    </div>
</section>
<!-- Page intro END -->

<!-- Post -->
<section id="post" class="post">
    <div class="container">
        <div class="main">
            <?php echo $description;?>
<?php if(false) { ?>
            <h3>  
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                Nulla quam velit, vulputate eu pharetra nec, mattis ac neque.
                Duis vulputate commodo lectus, ac blandit esta ut tincidunt id.
                Sed rhoncus, tortor sed eleifend tristique, tortor mauris molestie elit (H3).
            </h3>
            <p class="lettering">
                Worem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis, reiciendis soluta?
                Assumenda autem, consequatur consequuntur dignissimos distinctio ea eum, harum molestiae
                necessitatibus nulla, quasi quis quos repudiandae sapiente unde veritatis.
                Worem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis, reiciendis soluta?
                Assumenda autem, consequatur consequuntur dignissimos distinctio ea eum, harum molestiae
                necessitatibus nulla, quasi quis quos repudiandae sapiente unde veritatis.
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis, reiciendis soluta?
                Assumenda autem, consequatur consequuntur dignissimos distinctio ea eum, harum molestiae
                necessitatibus nulla, <a href="">quasi quis</a> quos repudiandae sapiente unde veritatis.
            </p>

            <h2>
                THIS IS AN h2 SUBTITLE
            </h2>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis, reiciendis soluta?
                Assumenda autem, consequatur consequuntur dignissimos distinctio ea eum, harum molestiae
                necessitatibus nulla, quasi quis quos repudiandae sapiente unde veritatis.
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis, reiciendis soluta?
                Assumenda autem, consequatur consequuntur dignissimos distinctio ea eum, harum molestiae
                necessitatibus nulla, <a href="">quasi quis</a> quos repudiandae sapiente unde veritatis.
            </p>
            <div class="media media-left">
                <div class="wrapper">
                    <div class="media">
                        <img src="image/info-image-6.jpg" alt="Info image">
                        <a href="" class="link-block"></a>
                    </div>
                </div>

                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis, reiciendis soluta?
                Assumenda autem, consequatur consequuntur dignissimos distinctio ea eum, harum molestiae
                necessitatibus nulla, quasi quis quos repudiandae sapiente unde veritatis.
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis, reiciendis soluta?
                Assumenda autem, consequatur consequuntur dignissimos distinctio ea eum, harum molestiae
                necessitatibus nulla, <a href="">quasi quis</a> quos repudiandae sapiente unde veritatis.
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis, reiciendis soluta?
                Assumenda autem, consequatur consequuntur dignissimos distinctio ea eum, harum molestiae
                necessitatibus nulla, quasi quis quos repudiandae sapiente unde veritatis.
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis, reiciendis soluta?
                Assumenda autem, consequatur consequuntur dignissimos distinctio ea eum, harum molestiae
                necessitatibus nulla, <a href="">quasi quis</a> quos repudiandae sapiente unde veritatis.
            </div>
            <div class="media media-right">
                <div class="wrapper">
                    <div class="media">
                        <img src="image/info-image-6.jpg" alt="Info image">
                        <a href="" class="link-block"></a>
                    </div>
                </div>

                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis, reiciendis soluta?
                Assumenda autem, consequatur consequuntur dignissimos distinctio ea eum, harum molestiae
                necessitatibus nulla, quasi quis quos repudiandae sapiente unde veritatis.
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis, reiciendis soluta?
            </div>
            <div class="quote">
                Quisque nec mauris sit amet elit iaculis pretium sit amet quis magna. Aenean velit odio, elementum in tempus ut, vehicula eu diam.
                Pellentesque rhoncus aliquam mattis. Ut vulputate eros sed felis sodales nec vulputate justo hendrerit.
            </div>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis, reiciendis soluta?
                Assumenda autem, consequatur consequuntur dignissimos distinctio ea eum, harum molestiae
                Assumenda autem, consequatur consequuntur dignissimos distinctio ea eum, harum molestiae
                necessitatibus nulla, <a href="">quasi quis</a> quos repudiandae sapiente unde veritatis.
            </p>
            <ul>
                <li>Pellentesque rhoncus aliquam mattis. Ut vulputate eros sed felis sodales nec vulputate justo
                    hendrerit. Vivamus varius pretium ligula, a aliquam odio euismod sit amet.
                </li>
                <li>Pellentesque rhoncus aliquam mattis. Ut vulputate eros sed felis sodales nec vulputate justo
                    hendrerit. Vivamus varius pretium ligula, a aliquam odio euismod sit amet.
                </li>
                <li>Pellentesque rhoncus aliquam mattis. Ut vulputate eros sed felis sodales nec vulputate justo
                    hendrerit. Vivamus varius pretium ligula, a aliquam odio euismod sit amet.
                </li>
            </ul>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis, reiciendis soluta?
                Assumenda autem, consequatur consequuntur dignissimos distinctio ea eum, harum molestiae
                Assumenda autem, consequatur consequuntur dignissimos distinctio ea eum, harum molestiae
                necessitatibus nulla, <a href="">quasi quis</a> quos repudiandae sapiente unde veritatis.
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis, reiciendis soluta?
                Assumenda autem, consequatur consequuntur dignissimos distinctio ea eum, harum molestiae
                Assumenda autem, consequatur consequuntur dignissimos distinctio ea eum, harum molestiae
                necessitatibus nulla, <a href="">quasi quis</a> quos repudiandae sapiente unde veritatis.
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis, reiciendis soluta?
                Assumenda autem, consequatur consequuntur dignissimos distinctio ea eum, harum molestiae
                Assumenda autem, consequatur consequuntur dignissimos distinctio ea eum, harum molestiae
                necessitatibus nulla, <a href="">quasi quis</a> quos repudiandae sapiente unde veritatis.
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis, reiciendis soluta?
                Assumenda autem, consequatur consequuntur dignissimos distinctio ea eum, harum molestiae
                Assumenda autem, consequatur consequuntur dignissimos distinctio ea eum, harum molestiae
                necessitatibus nulla, <a href="">quasi quis</a> quos repudiandae sapiente unde veritatis.
            </p>
<?php } ?>
        </div>
    </div>
</section>
<!-- Post END -->



<?php echo $content_top; ?>

<?php } ?>

<?php echo $footer; ?>
