<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/USERCSS/mainpage.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/slick.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/USERCSS/slicktheme.css">
    <title>귤귤 플래너</title>
    <style>

    .slick-slide {
      margin: 0px 20px;
    }

    .slick-slide img {
      width: 100%;
    }

    .slick-prev:before,
    .slick-next:before {
      color: black;
    }


    .slick-slide {
      transition: all ease-in-out .3s;
      opacity: .2;
    }
    
    .slick-active {
      opacity: .5;
    }

    .slick-current {
      opacity: 1;
    }
    </style>
</head>
<body>
   <div class="wrap">
      <header>
         <div class="mgb_header">
                <div class="mgb_inner_wrap">
                    <nav class="gnb_container">
                        <h1 class="mgb_logo"><a href="/"><img src="img/gul7.png"></a></h1>
                        <ul class="on_pc">
                            <li class="gnb_item"><a href="/">예약내역</a></li>
                            <li class="gnb_item"><a href="/">고객센터</a></li>
                            <li class="gnb_item"><a href="/">로그인</a></li>
                            <li class="gnb_item"><a href="/">회원가입</a></li>
                        </ul>
                    </nav>
                    <nav class="lnb_container">
                        <ul class="lnb_wrap">
                            <li class="lnb_item"><a href="/">홈</a></li>
                            <li class="lnb_item"><a href="/">플래너</a></li>
                            <li class="lnb_item"><a href="/">제주여행</a></li>
                            <li class="lnb_item"><a href="/">숙소</a></li>
                            <li class="lnb_item"><a href="/">템플릿</a></li>
                        </ul>
                        <div>
                            <a href="#"><i class="ico_search"></i></a>
                        </div>
                    </nav>
                </div>
         </div>
        </header>
        <main>
            <section class="section1">
                <div class="mgb_inner_wrap">
                    <div class="sec1_left">
                        <div class="sec1_img">
                            <img src="">
                        </div>
                    </div>
                    <div class="sec1_right">
                        <div>
                            <div>
                                <h3>
                                    스투비플래너로
                                    상상속 유럽여행을 현실로 만들어 보세요.
                                    855,014명의 유럽계획 데이터를 활용한
                                    추천과 시뮬레이션 기능을 활용해
                                    여행 아이디어를 실제 여행으로 만들어
                                    예상 비용과 소요시간을 계산해 보세요.
                                </h3>
                            </div>
                            <div class="sec1_right_bot">
                                <div class="sec1_right_rw">
                                    <a href="#">플래너 시작</a>
                                </div>
                                <div class="sec1_right_lw">
                                    <a href="#">맞춤여행 의뢰</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="section2">
                <div class="mgb_inner_wrap">
                    <div>
                        <h3>다른 여행자들의 플래너 855,014개</h3>
                    </div>
                    <div>
                        <ul>
                            <li><a href="#">최신</a></li>
                        </ul>
                    </div>
                    <div class="new">
                        <ul>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                        </ul>
                    </div>
                </div>
            </section>

            <section class="section3">
                <div class="mgb_inner_wrap">
                    <div>
                        <h3>유럽 현지투어 얼리버드 & 결합 SALE</h3>
                    </div>
                    <div class="sale">
                        <ul>
                            <li><a href="#">aaaaaaa</a></li>
                            <li><a href="#">bbbbb</a></li>
                            <li><a href="#">ccccccccc</a></li>
                            <li><a href="#">ddddddd</a></li>
                            <li><a href="#">eeeeeeeee</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">fffff</a></li>
                            <li><a href="#">gggggg</a></li>
                            <li><a href="#">hhhhhhh</a></li>
                            <li><a href="#">iiiiiiiiiii</a></li>
                            <li><a href="#">jjjjjjjjjj</a></li>
                        </ul>
                    </div>
                </div>
            </section>

            <section class="section4">
                <div class="mgb_inner_wrap">
                    <div>
                        <h3>다른 여행자들의 플래너 855,014개</h3>
                    </div>
                    <div>
                        <ul>
                            <li><a href="#">최신</a></li>
                        </ul>
                    </div>
                    <div>
                        <section class="regular slider">
                            <div>
                              <img src="http://placehold.it/350x300?text=1">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=2">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=3">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=4">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=5">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=6">
                            </div>
                          </section>    
                    </div>
                    <div>
                        <h3>얼리버드 추천</h3>
                    </div>
                    <div>
                        <section class="center slider">
                            <div>
                              <img src="http://placehold.it/350x300?text=1">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=2">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=3">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=4">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=5">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=6">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=7">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=8">
                            </div>
                            <div>
                              <img src="http://placehold.it/350x300?text=9">
                            </div>
                          </section>
                    </div>
                </div>
            </section>
        </main>
        <footer>


        </footer>
   </div>
</body>
<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
  <script src="${pageContext.request.contextPath}/USERJS/slick.js" type="text/javascript" charset="utf-8"></script>
  <script type="text/javascript">
    $(document).on('ready', function() {
      $(".regular").slick({
        dots: false,
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 3,
      });

      $(".center").slick({
        dots: false,
        infinite: true,
        centerMode: true,
        slidesToShow: 4,
        slidesToScroll: 1
      });
    });
</script>
</html>