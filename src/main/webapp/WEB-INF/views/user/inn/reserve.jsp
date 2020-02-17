<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sona | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/elegant-icons.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/flaticon.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/owl.carousel.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/nice-select.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/jquery-ui.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/slicknav.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/style.css">

    <style>
        .reserve > form > div {
            width: 80%;
            margin: 0 auto;

        }
        .reserve {
            height: 800px;
            margin-bottom: 200px;
            background-color: #eee;
        }
        .reserve .title {
            padding: 50px 0px 20px 0px;
            margin-bottom: 20px;
            border-bottom: 3px solid #bbb;
        }
        .reserve .title h2 { font-weight: bold; }
        h5 {
            font-weight: bold;
            padding: 10px;
        }
        label {
            padding: 0px 0px 5px 15px;
            width: 100%;
        }
        .term > label > button {
            color: white;
            width: 100%;
            height: 45px;
            border: none;
            background-color: #dfa974;
        }
        
        .inn_name, .room_name, .room_price {
            padding: 15px;
        }
        .side > div > p {
            padding-bottom: 5px;
        }

        .res_button button {
            width: 100%;
            padding: 17px;
            border: none;
            color: white;
            background-color: #dfa974;
            vertical-align: bottom;
        }
    </style>
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Section Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="canvas-open">
        <i class="icon_menu"></i>
    </div>
    <div class="offcanvas-menu-wrapper">
        <div class="canvas-close">
            <i class="icon_close"></i>
        </div>
        <div class="search-icon search-switch">
            <i class="icon_search"></i>
        </div>
        <div class="header-configure-area">
            <div class="language-option">
                <img src="img/flag.jpg" alt="">
                <span>EN <i class="fa fa-angle-down"></i></span>
                <div class="flag-dropdown">
                    <ul>
                        <li><a href="#">Zi</a></li>
                        <li><a href="#">Fr</a></li>
                    </ul>
                </div>
            </div>
            <a href="#" class="bk-btn">Booking Now</a>
        </div>
        <nav class="mainmenu mobile-menu">
            <ul>
                <li class="active"><a href="./index.html">Home</a></li>
                <li><a href="./rooms.html">Rooms</a></li>
                <li><a href="./about-us.html">About Us</a></li>
                <li><a href="./pages.html">Pages</a>
                    <ul class="dropdown">
                        <li><a href="./room-details.html">Room Details</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                        <li><a href="#">Family Room</a></li>
                        <li><a href="#">Premium Room</a></li>
                    </ul>
                </li>
                <li><a href="./blog.html">News</a></li>
                <li><a href="./contact.html">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="top-social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-tripadvisor"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
        </div>
        <ul class="top-widget">
            <li><i class="fa fa-phone"></i> (12) 345 67890</li>
            <li><i class="fa fa-envelope"></i> info.colorlib@gmail.com</li>
        </ul>
    </div>
    <!-- Offcanvas Menu Section End -->

    <!-- Header Section Begin -->
    <header class="header-section">
        <div class="top-nav">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <ul class="tn-left">
                            <li><i class="fa fa-phone"></i> (12) 345 67890</li>
                            <li><i class="fa fa-envelope"></i> info.colorlib@gmail.com</li>
                        </ul>
                    </div>
                    <div class="col-lg-6">
                        <div class="tn-right">
                            <div class="top-social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-tripadvisor"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                            </div>
                            <a href="#" class="bk-btn">Booking Now</a>
                            <div class="language-option">
                                <img src="img/flag.jpg" alt="">
                                <span>EN <i class="fa fa-angle-down"></i></span>
                                <div class="flag-dropdown">
                                    <ul>
                                        <li><a href="#">Zi</a></li>
                                        <li><a href="#">Fr</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="menu-item">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2">
                        <div class="logo">
                            <a href="./index.html">
                                <img src="img/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-10">
                        <div class="nav-menu">
                            <nav class="mainmenu">
                                <ul>
                                    <li><a href="./index.html">Home</a></li>
                                    <li><a href="./rooms.html">Rooms</a></li>
                                    <li><a href="./about-us.html">About Us</a></li>
                                    <li><a href="./pages.html">Pages</a>
                                        <ul class="dropdown">
                                            <li><a href="./room-details.html">Room Details</a></li>
                                            <li><a href="./blog-details.html">Blog Details</a></li>
                                            <li><a href="#">Family Room</a></li>
                                            <li><a href="#">Premium Room</a></li>
                                        </ul>
                                    </li>
                                    <li class="active"><a href="./blog.html">News</a></li>
                                    <li><a href="./contact.html">Contact</a></li>
                                </ul>
                            </nav>
                            <div class="nav-right search-switch">
                                <i class="icon_search"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header End -->

    <!-- Blog Details Hero End -->

    <!-- Blog Details Section Begin -->
    <section class="blog-details-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-10">
                    <div class="blog-details-text">
                        <div class="reserve">
                            <form>
                                <div class="title">
                                    <h2>객실 예약</h2>
                                </div>
                                <div class="info">
                                    <h5>예약자 정보</h5>
                                    <label>
                                        예약자 이름<br>
                                        <input type="text">
                                    </label>
                                    <label>
                                        예약자 번호<br>
                                        <input type="text">
                                        <button>휴대폰 인증</button>
                                    </label>
                                    <label>
                                        <input type="text">
                                        <button>인증번호 확인</button>
                                    </label>
                                </div>
                                <div class="term">
                                    <h5>이용 약관</h5>
                                    <label>
                                        <input type="checkbox">
                                        <strong>전체 동의</strong>
                                    </label>
                                    <label>
                                        <input type="checkbox">
                                        숙소이용규칙 및 취소/환불규정 동의 (필수)
                                    </label>
                                    <label>
                                        <input type="checkbox">
                                        개인정보 수집 및 이용 동의 (필수)
                                    </label>
                                    <label>
                                        <input type="checkbox">
                                        개인정보 제 3자 제공 동의 (필수)
                                    </label>
                                    <label>
                                        <input type="checkbox">
                                        만 14세 이상입니다. (필수)
                                    </label>
                                    <label><button onclick="location.href = './innCheck.html'">예약 하기</button></label>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="reserve side" style="height: auto;">
                        <div class="inn_name">
                            <h4>숙소 이름</h4>
                            <p>...</p>
                        </div>
                        <div class="room_name">
                            <h4>객실 타입</h4>
                            <p>...</p>
                        </div>
                        <div class="room_price">
                            <h4>총가격</h4>
                            <p>...</p>
                        </div>
                        <div class="res_button">
                            <button  onclick="location.href='./innCheck.html'">예약 하기</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">
            <div class="footer-text">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="ft-about">
                            <div class="logo">
                                <a href="#">
                                    <img src="img/footer-logo.png" alt="">
                                </a>
                            </div>
                            <p>We inspire and reach millions of travelers<br /> across 90 local websites</p>
                            <div class="fa-social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-tripadvisor"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="ft-contact">
                            <h6>Contact Us</h6>
                            <ul>
                                <li>(12) 345 67890</li>
                                <li>info.colorlib@gmail.com</li>
                                <li>856 Cordia Extension Apt. 356, Lake, United State</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="ft-newslatter">
                            <h6>New latest</h6>
                            <p>Get the latest updates and offers.</p>
                            <form action="#" class="fn-form">
                                <input type="text" placeholder="Email">
                                <button type="submit"><i class="fa fa-send"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-option">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <ul>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Terms of use</a></li>
                            <li><a href="#">Privacy</a></li>
                            <li><a href="#">Environmental Policy</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-5">
                        <div class="co-text">
                            <p>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;
                                <script>document.write(new Date().getFullYear());</script> All rights reserved | This
                                template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a
                                    href="https://colorlib.com" target="_blank">Colorlib</a>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Search model Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch"><i class="icon_close"></i></div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search model end -->

    <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath}/USERJS/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/jquery.magnific-popup.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/USERJS/main.js"></script>

    <script>
        $(document).ready(function() {
            $(".bd-title > ul > li").eq(0).click(function() {
                $(".room_info").css("display", "block")
                $(".room_info_more").css("display", "none")
                $(".comment-option").css("display", "none")
            })
            $(".bd-title > ul > li").eq(2).click(function() {
                $(".room_info").css("display", "none")
                $(".room_info_more").css("display", "block")
                $(".comment-option").css("display", "none")
            })
            $(".bd-title > ul > li").eq(4).click(function() {
                $(".room_info").css("display", "none")
                $(".room_info_more").css("display", "none")
                $(".comment-option").css("display", "block")
            })

            $(".modal_inner .icon_close").click(function() {
                $(".modal_layer").css("display", "none")
            })
        })
        function openModal() {
            $(".modal_layer").css("display", "block");
        }
    </script>

    <script>
        var calendar = new dhx.Calendar("calendar1", {
            css: "dhx_widget--bordered"
        });
        var calendar2 = new dhx.Calendar("calendar2", {
            css: "dhx_widget--bordered"
        });

        calendar.link(calendar2);

        calendar.events.on("change", function (date) {
            document.querySelector("#resultFrom").innerHTML = "Date from: " + calendar.getValue() + "</br>";
        });

        calendar2.events.on("change", function (date) {
            document.querySelector("#resultTo").innerHTML = "Date to: " + calendar2.getValue() + "</br>";
        });
    </script>
</body>

</html>