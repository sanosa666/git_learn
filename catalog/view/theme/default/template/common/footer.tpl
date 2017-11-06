</div>
<!-- FOOTER		 -->
<footer id="footer">
    <div class="footer-inner center-block">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6 footer-i footer-company">
                    <h2 class="heading footer-heading">Наша компания</h2>
                    <img src="/image/forward.png" alt="" class="img-responsive">
                    <p>Официальный дистрибьютор <br> ТМ "ARCOS" в Украине</p>
                </div><!-- /.col-md-3 footer-i -->
                <div class="col-md-3 col-sm-6 col-xs-6 footer-i footer-work">
                    <h2 class="heading footer-heading">Условия работы</h2>
                    <ul>
                        <?php foreach ($informations as $information) { ?>
                            <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                        <?php } ?>
<!--                        <li><a href="#">О компании Arcos</a></li>-->
<!--                        <li><a href="#">Доставка и оплата</a></li>-->
<!--                        <li><a href="#">Гарантия и обмен</a></li>-->
<!--                        <li><a href="#">Сотрудничество с нами</a></li>-->
<!--                        <li><a href="#">Сертификаты качества</a></li>-->
<!--                        <li><a href="#">Права потребителей</a></li>-->
                    </ul>
                </div><!-- /.col-md-3 footer-i footer-work-->
                <div class="col-md-3 col-sm-6 col-xs-6 footer-i footer-account">
                    <h2 class="heading footer-heading"><a href="#">Моя учетная запись</a></h2>
                    <ul>
                        <li><a href="#">Мои заказы</a></li>
                        <li><a href="#">Мои любимые товары</a></li>
                        <li><a href="#">Бонусные балы</a></li>
                        <li><a href="#">Моя личная информация</a></li>
                        <li><a href="#">Подарочные сертификаты</a></li>
                        <li><a href="#">Акции</a></li>
                    </ul>
                </div><!-- /.col-md-3 footer-i footer-account -->
                <div class="col-md-3 col-sm-6 col-xs-6 footer-i footer-contacts">
                    <h2 class="heading footer-heading">Свяжитесь с нами</h2>
                    <ul class="social clearfix">
                        <li><a href="#" class="fb"></a></li>
                        <li><a href="#" class="vk"></a></li>
                        <li><a href="#" class="pint"></a></li>
                        <li><a href="#" class="yTube"></a></li>
                    </ul><!-- /.social -->
                    <ul class="footer-work-hours clear">
                        <li>График работы Call-центра</li>
                        <li>Пн.-Пт.: с 9:00 до 18:00</li>
                        <li>Суббота: выходной</li>
                        <li>Воскресенье: выходной</li>
                    </ul>
                </div><!-- /.col-md-3 footer-i footer-contacts -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div><!-- /.footer-inner -->
    <div class="container">
        <p class="copyright">
            &copy; 2007-2015 <a href="#">ARCOS.com.ua</a>. Все права защищены и принадлежат их владельцам
        </p>
    </div><!-- /.container -->
</footer><!-- /#footer -->
<!-- FOOTER	END -->
</div><!-- /#wrapper -->

<!-- MODALS -->
<!-- Modal -->
<div id="callMe" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Заказать обратный звонок</h4>
            </div>
            <div class="modal-body">
                <form role="form">
                    <div class="form-group">
                        <label for="">Имя</label>
                        <input type="tetx" class="form-control" placeholder="Ваше имя">
                    </div>
                    <div class="form-group">
                        <label for="">Телефон</label>
                        <input type="text" class="form-control" placeholder="Укажите телефон">
                    </div>
                    <div class="form-group">
                        <label for="">Вопрос</label>
                        <textarea name="name" rows="5" cols="40" placeholder="Напишите свой вопрос" class="form-control"></textarea>
                    </div>
                    <button type="submit" class="btn btn-default">Перезвоните мне</button>
                </form>
            </div>
        </div>

    </div>
</div>
<!-- MODALS END-->
<!--BTN TO TOP-->
<a id="top" href="#up"> <img src="image/up-arrow.png"> </a>
<!--BTN TO TOP end-->

<!-- SCRIPTS -->
<script src="/catalog/view/javascript/vendor.js"></script>
<script src="/catalog/view/javascript/lightslider.min.js"></script>
<script src="/catalog/view/javascript/flipclock.min.js"></script>
<script src="/catalog/view/javascript/main.js"></script>
<!-- TODO почистить -->
<?php if(false) { ?>
<footer>
  <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
    </div>
    <hr>
    <p><?php echo $powered; ?></p>
  </div>
</footer>
<?php } ?>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>