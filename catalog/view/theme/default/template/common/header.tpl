<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title;  ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

    <link rel="stylesheet" href="/catalog/view/theme/default/stylesheet/vendor.css">
    <link rel="stylesheet" href="/catalog/view/theme/default/stylesheet/base.css">
    <link rel="stylesheet" href="/catalog/view/theme/default/stylesheet/flipclock.css">
    <link rel="stylesheet" href="/catalog/view/theme/default/stylesheet/lightslider.min.css">
    <link rel="stylesheet" href="/catalog/view/theme/default/stylesheet/style.css">

    <script src="/catalog/view/javascript/modernizr.js"></script>

<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>




<body class="<?php echo $class; ?>">

<div id="wrapper">
    <div id="content">

        <!-- TOP MENU -->
        <div class="container">
            <nav class="top-menu">
                <div class="row">

                    <div class="nav-mob-header">
                        <p class='nav-title-block'><i class="fa fa-2x fa-bars menu"></i></p>
                    </div><!-- /.nav-mob-header-->

                    <div class="nav-mob-menu">
                        <i class="fa fa-2x fa-bars menu-top"></i>
                    </div>

                    <div class="col-sm-12 col-md-3 col-md-push-9 account-nav">
                        <ul>
                            <li>
                                <?php echo $language; ?>
                            </li>
                            <li><a href="<?php echo $account; ?>"><span class="account-txt"><?php echo $text_account; ?></span> <span class="account-icon"><i class="fa fa-sign-in" title="Войти"></i></span></a></li>
                            <li class="cart-icon"><a href="order.html"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>

                    </div><!-- /.col-sm-10 col-md-3 account-nav -->
                    <div class="col-sm-12 col-md-9 col-md-pull-3 top-menu-nav">
                        <ul class="slideup">
                            <li><a href="/index.php?route=blog/blog&list_id=51">Полезно знать</a></li>
                            <li><a href="/index.php?route=blog/blog&list_id=52">Видео</a></li>
                            <li><a href="/index.php?route=information/information&information_id=7">Доставка и оплата</a></li>
                            <li><a href="/index.php?route=information/information&information_id=8">Гарантия</a></li>
                            <li><a href="/index.php?route=blog/blog&list_id=50">Акции и Новости</a></li>
                            <li><a href="#">Уцененный товар</a></li>
                            <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                        </ul>
                    </div><!-- /.col-sm-12 col-md-9 top-menu-nav -->
                </div><!-- /.row -->
            </nav><!--/.top-menu -->
        </div><!-- /.container -->
        <!-- TOP MENU END-->

        <!-- HEADER	 -->
        <header id="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-xs-6 b-logo">

                        <?php if ($logo) { ?>
                            <?php if ($home == $og_url) { ?>
                                <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
                            <?php } else { ?>
                                <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
                            <?php } ?>
                        <?php } else { ?>
                            <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                        <?php } ?>

                    </div><!-- /.col-md-3 b-logo -->
                    <div class="col-md-4 col-xs-6 b-search">
                        <?php echo $search; ?>
                    </div><!-- /.col-md-4 b-search -->
                    <div class="col-md-3 col-xs-12 b-header-phones">

                        <a href="tel:<?php echo $telephone; ?>"><?php echo $telephone; ?></a>
                        <a href="tel:<?php echo $fax; ?>"><?php echo $fax; ?></a>
                        <button data-toggle="modal" data-target="#callMe">Заказать обратный звонок</button>
                    </div><!-- /.col-md-3 b-header-phones -->
                    <div class="col-md-2 b-header-cart">
                        <?php echo $cart; ?>
                    </div><!-- /.col-md-2 b-header-cart -->

                </div><!-- /.row -->
            </div><!-- /.container -->
        </header><!-- /#header -->
        <!-- HEADER	 END-->

        <!-- MAIN MENU -->
        <!-- Navigation -->
        <nav class="nav-mob">
            <div class="container menu-block">
                <div class="main-menu">
                    <p class="text-right close-nav">&times;</p>
                    <ul class="drop-menu">

                        <?php foreach ($categories as $category) { ?>
                            <?php if ($category['children']) { ?>
                                <li class="drop-nav-ul">
                                    <span class="inner-level-link"></span>
                                    <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                                    <ul class="drop-first">
                                        <?php foreach ($category['children'] as $child) { ?>
                                            <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                                        <?php } ?>
                                    </ul><!-- /.drop-nav -->
                                </li>
                            <?php } else { ?>
                                <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                            <?php } ?>
                        <?php } ?>

                    </ul><!-- /.drop-menu -->
                </div><!-- /.main-menu -->
            </div><!-- /.container -->
        </nav><!-- /.nav-mob -->
        <!-- Navigation End-->
        <!-- MAIN MENU END-->



        <!-- TODO почистить-->
<?php if(false) { ?>
    <nav id="top">
      <div class="container">
        <?php echo $currency; ?>
        <?php echo $language; ?>
        <div id="top-links" class="nav pull-right">
          <ul class="list-inline">
            <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>
            <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
              <ul class="dropdown-menu dropdown-menu-right">
                <?php if ($logged) { ?>
                <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                <?php } else { ?>
                <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
                <?php } ?>
              </ul>
            </li>
            <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
            <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
            <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
          </ul>
        </div>
      </div>
    </nav>
    <header>
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <div id="logo">
              <?php if ($logo) { ?>
                <?php if ($home == $og_url) { ?>
                  <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
                <?php } else { ?>
                  <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
                <?php } ?>
              <?php } else { ?>
                <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
              <?php } ?>
            </div>
          </div>
          <div class="col-sm-5"><?php echo $search; ?>
          </div>
          <div class="col-sm-3"><?php echo $cart; ?></div>
        </div>
      </div>
    </header>
    <?php if ($categories) { ?>
    <div class="container">
      <nav id="menu" class="navbar">
        <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
          <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
        </div>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav">
            <?php foreach ($categories as $category) { ?>
            <?php if ($category['children']) { ?>
            <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
              <div class="dropdown-menu">
                <div class="dropdown-inner">
                  <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                  <ul class="list-unstyled">
                    <?php foreach ($children as $child) { ?>
                    <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                    <?php } ?>
                  </ul>
                  <?php } ?>
                </div>
                <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
            </li>
            <?php } else { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
            <?php } ?>
          </ul>
        </div>
      </nav>
    </div>
    <?php } ?>

<?php } ?>