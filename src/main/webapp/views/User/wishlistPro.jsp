<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
  <meta charset="UTF-8">
  <meta name="description" content="Ashion Template">
  <meta name="keywords" content="Ashion, unica, creative, html">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Ashion | Template</title>

  <!-- Google Font -->
  <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
        rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
  <!-- Css Styles -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css1/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css1/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css1/elegant-icons.css" type="text/css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css1/jquery-ui.min.css" type="text/css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css1/magnific-popup.css" type="text/css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css1/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css1/slicknav.min.css" type="text/css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css1/style.css" type="text/css">
</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
  <div class="loader"></div>
</div>

<!-- Offcanvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>
<div class="offcanvas-menu-wrapper">
  <div class="offcanvas__close">+</div>
  <ul class="offcanvas__widget">
    <li><span class="icon_search search-switch"></span></li>
    <li><a href="#"><span class="icon_heart_alt"></span>
      <div class="tip">2</div>
    </a></li>
    <li><a href="#"><span class="icon_bag_alt"></span>
      <div class="tip">2</div>
    </a></li>
  </ul>
  <div class="offcanvas__logo">
    <a href="./home.jsp"><img src="<%=request.getContextPath()%>/img/logo.png" alt=""></a>
  </div>
  <div id="mobile-menu-wrap"></div>
  <div class="offcanvas__auth">
    <a href="#">Login</a>
    <a href="#">Register</a>
  </div>
</div>


<!-- Header Section Begin -->
<header class="header">
  <div class="container-fluid">
    <div class="row">
      <div class="col-xl-3 col-lg-2">
        <div class="header__logo">
          <a href="./home.jsp"><img src="<%=request.getContextPath()%>/img/logo.png" alt=""></a>
        </div>
      </div>
      <div class="col-xl-6 col-lg-7">
        <nav class="header__menu">
          <ul>
            <li class="active"><a href="./home.jsp">Home</a></li>
            <li><a href="./shop.html">Women’s</a></li>
            <li><a href="./shop.html">Men’s</a></li>
            <li><a href="./shop.html">KID’s</a></li>
            <li><a href="./blog.html">Blog</a></li>
            <li><a href="contact.jsp">Contact</a></li>
          </ul>
        </nav>
      </div>
      <div class="col-lg-3">
        <div class="header__right">
          <div class="header__right__auth">
            <a href="./login.html">Login</a>
            <a href="./register.html">Register</a>
          </div>
          <ul class="header__right__widget">
            <li><span class="icon_search search-switch"></span></li>
            <li><a href="wishlist.jsp"><span class="icon_heart_alt"></span>
              <div class="tip">2</div>
            </a></li>
            <li><a href="./shop-cart.html"><span class="icon_bag_alt"></span>
              <div class="tip">2</div>
            </a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="canvas__open">
      <i class="fa fa-bars"></i>
    </div>
  </div>
</header>
<!-- Header Section End -->

<!-- Breadcrumb Begin -->
<div class="breadcrumb-option">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="breadcrumb__links">
          <a href="./home.jsp"><i class="fa fa-home"></i> Home</a>
          <span>Shopping cart</span>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Breadcrumb End -->

<!-- Shop Cart Section Begin -->
<section class="shop-cart spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="shop__cart__table">
          <table  >
            <thead>
            <tr>
              <th>Product</th>
              <th>Color</th>
              <th>Size</th>
              <th>Price</th>
              <th style="text-align: center">Add to card</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td class="cart__product__item">
                <img src="<%=request.getContextPath()%>/img/shop-cart/cp-1.jpg" alt="">
                <div class="cart__product__item__title">
                  <h6>Chain bucket bag</h6>
                  <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                  </div>
                </div>
              </td>
              <td>
                <div class="product__details__widget">
                  <ul>
                    <li>
                      <span>Available color:</span>
                      <div class="color__checkbox">
                        <label for="red">
                          <input type="radio" name="color__radio" id="red" checked>
                          <span class="checkmark"></span>
                        </label>
                        <label for="black">
                          <input type="radio" name="color__radio" id="black">
                          <span class="checkmark black-bg"></span>
                        </label>
                        <label for="grey">
                          <input type="radio" name="color__radio" id="grey">
                          <span class="checkmark grey-bg"></span>
                        </label>
                      </div>
                    </li>
                  </ul>

                </div>
              </td>
              <td>
                <div class="product__details__widget">
                  <ul>
                    <li>
                      <span>Available size:</span>
                      <div class="size__btn">
                        <label for="xs-btn" class="active">
                          <input type="radio" id="xs-btn">
                          xs
                        </label>
                        <label for="s-btn">
                          <input type="radio" id="s-btn">
                          s
                        </label>
                        <label for="m-btn">
                          <input type="radio" id="m-btn">
                          m
                        </label>
                        <label for="l-btn">
                          <input type="radio" id="l-btn">
                          l
                        </label>
                      </div>
                    </li>
                  </ul>

                </div>

              </td>
              <td class="cart__price">$ 150.0</td>
              <td class="cart__close"> <span class="bi bi-bag-plus-fill"></span>  </td>
            </tr>

            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-6 col-md-6 col-sm-6">
        <div class="cart__btn">
          <a href="./shop.html">Continue Shopping</a>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-6">
        <div class="discount__content">
          <h6>Discount codes</h6>
          <form action="#">
            <input type="text" placeholder="Enter your coupon code">
            <button type="submit" class="site-btn">Apply</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Shop Cart Section End -->

<!-- Instagram Begin -->
<div class="instagram">
  <div class="container-fluid">
    <div class="row">
      <div class="col-lg-2 col-md-4 col-sm-4 p-0">
        <div class="instagram__item set-bg" data-setbg="<%=request.getContextPath()%>/img/instagram/insta-1.jpg">
          <div class="instagram__text">
            <i class="fa fa-instagram"></i>
            <a href="#">@ ashion_shop</a>
          </div>
        </div>
      </div>
      <div class="col-lg-2 col-md-4 col-sm-4 p-0">
        <div class="instagram__item set-bg" data-setbg="<%=request.getContextPath()%>/img/instagram/insta-2.jpg">
          <div class="instagram__text">
            <i class="fa fa-instagram"></i>
            <a href="#">@ ashion_shop</a>
          </div>
        </div>
      </div>
      <div class="col-lg-2 col-md-4 col-sm-4 p-0">
        <div class="instagram__item set-bg" data-setbg="<%=request.getContextPath()%>/img/instagram/insta-3.jpg">
          <div class="instagram__text">
            <i class="fa fa-instagram"></i>
            <a href="#">@ ashion_shop</a>
          </div>
        </div>
      </div>
      <div class="col-lg-2 col-md-4 col-sm-4 p-0">
        <div class="instagram__item set-bg" data-setbg="<%=request.getContextPath()%>/img/instagram/insta-4.jpg">
          <div class="instagram__text">
            <i class="fa fa-instagram"></i>
            <a href="#">@ ashion_shop</a>
          </div>
        </div>
      </div>
      <div class="col-lg-2 col-md-4 col-sm-4 p-0">
        <div class="instagram__item set-bg" data-setbg="<%=request.getContextPath()%>/img/instagram/insta-5.jpg">
          <div class="instagram__text">
            <i class="fa fa-instagram"></i>
            <a href="#">@ ashion_shop</a>
          </div>
        </div>
      </div>
      <div class="col-lg-2 col-md-4 col-sm-4 p-0">
        <div class="instagram__item set-bg" data-setbg="<%=request.getContextPath()%>/img/instagram/insta-6.jpg">
          <div class="instagram__text">
            <i class="fa fa-instagram"></i>
            <a href="#">@ ashion_shop</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Instagram End -->

<!-- Footer Section Begin -->
<footer class="footer">
  <div class="container">
    <div class="row">
      <div class="col-lg-4 col-md-6 col-sm-7">
        <div class="footer__about">
          <div class="footer__logo">
            <a href="./home.jsp"><img src="<%=request.getContextPath()%>/img/logo.png" alt=""></a>
          </div>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
            cilisis.</p>
          <div class="footer__payment">
            <a href="#"><img src="<%=request.getContextPath()%>/img/payment/payment-1.png" alt=""></a>
            <a href="#"><img src="<%=request.getContextPath()%>/img/payment/payment-2.png" alt=""></a>
            <a href="#"><img src="<%=request.getContextPath()%>/img/payment/payment-3.png" alt=""></a>
            <a href="#"><img src="<%=request.getContextPath()%>/img/payment/payment-4.png" alt=""></a>
            <a href="#"><img src="<%=request.getContextPath()%>/img/payment/payment-5.png" alt=""></a>
          </div>
        </div>
      </div>
      <div class="col-lg-2 col-md-3 col-sm-5">
        <div class="footer__widget">
          <h6>Quick links</h6>
          <ul>
            <li><a href="#">About</a></li>
            <li><a href="#">Blogs</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="#">FAQ</a></li>
          </ul>
        </div>
      </div>
      <div class="col-lg-2 col-md-3 col-sm-4">
        <div class="footer__widget">
          <h6>Account</h6>
          <ul>
            <li><a href="#">My Account</a></li>
            <li><a href="#">Orders Tracking</a></li>
            <li><a href="#">Checkout</a></li>
            <li><a href="#">Wishlist</a></li>
          </ul>
        </div>
      </div>
      <div class="col-lg-4 col-md-8 col-sm-8">
        <div class="footer__newslatter">
          <h6>NEWSLETTER</h6>
          <form action="#">
            <input type="text" placeholder="Email">
            <button type="submit" class="site-btn">Subscribe</button>
          </form>
          <div class="footer__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-youtube-play"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
            <a href="#"><i class="fa fa-pinterest"></i></a>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12">
        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
        <div class="footer__copyright__text">
          <p>Copyright &copy;
            <script>document.write(new Date().getFullYear());</script>
            All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i>
            by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
        </div>
        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
      </div>
    </div>
  </div>
</footer>
<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
  <div class="h-100 d-flex align-items-center justify-content-center">
    <div class="search-close-switch">+</div>
    <form class="search-model-form">
      <input type="text" id="search-input" placeholder="Search here.....">
    </form>
  </div>
</div>
<!-- Search End -->

<!-- Js Plugins -->
<script src="<%=request.getContextPath()%>/js/jquery-3.3.1.min.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery.magnific-popup.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery-ui.min.js"></script>
<script src="<%=request.getContextPath()%>/js/mixitup.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery.countdown.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery.slicknav.js"></script>
<script src="<%=request.getContextPath()%>/js/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery.nicescroll.min.js"></script>
<script src="<%=request.getContextPath()%>/js/main.js"></script>
</body>

</html>