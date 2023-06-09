<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
    <meta name="author" content="AdminKit">
    <meta name="keywords"
          content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/img3/icons/icon-48x48.png"/>

    <link rel="canonical" href="https://demo-basic.adminkit.io/"/>

    <link href="<%=request.getContextPath()%>/css3/app.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">

    <meta name="description" content="Ashion Template">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/img3/icons/icon-48x48.png"/>

    <link rel="canonical" href="https://demo-basic.adminkit.io/"/>

    <title>AdminKit Demo - Bootstrap 5 Admin Template</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

    <link href="<%=request.getContextPath()%>/css3/app.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="<%=request.getContextPath()%>/ckeditor/ckeditor.js"></script>

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
<div class="wrapper">
    <nav id="sidebar" class="sidebar js-sidebar">
        <div class="sidebar-content js-simplebar">
            <a class="sidebar-brand" href="adminHome.jsp">
                <span class="align-middle">AdminKit</span>
            </a>

            <ul class="sidebar-nav">
                <li class="sidebar-header">
                    Pages
                </li>
                <li class="sidebar-item ">
                    <a class="sidebar-link" href="<%=request.getContextPath()%>/views/Admin/adminHome.jsp">
                        <i class="align-middle" data-feather="grid"></i> <span class="align-middle">Dashboard</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link" href="<%=request.getContextPath()%>/CatalogServlet">
                        <i class="align-middle" data-feather="grid"></i> <span class="align-middle">Category</span>
                    </a>
                </li>
                <li class="sidebar-item ">
                    <a class="sidebar-link" href="<%=request.getContextPath()%>/SizeServlet">
                        <i class="align-middle" data-feather="grid"></i> <span class="align-middle">Size</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link" href="<%=request.getContextPath()%>/ColorServlet">
                        <i class="align-middle" data-feather="grid"></i> <span class="align-middle">Color</span>
                    </a>
                </li>
                <li class="sidebar-item active">
                    <a class="sidebar-link" href="<%=request.getContextPath()%>/ProductServlet">
                        <i class="align-middle" data-feather="square"></i> <span class="align-middle">Product</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link" href="<%=request.getContextPath()%>/views/Admin/user.jsp">
                        <i class="align-middle" data-feather="user"></i> <span class="align-middle">User</span>
                    </a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="main">
        <nav class="navbar navbar-expand navbar-light navbar-bg">
            <a class="sidebar-toggle js-sidebar-toggle mx-2">
                <i class="hamburger align-self-center"></i>
            </a>

            <div class="navbar-collapse collapse">
                <ul class="navbar-nav navbar-align">
                    <li class="nav-item dropdown">
                        <a class="nav-icon dropdown-toggle" href="#" id="alertsDropdown" data-bs-toggle="dropdown">
                            <div class="position-relative">
                                <i class="align-middle" data-feather="bell"></i>
                            </div>
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end py-0"
                             aria-labelledby="alertsDropdown">
                            <div class="dropdown-menu-header">
                                4 New Notifications
                            </div>
                            <div class="list-group">
                                <a href="#" class="list-group-item">
                                    <div class="row g-0 align-items-center">
                                        <div class="col-2">
                                            <i class="text-danger" data-feather="alert-circle"></i>
                                        </div>
                                        <div class="col-10">
                                            <div class="text-dark">Update completed</div>
                                            <div class="text-muted small mt-1">Restart server 12 to complete the
                                                update.
                                            </div>
                                            <div class="text-muted small mt-1">30m ago</div>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="list-group-item">
                                    <div class="row g-0 align-items-center">
                                        <div class="col-2">
                                            <i class="text-warning" data-feather="bell"></i>
                                        </div>
                                        <div class="col-10">
                                            <div class="text-dark">Lorem ipsum</div>
                                            <div class="text-muted small mt-1">Aliquam ex eros, imperdiet vulputate
                                                hendrerit et.
                                            </div>
                                            <div class="text-muted small mt-1">2h ago</div>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="list-group-item">
                                    <div class="row g-0 align-items-center">
                                        <div class="col-2">
                                            <i class="text-primary" data-feather="home"></i>
                                        </div>
                                        <div class="col-10">
                                            <div class="text-dark">Login from 192.186.1.8</div>
                                            <div class="text-muted small mt-1">5h ago</div>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="list-group-item">
                                    <div class="row g-0 align-items-center">
                                        <div class="col-2">
                                            <i class="text-success" data-feather="user-plus"></i>
                                        </div>
                                        <div class="col-10">
                                            <div class="text-dark">New connection</div>
                                            <div class="text-muted small mt-1">Christina accepted your request.</div>
                                            <div class="text-muted small mt-1">14h ago</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="dropdown-menu-footer">
                                <a href="#" class="text-muted">Show all notifications</a>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-icon dropdown-toggle" href="#" id="messagesDropdown" data-bs-toggle="dropdown">
                            <div class="position-relative">
                                <i class="align-middle" data-feather="message-square"></i>
                            </div>
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end py-0"
                             aria-labelledby="messagesDropdown">
                            <div class="dropdown-menu-header">
                                <div class="position-relative">
                                    4 New Messages
                                </div>
                            </div>
                            <div class="list-group">
                                <a href="#" class="list-group-item">
                                    <div class="row g-0 align-items-center">
                                        <div class="col-2">
                                            <img src="<%=request.getContextPath()%>/img3/avatars/avatar-5.jpg"
                                                 class="avatar img-fluid rounded-circle"
                                                 alt="Vanessa Tucker">
                                        </div>
                                        <div class="col-10 ps-2">
                                            <div class="text-dark">Vanessa Tucker</div>
                                            <div class="text-muted small mt-1">Nam pretium turpis et arcu. Duis arcu
                                                tortor.
                                            </div>
                                            <div class="text-muted small mt-1">15m ago</div>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="list-group-item">
                                    <div class="row g-0 align-items-center">
                                        <div class="col-2">
                                            <img src="<%=request.getContextPath()%>/img3/avatars/avatar-2.jpg"
                                                 class="avatar img-fluid rounded-circle"
                                                 alt="William Harris">
                                        </div>
                                        <div class="col-10 ps-2">
                                            <div class="text-dark">William Harris</div>
                                            <div class="text-muted small mt-1">Curabitur ligula sapien euismod vitae.
                                            </div>
                                            <div class="text-muted small mt-1">2h ago</div>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="list-group-item">
                                    <div class="row g-0 align-items-center">
                                        <div class="col-2">
                                            <img src="<%=request.getContextPath()%>/img3/avatars/avatar-4.jpg"
                                                 class="avatar img-fluid rounded-circle"
                                                 alt="Christina Mason">
                                        </div>
                                        <div class="col-10 ps-2">
                                            <div class="text-dark">Christina Mason</div>
                                            <div class="text-muted small mt-1">Pellentesque auctor neque nec urna.</div>
                                            <div class="text-muted small mt-1">4h ago</div>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="list-group-item">
                                    <div class="row g-0 align-items-center">
                                        <div class="col-2">
                                            <img src="<%=request.getContextPath()%>/img3/avatars/avatar-3.jpg"
                                                 class="avatar img-fluid rounded-circle"
                                                 alt="Sharon Lessman">
                                        </div>
                                        <div class="col-10 ps-2">
                                            <div class="text-dark">Sharon Lessman</div>
                                            <div class="text-muted small mt-1">Aenean tellus metus, bibendum sed,
                                                posuere ac, mattis non.
                                            </div>
                                            <div class="text-muted small mt-1">5h ago</div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="dropdown-menu-footer">
                                <a href="#" class="text-muted">Show all messages</a>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-icon dropdown-toggle d-inline-block d-sm-none" href="#" data-bs-toggle="dropdown">
                            <i class="align-middle" data-feather="settings"></i>
                        </a>

                        <a class="nav-link dropdown-toggle d-none d-sm-inline-block" href="#" data-bs-toggle="dropdown">
                            <img src="<%=request.getContextPath()%>/img3/avatars/avatar.jpg"
                                 class="avatar img-fluid rounded me-1" alt="Charles Hall"/>
                            <span class="text-dark">Chris Hung</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end">
                            <a class="dropdown-item" href="#"><i class="align-middle me-1"
                                                                 data-feather="user"></i> Profile</a>
                            <a class="dropdown-item" href="#"><i class="align-middle me-1" data-feather="pie-chart"></i>
                                Analytics</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="adminHome.jsp"><i class="align-middle me-1"
                                                                             data-feather="settings"></i> Settings &
                                Privacy</a>
                            <a class="dropdown-item" href="#"><i class="align-middle me-1"
                                                                 data-feather="help-circle"></i> Help Center</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Log out</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>

        <main class="content">
            <!-- Product Details Section Begin -->
            <section class="product-details spad">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="product__details__pic">
                                <div class="product__details__pic__left product__thumb nice-scroll">
                                    <c:forEach items="${pro.listImage}" var="imageLink">
                                        <img src="<%=request.getContextPath()%>/imagesPro/${imageLink}" alt="">
                                    </c:forEach>
                                </div>
                                <div class="product__details__slider__content">
                                    <div class="product__details__pic__slider owl-carousel">
                                        <img src="<%=request.getContextPath()%>/imagesPro/${pro.productImage}" alt="">
                                        <%--                                        <c:forEach items="${pro.listImage}" var="imageLink">--%>
                                        <%--                                            <img src="<%=request.getContextPath()%>/imagesPro/${imageLink}" alt="">--%>
                                        <%--                                        </c:forEach>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <input type="hidden" name="productId" value="${pro.productId}">
                            <div class="input-group mb-3">
                                    <span class="input-group-text" id="productName"><i
                                            class="bi bi-pencil"></i></span>
                                <input style="" type="text" name="productName" class="form-control"
                                       value="${pro.productName}"
                                       aria-label="Sizing example input"
                                       aria-describedby="inputCatalogName" readonly>
                            </div>
                            <div class="input-group mb-3">
                                    <span class="input-group-text" id="productTitle"><i
                                            class="bi bi-tags"></i></span>
                                <input style="" type="text" name="productTitle" class="form-control"
                                       value="${pro.titleProduct}"
                                       aria-label="Sizing example input"
                                       aria-describedby="inputCatalogName" readonly>
                            </div>
                            <div class="input-group mb-3">
                                    <span class="input-group-text" id="productDescription"><i
                                            class="bi bi-tags"></i></span>
                                <input style="" type="text" name="productDescription" class="form-control"
                                       value="${pro.productDescriptions}"
                                       aria-label="Sizing example input"
                                       aria-describedby="inputCatalogName" readonly>
                            </div>
                            <div class="input-group mb-3">
                                    <span class="input-group-text" id="productCatPa"><i
                                            class="bi bi-tags"></i></span>
                                <input style="" type="text" name="productCatPa" class="form-control"
                                       value="${pro.catalogName}"
                                       aria-label="Sizing example input"
                                       aria-describedby="inputCatalogName" readonly>
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="createdDate"><i
                                        class="bi bi-calendar2-check"></i></span>
                                <input style="" type="text" name="createdDate" class="form-control"
                                       aria-label="Sizing example input"
                                       aria-describedby="inputCatalogName" value="${pro.createDate}" readonly>
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="proStatus"><i
                                        class="bi bi-calendar2-check"></i></span>
                                <input style="" type="text" name="proStatus" class="form-control"
                                       aria-label="Sizing example input"
                                       aria-describedby="inputCatalogName"
                                       value="${pro.productStatus?"Hoạt động":"Không hoạt động"}" readonly>
                            </div>
                            <a href="<%=request.getContextPath()%>/ProductServlet?action=updatePro&&productId=${pro.productId}">
                                <button type="button" class="btn btn-warning" data-bs-toggle="modal"
                                        data-bs-target="#updateProModal"
                                        data-bs-whatever="${pro.productId}" id="updateProMainInfo">Update
                                </button>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Product Details Section End -->
            <div class="content">
                <div class="classifiedList">
                    <div class="container-fluid" style="width: 40%; margin-right: 30px; margin-bottom: 10px">
                        <form class="d-flex" role="search" action="<%=request.getContextPath()%>/ProductServlet">
                            <input type="hidden" id="productSearchId" name="productSearchId" value="${pro.productId}">
                            <input class="form-control me-2 fst-italic" type="text"
                                   placeholder="Enter size name or color name... "
                                   aria-label="Search" name="searchName">
                            <input class="btn btn-outline-success" type="submit" value="SearchDetail" name="action"/>
                        </form>
                    </div>
                    <div>
                        <table class="table ">
                            <tr>
                                <th>Color</th>
                                <th>Size</th>
                                <th>Giá nhập</th>
                                <th>Giá xuất</th>
                                <th>Số lượng</th>
                                <th colspan="2">Action</th>
                            </tr>
                            <c:forEach items="${pro.listProductDetail}" var="detail">
                                <tr>
                                    <td>${detail.color.colorName}</td>
                                    <td>${detail.size.sizeName}</td>
                                    <td>${detail.importPrice}</td>
                                    <td>${detail.exportPrice}</td>
                                    <td>${detail.quantity}</td>
                                    <td>
                                        <input type="hidden" id="productId" value="${pro.productId}">
                                        <input type="hidden" id="productDetailId" value="${detail.productDetailId}">
                                        <button type="button" class="btn btn-warning" data-bs-toggle="modal"
                                                data-bs-target="#updateDetailProModal"
                                                data-bs-whatever="${detail.productDetailId}" id="updateProDetail">Update
                                        </button>
                                            <%---------------------------------modal update-------------------------------%>
                                        <div class="modal fade" id="updateDetailProModal" tabindex="-1"
                                             aria-labelledby="updateDetailProLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="updateDetailProLabel">Update
                                                            Product Detail</h5>
                                                        <button type="button" class="btn-close"
                                                                data-bs-dismiss="modal"
                                                                aria-label="Close"></button>
                                                    </div>
                                                    <form action="<%=request.getContextPath()%>/ProductServlet"
                                                          method="post">
                                                        <div class="modal-body">
                                                            <div class="input-group mb-3">
                                                                <input type="hidden" class="form-control"
                                                                       aria-label="sizeName"
                                                                       aria-describedby="basic-addon1"
                                                                       name="proDetailIdUpdate" id="proDetailIdUpdate">
                                                            </div>
                                                            <div class="input-group mb-3">
                                                                <span class="input-group-text">Color</span>
                                                                <input type="text" class="form-control"
                                                                       aria-label="catalogName"
                                                                       aria-describedby="basic-addon1"
                                                                       name="colorDetailPro" id="colorProUpdate"
                                                                       readonly>
                                                            </div>
                                                            <div class="input-group mb-3">
                                                                <span class="input-group-text">Size</span>
                                                                <input type="text" class="form-control"
                                                                       aria-label="catalogName"
                                                                       aria-describedby="basic-addon1"
                                                                       name="sizeDetailPro" id="sizeProUpdate"
                                                                       readonly>
                                                            </div>
                                                            <div class="input-group mb-3">
                                                    <span class="input-group-text"
                                                    >Giá nhập</span>
                                                                <input type="number" class="form-control"
                                                                       placeholder="Nhập giá nhập"
                                                                       aria-label="catalogDescription"
                                                                       aria-describedby="basic-addon2"
                                                                       name="importPricePro" id="importPriceUpdate">
                                                            </div>
                                                            <div class="input-group mb-3">
                                                    <span class="input-group-text"
                                                    >Giá xuất</span>
                                                                <input type="number" class="form-control"
                                                                       placeholder="Nhập giá nhập"
                                                                       aria-label="catalogDescription"
                                                                       aria-describedby="basic-addon2"
                                                                       name="exportPricePro" id="exportPriceUpdate">
                                                            </div>
                                                            <div class="input-group mb-3">
                                                    <span class="input-group-text"
                                                    >Số lượng</span>
                                                                <input type="number" class="form-control"
                                                                       placeholder="Nhập số lượng"
                                                                       aria-label="catalogDescription"
                                                                       aria-describedby="basic-addon2"
                                                                       name="quantityPro" id="quantityUpdate">
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary"
                                                                        data-bs-dismiss="modal">
                                                                    Close
                                                                </button>
                                                                <input type="submit" name="action" value="Update"
                                                                       class="btn btn-primary"/>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>

                                            <%---------------------------modal delete---------------------------------%>
                                        <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                                data-bs-target="#exampleModal" id="deleteProDetail"
                                                data-bs-whatever1="${detail.color.colorName}"
                                                data-bs-whatever2="${detail.size.sizeName}">Delete
                                        </button>
                                        <div class="modal fade" id="exampleModal" tabindex="-1"
                                             aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel">New
                                                            message</h5>
                                                        <button type="button" class="btn-close"
                                                                data-bs-dismiss="modal"
                                                                aria-label="Close"></button>
                                                    </div>
                                                    <form action="<%=request.getContextPath()%>/ProductServlet">
                                                        <div class="modal-body">
                                                            <div class="mb-3">
                                                                <input type="text" class="form-control"
                                                                       id="recipient-name" readonly>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary"
                                                                    data-bs-dismiss="modal">Close
                                                            </button>
                                                            <input type="submit" class="btn btn-danger"
                                                                   value="Delete"
                                                                   name="action"/>
                                                            <input type="hidden" name="proDelId" id="proDelId">
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                            <%--                                            -----------------------end modal delete-------------------%>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>

                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#updateProModal"
                                data-bs-whatever="${pro.productId}" id=""> Add new color, size
                        </button>

                    </div>
                </div>
            </div>
        </main>


        <footer class="footer">
            <div class="container-fluid">
                <div class="row text-muted">
                    <div class="col-6 text-start">
                        <p class="mb-0">
                            <a class="text-muted" href="" target="_blank"><strong>DemoAdminKit</strong></a>
                            - <a class="text-muted" href="" target="_blank"><strong>Bootstrap Admin
                            Template</strong></a> &copy;
                        </p>
                    </div>
                    <div class="col-6 text-end">
                        <ul class="list-inline">
                            <li class="list-inline-item">
                                <a class="text-muted" href="#" target="_blank">Support</a>
                            </li>
                            <li class="list-inline-item">
                                <a class="text-muted" href="#" target="_blank">Help Center</a>
                            </li>
                            <li class="list-inline-item">
                                <a class="text-muted" href="#" target="_blank">Privacy</a>
                            </li>
                            <li class="list-inline-item">
                                <a class="text-muted" href="#" target="_blank">Terms</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
    </div>
</div>


<script src="<%=request.getContextPath()%>/js3/app.js"></script>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        var ctx = document.getElementById("chartjs-dashboard-line").getContext("2d");
        var gradient = ctx.createLinearGradient(0, 0, 0, 225);
        gradient.addColorStop(0, "rgba(215, 227, 244, 1)");
        gradient.addColorStop(1, "rgba(215, 227, 244, 0)");
        // Line chart
        new Chart(document.getElementById("chartjs-dashboard-line"), {
            type: "line",
            data: {
                labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                datasets: [{
                    label: "Sales ($)",
                    fill: true,
                    backgroundColor: gradient,
                    borderColor: window.theme.primary,
                    data: [
                        2115,
                        1562,
                        1584,
                        1892,
                        1587,
                        1923,
                        2566,
                        2448,
                        2805,
                        3438,
                        2917,
                        3327
                    ]
                }]
            },
            options: {
                maintainAspectRatio: false,
                legend: {
                    display: false
                },
                tooltips: {
                    intersect: false
                },
                hover: {
                    intersect: true
                },
                plugins: {
                    filler: {
                        propagate: false
                    }
                },
                scales: {
                    xAxes: [{
                        reverse: true,
                        gridLines: {
                            color: "rgba(0,0,0,0.0)"
                        }
                    }],
                    yAxes: [{
                        ticks: {
                            stepSize: 1000
                        },
                        display: true,
                        borderDash: [3, 3],
                        gridLines: {
                            color: "rgba(0,0,0,0.0)"
                        }
                    }]
                }
            }
        });
    });
</script>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        // Pie chart
        new Chart(document.getElementById("chartjs-dashboard-pie"), {
            type: "pie",
            data: {
                labels: ["Chrome", "Firefox", "IE"],
                datasets: [{
                    data: [4306, 3801, 1689],
                    backgroundColor: [
                        window.theme.primary,
                        window.theme.warning,
                        window.theme.danger
                    ],
                    borderWidth: 5
                }]
            },
            options: {
                responsive: !window.MSInputMethodContext,
                maintainAspectRatio: false,
                legend: {
                    display: false
                },
                cutoutPercentage: 75
            }
        });
    });
</script>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        // Bar chart
        new Chart(document.getElementById("chartjs-dashboard-bar"), {
            type: "bar",
            data: {
                labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                datasets: [{
                    label: "This year",
                    backgroundColor: window.theme.primary,
                    borderColor: window.theme.primary,
                    hoverBackgroundColor: window.theme.primary,
                    hoverBorderColor: window.theme.primary,
                    data: [54, 67, 41, 55, 62, 45, 55, 73, 60, 76, 48, 79],
                    barPercentage: .75,
                    categoryPercentage: .5
                }]
            },
            options: {
                maintainAspectRatio: false,
                legend: {
                    display: false
                },
                scales: {
                    yAxes: [{
                        gridLines: {
                            display: false
                        },
                        stacked: false,
                        ticks: {
                            stepSize: 20
                        }
                    }],
                    xAxes: [{
                        stacked: false,
                        gridLines: {
                            color: "transparent"
                        }
                    }]
                }
            }
        });
    });
</script>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        var markers = [{
            coords: [31.230391, 121.473701],
            name: "Shanghai"
        },
            {
                coords: [28.704060, 77.102493],
                name: "Delhi"
            },
            {
                coords: [6.524379, 3.379206],
                name: "Lagos"
            },
            {
                coords: [35.689487, 139.691711],
                name: "Tokyo"
            },
            {
                coords: [23.129110, 113.264381],
                name: "Guangzhou"
            },
            {
                coords: [40.7127837, -74.0059413],
                name: "New York"
            },
            {
                coords: [34.052235, -118.243683],
                name: "Los Angeles"
            },
            {
                coords: [41.878113, -87.629799],
                name: "Chicago"
            },
            {
                coords: [51.507351, -0.127758],
                name: "London"
            },
            {
                coords: [40.416775, -3.703790],
                name: "Madrid "
            }
        ];
        var map = new jsVectorMap({
            map: "world",
            selector: "#world_map",
            zoomButtons: true,
            markers: markers,
            markerStyle: {
                initial: {
                    r: 9,
                    strokeWidth: 7,
                    stokeOpacity: .4,
                    fill: window.theme.primary
                },
                hover: {
                    fill: window.theme.primary,
                    stroke: window.theme.primary
                }
            },
            zoomOnScroll: false
        });
        window.addEventListener("resize", () => {
            map.updateSize();
        });
    });
</script>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        var date = new Date(Date.now() - 5 * 24 * 60 * 60 * 1000);
        var defaultDate = date.getUTCFullYear() + "-" + (date.getUTCMonth() + 1) + "-" + date.getUTCDate();
        document.getElementById("datetimepicker-dashboard").flatpickr({
            inline: true,
            prevArrow: "<span title=\"Previous month\">&laquo;</span>",
            nextArrow: "<span title=\"Next month\">&raquo;</span>",
            defaultDate: defaultDate
        });
    });
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
    $(document).on('click', 'table #deleteProDetail', function () {
        let proDetailId = $(this).parent().find('#proDetail').val();
        $('#proDelId').val(proDetailId);
    });
    $(document).on('click', 'table #updateProDetail', function () {
        let productId = $(this).parent().find('#productId').val();
        let productDetailId = $(this).parent().find('#productDetailId').val();
        $.ajax({
            type: 'GET',
            url: '${pageContext.request.contextPath}/ProductServlet?action=GetProductDetail&&proId=' + productId + "&&pDetailId=" + productDetailId,
            success: function (pdUpdate) {
                console.log(pdUpdate)
                let id = pdUpdate.productDetailId.toString();
                console.log(id)
                $('#proDetailIdUpdate').val(id);
                let color = pdUpdate.color.colorName.toString();
                console.log(color)
                $('#colorProUpdate').val(color);
                let size = pdUpdate.size.sizeName.toString();
                console.log(size)
                $('#sizeProUpdate').val(size);
                let imPrice = pdUpdate.importPrice.toString();
                console.log(imPrice)
                $('#importPriceUpdate').val(imPrice);
                let exPrice = pdUpdate.exportPrice.toString();
                console.log(exPrice)
                $('#exportPriceUpdate').val(exPrice);
                let quan = pdUpdate.quantity.toString();
                console.log(quan)
                $('#quantityUpdate').val(quan);
            }
        });
    });
</script>

<script>
    var exampleModal = document.getElementById('exampleModal')
    exampleModal.addEventListener('show.bs.modal', function (event) {
        // Button that triggered the modal
        var button = event.relatedTarget
        // Extract info from data-bs-* attributes
        var recipient = button.getAttribute('data-bs-whatever1')
        var recipient2 = button.getAttribute('data-bs-whatever2')
        // If necessary, you could initiate an AJAX request here
        // and then do the updating in a callback.
        //
        // Update the modal's content.
        var modalTitle = exampleModal.querySelector('.modal-title')
        var modalBodyInput = exampleModal.querySelector('.modal-body input')

        modalTitle.textContent = 'Xóa màu ' + recipient + ', size ' + recipient2
        modalBodyInput.value = 'Bạn chắc chắn muốn xóa màu ' + recipient + ', size ' + recipient2 + '?'
    })
</script>

<script src="<%=request.getContextPath()%>/js1/jquery-3.3.1.min.js"></script>
<script src="<%=request.getContextPath()%>/js1/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/js1/jquery.magnific-popup.min.js"></script>
<script src="<%=request.getContextPath()%>/js1/jquery-ui.min.js"></script>
<script src="<%=request.getContextPath()%>/js1/mixitup.min.js"></script>
<script src="<%=request.getContextPath()%>/js1/jquery.countdown.min.js"></script>
<script src="<%=request.getContextPath()%>/js1/jquery.slicknav.js"></script>
<script src="<%=request.getContextPath()%>/js1/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath()%>/js1/jquery.nicescroll.min.js"></script>
<script src="<%=request.getContextPath()%>/js1/main.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>

</html>