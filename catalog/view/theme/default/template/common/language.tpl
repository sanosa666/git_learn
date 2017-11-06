<?php if (count($languages) > 1) { ?>
<?php //var_dump($languages); ?>

    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-language">
        <div class="dropdown">
            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                <?php foreach ($languages as $language) { ?>
                    <?php if ($language['code'] == $code) {
                        echo $language['name'];
                    } ?>
                <?php } ?>
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                <?php foreach ($languages as $language) { ?>
                    <li><a href="#" data-lang-code="<?php echo $language['code']; ?>"><?php echo $language['name'];?></a></li>
                <?php } ?>
            </ul>
        </div>
            <input type="hidden" name="code" value="" />
            <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
    </form>


    <?php if(false) { ?>
        <div class="pull-left">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-language">
          <div class="btn-group">
            <button class="btn btn-link dropdown-toggle" data-toggle="dropdown">
            <?php foreach ($languages as $language) { ?>
            <?php if ($language['code'] == $code) { ?>
            <img src="catalog/language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>">
            <?php } ?>
            <?php } ?>
            <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_language; ?></span> <i class="fa fa-caret-down"></i></button>
            <ul class="dropdown-menu">
              <?php foreach ($languages as $language) { ?>
              <li><button class="btn btn-link btn-block language-select" type="button" name="<?php echo $language['code']; ?>"><img src="catalog/language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></button></li>
              <?php } ?>
            </ul>
          </div>
          <input type="hidden" name="code" value="" />
          <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
        </form>
        </div>
    <?php } ?>
<?php } ?>
