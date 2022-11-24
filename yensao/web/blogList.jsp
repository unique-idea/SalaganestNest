<%-- 
    Document   : blogList
    Created on : Sep 27, 2022, 2:30:48 PM
    Author     : lequa
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Blog list</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/animate.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">

        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/ionicons.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/Style.css">
    </head>
    <body class="goto-here">
        <jsp:include page="header.jsp"/>
        <!-- END nav -->

        <div class="hero-wrap hero-bread" style="background-image: url('images/banner.jpg');">
            <div class="container">
                <div class="row no-gutters slider-text align-items-center justify-content-center">
                    <div class="col-md-9 ftco-animate text-center">
                        <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Blog</span></p>
                        <h1 class="mb-0 bread">Blog</h1>
                    </div>
                </div>
            </div>
        </div>

        <section class="ftco-section ftco-degree-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 ftco-animate">
                        <c:if test="${requestScope.BLOG_LIST != null}">
                            <c:if test="${not empty requestScope.BLOG_LIST}">
                                <div class="row">
                                    <c:forEach var="blog" varStatus="counter" items="${requestScope.BLOG_LIST}"> 
                                        <div class="col-md-12 d-flex ftco-animate">
                                            <div class="blog-entry align-self-stretch d-md-flex">
                                                <a href="blog-single.html" class="block-20" style="background-image: url(${blog.cover});">
                                                </a>
                                                <div class="text d-block pl-md-4">
                                                    <div class="meta mb-3">
                                                        <div><a href="#">September 23, 2022</a></div>
                                                        <div><a href="#">Admin</a></div>
                                                        <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                                                    </div>
                                                    <h3 class="heading"><a href="#">${blog.title}</a></h3>
                                                    <p>${blog.sumary}</p>
                                                    <p><a href="blog-single.html" class="btn btn-primary py-2 px-3">Read more</a></p>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </c:if>
                        </c:if>
                    </div> <!-- .col-md-8 -->
                    <div class="col-lg-4 sidebar ftco-animate">
                        <div class="sidebar-box">
                            <form action="#" class="search-form">
                                <div class="form-group">
                                    <span class="icon ion-ios-search"></span>
                                    <input type="text" class="form-control" placeholder="Search...">
                                </div>
                            </form>
                        </div>
                        <div class="sidebar-box ftco-animate">
                            <h3 class="heading">Categories</h3>
                            <ul class="categories">
                                <li><a href="#">Salanganes’ nests root <span>(12)</span></a></li>
                                <li><a href="#">Salanganes’ nests jar <span>(22)</span></a></li>
                                <li><a href="#">Highland salanganes’ nests <span>(37)</span></a></li>
                                <li><a href="#">The hair-picked alanganes’ nests <span>(42)</span></a></li>
                            </ul>
                        </div>

                        <div class="sidebar-box ftco-animate">
                            <h3 class="heading">Recent Blog</h3>
                            <div class="block-21 mb-4 d-flex">
                                <a class="blog-img mr-4" style="background-image: url(images/blog1.jpg);"></a>
                                <div class="text">
                                    <h3 class="heading-1"><a href="#">Mua Yến Bổ Dưỡng - Rinh Quà Mỏi Tay</a></h3>
                                    <div class="meta">
                                        <div><a href="#"><span class="icon-calendar"></span> September 30, 2022</a></div>
                                        <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                                        <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="block-21 mb-4 d-flex">
                                <a class="blog-img mr-4" style="background-image: url(images/blog2.jpg);"></a>
                                <div class="text">
                                    <h3 class="heading-1"><a href="#">Chuyên Gia Dinh Dưỡng Chia Sẻ Cách Bảo Vệ Sức Khỏe Từ Yến Sào</a></h3>
                                    <div class="meta">
                                        <div><a href="#"><span class="icon-calendar"></span> September 23, 2022</a></div>
                                        <div><a href="#"><span class="icon-person"></span> Taylor Swift</a></div>
                                        <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="block-21 mb-4 d-flex">
                                <a class="blog-img mr-4" style="background-image: url(images/blog3.jpg);"></a>
                                <div class="text">
                                    <h3 class="heading-1"><a href="#">Yến Sào Có Tác Dụng Hiệu Quả Ngay Sau Khi Sử Dụng Không?</a></h3>
                                    <div class="meta">
                                        <div><a href="#"><span class="icon-calendar"></span> September 23, 2022</a></div>
                                        <div><a href="#"><span class="icon-person"></span> Ronaldo</a></div>
                                        <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="sidebar-box ftco-animate">
                            <h3 class="heading">Tag Cloud</h3>
                            <div class="tagcloud">
                                <a href="#" class="tag-cloud-link">salanganes' nest</a>
                                <a href="#" class="tag-cloud-link">yen sao</a>
                                <a href="#" class="tag-cloud-link">nuoc yen</a>
                                <a href="#" class="tag-cloud-link">hu yen</a>
                                <a href="#" class="tag-cloud-link">yen kho</a>
                                <a href="#" class="tag-cloud-link">yen so che</a>
                                <a href="#" class="tag-cloud-link">yen tinh che</a>
                                <a href="#" class="tag-cloud-link">yen re</a>
                            </div>
                        </div>

                        <div class="sidebar-box ftco-animate">
                            <h3 class="heading">Notice!</h3>
                            <p>Sản phẩm này không phải là thuốc và không có tác dụng thay thế thuốc chữa bệnh.</p>
                        </div>
                    </div>

                </div>
            </div>
        </section> <!-- .section -->

        <footer class="ftco-footer ftco-section bg-light">
            <div class="container">
                <div class="row">
                    <div class="mouse">
                        <a href="#" class="mouse-icon">
                            <div class="mouse-wheel"><span class="ion-ios-arrow-up"></span></div>
                        </a>
                    </div>
                </div>
                <div class="row mb-5">
                    <div class="col-md">
                        <div class="ftco-footer-widget mb-4">
                            <h2 class="ftco-heading-2">Vegefoods</h2>
                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
                            <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md">
                        <div class="ftco-footer-widget mb-4 ml-md-5">
                            <h2 class="ftco-heading-2">Menu</h2>
                            <ul class="list-unstyled">
                                <li><a href="#" class="py-2 d-block">Shop</a></li>
                                <li><a href="#" class="py-2 d-block">About</a></li>
                                <li><a href="#" class="py-2 d-block">Journal</a></li>
                                <li><a href="#" class="py-2 d-block">Contact Us</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="ftco-footer-widget mb-4">
                            <h2 class="ftco-heading-2">Help</h2>
                            <div class="d-flex">
                                <ul class="list-unstyled mr-l-5 pr-l-3 mr-4">
                                    <li><a href="#" class="py-2 d-block">Shipping Information</a></li>
                                    <li><a href="#" class="py-2 d-block">Returns &amp; Exchange</a></li>
                                    <li><a href="#" class="py-2 d-block">Terms &amp; Conditions</a></li>
                                    <li><a href="#" class="py-2 d-block">Privacy Policy</a></li>
                                </ul>
                                <ul class="list-unstyled">
                                    <li><a href="#" class="py-2 d-block">FAQs</a></li>
                                    <li><a href="#" class="py-2 d-block">Contact</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md">
                        <div class="ftco-footer-widget mb-4">
                            <h2 class="ftco-heading-2">Have a Questions?</h2>
                            <div class="block-23 mb-3">
                                <ul>
                                    <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
                                    <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
                                    <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 text-center">

                        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </p>
                    </div>
                </div>
            </div>
        </footer>



        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/jquery.waypoints.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/jquery.animateNumber.min.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script src="js/scrollax.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="js/google-map.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>
