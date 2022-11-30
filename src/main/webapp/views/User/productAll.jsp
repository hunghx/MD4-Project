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
<!-- Offcanvas Menu End -->

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
                        <li><a href="./home.jsp">Home</a></li>
                        <li><a href="#">Women’s</a></li>
                        <li><a href="#">Men’s</a></li>
                        <li class="active"><a href="./shop.html">Shop</a></li>
                        <li><a href="#">Pages</a>
                            <ul class="dropdown">
                                <li><a href="product-details.jsp">Product Details</a></li>
                                <li><a href="./shop-cart.html">Shop Cart</a></li>
                                <li><a href="checkout.jsp">Checkout</a></li>
                                <li><a href="./blog-details.html">Blog Details</a></li>
                            </ul>
                        </li>
                        <li><a href="./blog.html">Blog</a></li>
                        <li><a href="contact.jsp">Contact</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__right">
                    <div class="header__right__auth">
                        <a href="#">Login</a>
                        <a href="#">Register</a>
                    </div>
                    <ul class="header__right__widget">
                        <li><span class="icon_search search-switch"></span></li>
                        <li><a href="#"><span class="icon_heart_alt"></span>
                            <div class="tip">2</div>
                        </a></li>
                        <li><a href="#"><span class="icon_bag_alt"></span>
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
                    <span>Shop</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->

<!-- Shop Section Begin -->
<section class="shop spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3">
                <div class="shop__sidebar">
                    <div class="sidebar__categories">
                        <div class="section-title">
                            <h4>Danh mục</h4>
                        </div>
                        <div class="categories__accordion">
                            <div class="accordion" id="accordionExample">
                                <div class="card">
                                    <div class="card-heading active">
                                        <a data-toggle="collapse" data-target="#collapseOne">Sản phẩm</a>
                                    </div>
                                    <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <ul >
                                                <li><a href="#" data-toggle="collapse" data-target="#collapseOne" >Đầm</a>
                                                    <ul >
                                                        <li><a href="#">Đầm suông</a></li>
                                                        <li><a href="#">Đầm dáng A</a></li>
                                                        <li><a href="#">Đầm ôm</a></li>
                                                        <li><a href="#">Đầm maxi</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#" data-toggle="collapse" data-target="#collapseOne">Áo sơ mi</a>
                                                    <ul >
                                                        <li><a href="#">Dài tay</a></li>
                                                        <li><a href="#">Ngắn tay</a></li>
                                                        <li><a href="#">Tay lỡ</a></li>
                                                        <li><a href="#">Áo kiểu</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">Áo dài</a></li>
                                                <li><a href="#">Quần<span class="caret"></span></a>
                                                    <ul >
                                                        <li><a href="#">Quần dài</a></li>
                                                        <li><a href="#">Quần short</a></li>
                                                        <li><a href="#">Quần lửng</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">Chân váy<span class="caret"></span></a>
                                                    <ul >
                                                        <li><a href="#">Chân váy xếp li</a></li>
                                                        <li><a href="#">Chân váy bút chì</a></li>
                                                        <li><a href="#">Chân váy chữ A</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">Áo len</a></li>
                                                <li><a href="#">Áo khoác<span class="caret"></span></a>
                                                    <ul >
                                                        <li><a href="#">Áo phao</a></li>
                                                        <li><a href="#">Áo vest</a></li>
                                                        <li><a href="#">Măng tô</a></li>
                                                        <li><a href="#">Áo khoác kiểu</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">Set bộ</a></li>
                                                <li><a href="#">Jumpsuit</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseTwo">Men</a>
                                    </div>
                                    <div id="collapseTwo" class="collapse" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <ul>
                                                <li><a href="#">Coats</a></li>
                                                <li><a href="#">Jackets</a></li>
                                                <li><a href="#">Dresses</a></li>
                                                <li><a href="#">Shirts</a></li>
                                                <li><a href="#">T-shirts</a></li>
                                                <li><a href="#">Jeans</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseThree">Kids</a>
                                    </div>
                                    <div id="collapseThree" class="collapse" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <ul>
                                                <li><a href="#">Coats</a></li>
                                                <li><a href="#">Jackets</a></li>
                                                <li><a href="#">Dresses</a></li>
                                                <li><a href="#">Shirts</a></li>
                                                <li><a href="#">T-shirts</a></li>
                                                <li><a href="#">Jeans</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseFour">Accessories</a>
                                    </div>
                                    <div id="collapseFour" class="collapse" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <ul>
                                                <li><a href="#">Coats</a></li>
                                                <li><a href="#">Jackets</a></li>
                                                <li><a href="#">Dresses</a></li>
                                                <li><a href="#">Shirts</a></li>
                                                <li><a href="#">T-shirts</a></li>
                                                <li><a href="#">Jeans</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseFive">Cosmetic</a>
                                    </div>
                                    <div id="collapseFive" class="collapse" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <ul>
                                                <li><a href="#">Coats</a></li>
                                                <li><a href="#">Jackets</a></li>
                                                <li><a href="#">Dresses</a></li>
                                                <li><a href="#">Shirts</a></li>
                                                <li><a href="#">T-shirts</a></li>
                                                <li><a href="#">Jeans</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sidebar__filter">
                        <div class="section-title">
                            <h4>Shop by price</h4>
                        </div>
                        <div class="filter-range-wrap">
                            <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                                 data-min="33" data-max="99"></div>
                            <div class="range-slider">
                                <div class="price-input">
                                    <p>Price:</p>
                                    <input type="text" id="minamount">
                                    <input type="text" id="maxamount">
                                </div>
                            </div>
                        </div>
                        <a href="#">Filter</a>
                    </div>
                    <div class="sidebar__sizes">
                        <div class="section-title">
                            <h4>Shop by size</h4>
                        </div>
                        <div class="size__list">
                            <label for="xxs">
                                xxs
                                <input type="checkbox" id="xxs">
                                <span class="checkmark"></span>
                            </label>
                            <label for="xs">
                                xs
                                <input type="checkbox" id="xs">
                                <span class="checkmark"></span>
                            </label>
                            <label for="xss">
                                xs-s
                                <input type="checkbox" id="xss">
                                <span class="checkmark"></span>
                            </label>
                            <label for="s">
                                s
                                <input type="checkbox" id="s">
                                <span class="checkmark"></span>
                            </label>
                            <label for="m">
                                m
                                <input type="checkbox" id="m">
                                <span class="checkmark"></span>
                            </label>
                            <label for="ml">
                                m-l
                                <input type="checkbox" id="ml">
                                <span class="checkmark"></span>
                            </label>
                            <label for="l">
                                l
                                <input type="checkbox" id="l">
                                <span class="checkmark"></span>
                            </label>
                            <label for="xl">
                                xl
                                <input type="checkbox" id="xl">
                                <span class="checkmark"></span>
                            </label>
                        </div>
                    </div>
                    <div class="sidebar__color">
                        <div class="section-title">
                            <h4>Shop by size</h4>
                        </div>
                        <div class="size__list color__list">
                            <label for="black">
                                Blacks
                                <input type="checkbox" id="black">
                                <span class="checkmark"></span>
                            </label>
                            <label for="whites">
                                Whites
                                <input type="checkbox" id="whites">
                                <span class="checkmark"></span>
                            </label>
                            <label for="reds">
                                Reds
                                <input type="checkbox" id="reds">
                                <span class="checkmark"></span>
                            </label>
                            <label for="greys">
                                Greys
                                <input type="checkbox" id="greys">
                                <span class="checkmark"></span>
                            </label>
                            <label for="blues">
                                Blues
                                <input type="checkbox" id="blues">
                                <span class="checkmark"></span>
                            </label>
                            <label for="beige">
                                Beige Tones
                                <input type="checkbox" id="beige">
                                <span class="checkmark"></span>
                            </label>
                            <label for="greens">
                                Greens
                                <input type="checkbox" id="greens">
                                <span class="checkmark"></span>
                            </label>
                            <label for="yellows">
                                Yellows
                                <input type="checkbox" id="yellows">
                                <span class="checkmark"></span>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-9">
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg"
                                 data-setbg="<%=request.getContextPath()%>/img/shop/shop-1.jpg">
                                <div class="label new">New</div>
                                <ul class="product__hover">
                                    <li><a href="<%=request.getContextPath()%>/img/shop/shop-1.jpg" class="image-popup"><span
                                            class="arrow_expand"></span></a></li>
                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Furry hooded parka</a></h6>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product__price">$ 59.0</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg"
                                 data-setbg="<%=request.getContextPath()%>/img/shop/shop-2.jpg">
                                <ul class="product__hover">
                                    <li><a href="<%=request.getContextPath()%>/img/shop/shop-2.jpg" class="image-popup"><span
                                            class="arrow_expand"></span></a></li>
                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Flowy striped skirt</a></h6>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product__price">$ 49.0</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg"
                                 data-setbg="<%=request.getContextPath()%>/img/shop/shop-3.jpg">
                                <ul class="product__hover">
                                    <li><a href="<%=request.getContextPath()%>/img/shop/shop-3.jpg" class="image-popup"><span
                                            class="arrow_expand"></span></a></li>
                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Croc-effect bag</a></h6>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product__price">$ 59.0</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/shop/shop-4.jpg">
                                <ul class="product__hover">
                                    <li><a href="<%=request.getContextPath()%>/img/shop/shop-4.jpg" class="image-popup"><span
                                            class="arrow_expand"></span></a></li>
                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Dark wash Xavi jeans</a></h6>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product__price">$ 59.0</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="product__item sale">
                            <div class="product__item__pic set-bg" data-setbg="img/shop/shop-5.jpg">
                                <div class="label">Sale</div>
                                <ul class="product__hover">
                                    <li><a href="<%=request.getContextPath()%>/img/shop/shop-5.jpg" class="image-popup"><span
                                            class="arrow_expand"></span></a></li>
                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Ankle-cuff sandals</a></h6>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product__price">$ 49.0 <span>$ 59.0</span></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/shop/shop-6.jpg">
                                <ul class="product__hover">
                                    <li><a href="<%=request.getContextPath()%>/img/shop/shop-6.jpg" class="image-popup"><span
                                            class="arrow_expand"></span></a></li>
                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Contrasting sunglasses</a></h6>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product__price">$ 59.0</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/shop/shop-7.jpg">
                                <ul class="product__hover">
                                    <li><a href="<%=request.getContextPath()%>/img/shop/shop-7.jpg" class="image-popup"><span
                                            class="arrow_expand"></span></a></li>
                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Circular pendant earrings</a></h6>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product__price">$ 59.0</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/shop/shop-8.jpg">
                                <div class="label stockout stockblue">Out Of Stock</div>
                                <ul class="product__hover">
                                    <li><a href="<%=request.getContextPath()%>/img/shop/shop-8.jpg" class="image-popup"><span
                                            class="arrow_expand"></span></a></li>
                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Cotton T-Shirt</a></h6>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product__price">$ 59.0</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="product__item sale">
                            <div class="product__item__pic set-bg" data-setbg="img/shop/shop-9.jpg">
                                <div class="label">Sale</div>
                                <ul class="product__hover">
                                    <li><a href="<%=request.getContextPath()%>/img/shop/shop-9.jpg" class="image-popup"><span
                                            class="arrow_expand"></span></a></li>
                                    <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                    <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Water resistant zips backpack</a></h6>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product__price">$ 49.0 <span>$ 59.0</span></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 text-center">
                        <div class="pagination__option">
                            <a href="#">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#"><i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Shop Section End -->

<!-- Instagram Begin -->
<div class="instagram">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                <div class="instagram__item set-bg"
                     data-setbg="<%=request.getContextPath()%>/img/instagram/insta-1.jpg">
                    <div class="instagram__text">
                        <i class="fa fa-instagram"></i>
                        <a href="#">@ ashion_shop</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                <div class="instagram__item set-bg"
                     data-setbg="<%=request.getContextPath()%>/img/instagram/insta-2.jpg">
                    <div class="instagram__text">
                        <i class="fa fa-instagram"></i>
                        <a href="#">@ ashion_shop</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                <div class="instagram__item set-bg"
                     data-setbg="<%=request.getContextPath()%>/img/instagram/insta-3.jpg">
                    <div class="instagram__text">
                        <i class="fa fa-instagram"></i>
                        <a href="#">@ ashion_shop</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                <div class="instagram__item set-bg"
                     data-setbg="<%=request.getContextPath()%>/img/instagram/insta-4.jpg">
                    <div class="instagram__text">
                        <i class="fa fa-instagram"></i>
                        <a href="#">@ ashion_shop</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                <div class="instagram__item set-bg"
                     data-setbg="<%=request.getContextPath()%>/img/instagram/insta-5.jpg">
                    <div class="instagram__text">
                        <i class="fa fa-instagram"></i>
                        <a href="#">@ ashion_shop</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                <div class="instagram__item set-bg"
                     data-setbg="<%=request.getContextPath()%>/img/instagram/insta-6.jpg">
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