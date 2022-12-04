<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=gmv_din_pro">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/fontawesome.min.css">
    <script src="https://kit.fontawesome.com/df43e621c1.js" crossorigin="anonymous"></script>

    <!-- Font awesome -->
    <link href="<%=request.getContextPath()%>/css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="<%=request.getContextPath()%>/css/bootstrap.css" rel="stylesheet">
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="<%=request.getContextPath()%>/css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <!-- Product view slider -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/jquery.simpleLens.css">
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/slick.css">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/nouislider.css">
    <!-- Theme color -->
    <link id="switcher" href="<%=request.getContextPath()%>/css/theme-color/default-theme.css" rel="stylesheet">
    <!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->
    <!-- Top Slider CSS -->
    <link href="<%=request.getContextPath()%>/css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">

    <!-- Main style sheet -->
    <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<!-- SCROLL TOP BUTTON -->
<a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
<!-- END SCROLL TOP BUTTON -->

<!-- Start header section -->
<header id="aa-header">
    <!-- start header top  -->
    <div class="aa-header-top">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="aa-header-top-area">
                        <!-- start header top left -->
                        <div class="aa-header-top-left">
                            <!-- start language -->
                            <div class="aa-language">
                                <div class="dropdown">
                                    <a class="btn dropdown-toggle" href="#" type="button" id="dropdownMenu1"
                                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                        <img src="<%=request.getContextPath()%>/img/flag/english.jpg" alt="english flag">ENGLISH
                                        <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                        <li><a href="#"><img src="<%=request.getContextPath()%>/img/flag/french.jpg" alt="">FRENCH</a></li>
                                        <li><a href="#"><img src="<%=request.getContextPath()%>/img/flag/english.jpg" alt="">ENGLISH</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- / language -->

                            <!-- start currency -->
                            <div class="aa-currency">
                                <div class="dropdown">
                                    <a class="btn dropdown-toggle" href="#" type="button" id="dropdownMenu1"
                                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                        <i class="fa fa-usd"></i>USD
                                        <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                        <li><a href="#"><i class="fa fa-euro"></i>EURO</a></li>
                                        <li><a href="#"><i class="fa fa-jpy"></i>YEN</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- / currency -->
                            <!-- start cellphone -->
                            <div class="cellphone hidden-xs">
                                <p><span class="fa fa-phone"></span>00-62-658-658</p>
                            </div>
                            <!-- / cellphone -->
                        </div>
                        <!-- / header top left -->
                        <div class="aa-header-top-right">
                            <ul class="aa-head-top-nav-right">
                                <li class="hidden-xs"><a href="<%=request.getContextPath()%>/views/User/wishlistPro.jsp">Wishlist</a></li>
                                <li class="hidden-xs"><a href="<%=request.getContextPath()%>/views/User/cartPro.jsp">My Cart</a></li>
                                <li class="hidden-xs"><a href="<%=request.getContextPath()%>/views/User/checkout.jsp">Checkout</a></li>
                                <li><a style="display: ${sessionScope.userLogin!=null?'none':''} " href="<%=request.getContextPath()%>/views/User/register.jsp">Register</a></li>
                                <li><a style="display: ${sessionScope.userLogin!=null?'none':''}" href="" data-toggle="modal" data-target="#login-modal">Login</a></li>
                                <li><a style="display: ${sessionScope.userLogin!=null?'':'none'}" href="" data-toggle="modal" data-target="#logout-modal">Xin chào ${sessionScope.userLogin.fullName} </a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / header top  -->

    <!-- start header bottom  -->
    <div class="aa-header-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="aa-header-bottom-area">
                        <!-- logo  -->
                        <div class="aa-logo">
                            <!-- Text based logo -->
                            <a href="<%=request.getContextPath()%>/views/User/home.jsp">
                                <p>NEM<strong>FASHION</strong> <span>THỜI TRANG CÔNG SỞ</span></p>
                            </a>
                        </div>
                        <!-- / logo  -->
                        <!-- cart box -->
                        <div class="aa-cartbox">
                            <a class="aa-cart-link" href="<%=request.getContextPath()%>/views/User/cartPro.jsp">
                                <span class="fa fa-shopping-basket"></span>
                                <span class="aa-cart-title">Giỏ hàng</span>
                                <span class="aa-cart-notify">2</span>
                            </a>
                            <div class="aa-cartbox-summary">
                                <ul>
                                    <li>
                                        <a class="aa-cartbox-img" href="#"><img src="<%=request.getContextPath()%>/img/woman-small-2.jpg"
                                                                                alt="img"></a>
                                        <div class="aa-cartbox-info">
                                            <h4><a href="#">Product Name</a></h4>
                                            <p>1 x $250</p>
                                        </div>
                                        <a class="aa-remove-product" href="#"><span class="fa fa-times"></span></a>
                                    </li>
                                    <li>
                                        <a class="aa-cartbox-img" href="#"><img src="<%=request.getContextPath()%>/img/woman-small-1.jpg"
                                                                                alt="img"></a>
                                        <div class="aa-cartbox-info">
                                            <h4><a href="#">Product Name</a></h4>
                                            <p>1 x $250</p>
                                        </div>
                                        <a class="aa-remove-product" href="#"><span class="fa fa-times"></span></a>
                                    </li>
                                    <li>
                      <span class="aa-cartbox-total-title">
                        Total
                      </span>
                                        <span class="aa-cartbox-total-price">
                        $500
                      </span>
                                    </li>
                                </ul>
                                <a class="aa-cartbox-checkout aa-primary-btn" href="checkout.jsp">Checkout</a>
                            </div>
                        </div>

                        <!-- / cart box -->


                        <!-- search box -->
                        <div class="aa-search-box">
                            <form action="">
                                <input type="text" name="" id="" placeholder="Search here ex. 'man' ">
                                <button type="submit"><span class="fa fa-search"></span></button>
                            </form>
                        </div>
                        <!-- / search box -->

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / header bottom  -->
</header>
<!-- / header section -->
<!-- menu -->
<section id="menu">
    <div class="container">
        <div class="menu-area">
            <!-- Navbar -->
            <div class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="navbar-collapse collapse">
                    <!-- Left nav -->
                    <ul class="nav navbar-nav">
                        <li><a href="<%=request.getContextPath()%>/views/User/productAll.jsp">SẢN PHẨM <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Đầm<span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Đầm suông</a></li>
                                        <li><a href="#">Đầm dáng A</a></li>
                                        <li><a href="#">Đầm ôm</a></li>
                                        <li><a href="#">Đầm maxi</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Áo sơ mi<span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Dài tay</a></li>
                                        <li><a href="#">Ngắn tay</a></li>
                                        <li><a href="#">Tay lỡ</a></li>
                                        <li><a href="#">Áo kiểu</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Áo dài</a></li>
                                <li><a href="#">Quần<span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Quần dài</a></li>
                                        <li><a href="#">Quần short</a></li>
                                        <li><a href="#">Quần lửng</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Chân váy<span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Chân váy xếp li</a></li>
                                        <li><a href="#">Chân váy bút chì</a></li>
                                        <li><a href="#">Chân váy chữ A</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Áo len</a></li>
                                <li><a href="#">Áo khoác<span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Áo phao</a></li>
                                        <li><a href="#">Áo vest</a></li>
                                        <li><a href="#">Măng tô</a></li>
                                        <li><a href="#">Áo khoác kiểu</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Set bộ</a></li>
                                <li><a href="#">Jumpsuit</a></li>
                            </ul>
                        </li>
                        <li><a href="#">SẢN PHẨM MỚI </a></li>
                        <li><a href="#">BỘ SƯU TẬP <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">PARTY LADIES</a></li>
                                <li><a href="#">WINTER FLAME</a></li>
                                <li><a href="#">AUTUMN MELODY</a></li>
                            </ul>
                        </li>
                        <li><a href="#">NEM ONLINE </a></li>
                        <li><a href="blog-archive.jsp">SALE <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="blog-archive.jsp">Sale upto 70%</a></li>
                                <li><a href="blog-archive-2.jsp">Đồng giá chỉ từ 149k</a></li>
                            </ul>
                        </li>
                        <li><a href="#">SẢN PHẨM NHẬP KHẨU NHẬT BẢN</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>
    </div>
</section>
<!-- / menu -->

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="<%=request.getContextPath()%>/js/bootstrap.js"></script>
<!-- SmartMenus jQuery plugin -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.smartmenus.js"></script>
<!-- SmartMenus jQuery Bootstrap Addon -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.smartmenus.bootstrap.js"></script>
<!-- To Slider JS -->
<script src="<%=request.getContextPath()%>/js/sequence.js"></script>
<script src="<%=request.getContextPath()%>/js/sequence-theme.modern-slide-in.js"></script>
<!-- Product view slider -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.simpleGallery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.simpleLens.js"></script>
<!-- slick slider -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/slick.js"></script>
<!-- Price picker slider -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/nouislider.js"></script>
<!-- Custom js -->
<script src="<%=request.getContextPath()%>/js/custom.js"></script>

</body>
</html>