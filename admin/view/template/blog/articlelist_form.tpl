<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" form="form-article-list" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
                <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
            <h1><?php echo $heading_title; ?></h1>
            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="container-fluid">
        <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_form; ?></h3>
            </div>
            <div class="panel-body">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-article-list" class="form-horizontal">

                    <ul class="nav nav-tabs" id="language">
                        <?php foreach ($languages as $language) { ?>
                            <li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                        <?php } ?>
                    </ul>

                    <div class="tab-content">
                        <?php foreach ($languages as $language) { ?>
                            <div class="tab-pane" id="language<?php echo $language['language_id']; ?>">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-name-<?php echo $language['language_id'];?>"><?php echo $entry_name; ?></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="article_description[<?php echo $language['language_id']; ?>][name]" value="<?php echo (isset($article_description[$language['language_id']]['name'])) ? $article_description[$language['language_id']]['name'] : ''; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name-<?php echo $language['language_id'];?>" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-description-<?php echo $language['language_id'];?>"><?php echo "Article List Description"; ?></label>
                                    <div class="col-sm-10">
                                        <textarea name="article_description[<?php echo $language['language_id']; ?>][description]" id="input-description-<?php echo $language['language_id'];?>" placeholder="Article List Description" class="form-control"><?php echo (isset($article_description[$language['language_id']]['description'])) ? $article_description[$language['language_id']]['description'] : ''; ?></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-meta-title-<?php echo $language['language_id'];?>"><?php echo "Meta title"; ?></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="article_description[<?php echo $language['language_id']; ?>][meta_title]" value="<?php echo (isset($article_description[$language['language_id']]['meta_title'])) ? $article_description[$language['language_id']]['meta_title'] : ''; ?>" placeholder="<?php echo "Meta title"; ?>" id="input-name-<?php echo $language['language_id'];?>" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-meta-keyword-<?php echo $language['language_id'];?>"><?php echo "Meta Keywords"; ?></label>
                                    <div class="col-sm-10">
                                        <textarea name="article_description[<?php echo $language['language_id']; ?>][meta_keyword]" id="input-meta-keyword-<?php echo $language['language_id'];?>" placeholder="Meta Keyword" class="form-control"><?php echo (isset($article_description[$language['language_id']]['meta_keyword'])) ? $article_description[$language['language_id']]['meta_keyword'] : ''; ?></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-meta-description-<?php echo $language['language_id'];?>"><?php echo "Meta Description"; ?></label>
                                    <div class="col-sm-10">
                                        <textarea name="article_description[<?php echo $language['language_id']; ?>][meta_description]" id="input-meta-description-<?php echo $language['language_id'];?>" placeholder="Meta Description" class="form-control"><?php echo (isset($article_description[$language['language_id']]['meta_description'])) ? $article_description[$language['language_id']]['meta_description'] : ''; ?></textarea>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="blog-image"><?php echo "Image"; ?></label>
                        <div class="col-sm-10">
                            <a href="javascript:void(0);" id="blog-image" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                            <input type="hidden" name="image" value="<?php echo $image; ?>" id="input-image" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
                        <div class="col-sm-10">
                            <select name="status" id="input-status" class="form-control">
                                <?php if ($status) { ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-article-list"><?php echo $entry_article_list; ?></label>
                        <div class="col-sm-10">
                            <input type="text" name="article" value="" placeholder="<?php echo $entry_article_list; ?>" id="input-article-list" class="form-control" />
                            <div id="blog-article" class="well well-sm" style="height: 150px; overflow: auto;">
                                <?php foreach ($articles as $article) { ?>
                                <div id="blog-article<?php echo $article['article_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $article['name']; ?>
                                    <input type="hidden" name="article[]" value="<?php echo $article['article_id']; ?>" />
                                </div>
                                <?php } ?>
                            </div>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="view/javascript/summernote/summernote.js"></script>
  <link href="view/javascript/summernote/summernote.css" rel="stylesheet" />
  <script type="text/javascript" src="view/javascript/summernote/opencart.js"></script>
    <script type="text/javascript">
    <!--
        $('input[name=\'article\']').autocomplete({
            source: function(request, response) {
                $.ajax({
                    url: 'index.php?route=blog/article/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
                    dataType: 'json',
                    success: function(json) {
                        response($.map(json, function(item) {
                            return {
                                label: item['name'],
                                value: item['article_id']
                            }
                        }));
                    }
                });
            },
            select: function(item) {
                $('input[name=\'article\']').val('');

                $('#blog-article' + item['value']).remove();

                $('#blog-article').append('<div id="blog-article' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="article[]" value="' + item['value'] + '" /></div>');
            }
        });

        $('#blog-article').delegate('.fa-minus-circle', 'click', function() {
            $(this).parent().remove();
        });
    //-->

    $('#language li:first-child a').tab('show');
    </script>
</div>
<?php echo $footer; ?>