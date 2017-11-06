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
            <div class="cont_text_polezno">
                <?php echo $description; ?>
            </div>
        </div>
        <div class="right_block">
            <?php echo $column_right; ?>

            <div class="right_block_module">
                <!-- TODO Вставить реальний модуль                -->
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

<?php echo $footer; ?>