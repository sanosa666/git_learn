
<div id="search" class="input-group">
<form action="">
    <input type="text" name="search" value="<?php echo $search; ?>">
    <button type="button" class="btn btn-default"><?php echo $button_search; ?></button>
    <small>Например, кухонный нож</small>
</form>
</div>


<?php if(false) { ?>
    <div id="search" class="input-group">
      <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_search; ?>" class="form-control input-lg" />
      <span class="input-group-btn">
        <button type="button" class="btn btn-default btn-lg"><i class="fa fa-search"></i></button>
      </span>
    </div>
<?php } ?>