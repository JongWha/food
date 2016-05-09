<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="utf-8">
 <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Food Chaser - 푸드 트럭</title>

    <!-- Bootstrap Core CSS - Uses Bootswatch Flatly Theme: http://bootswatch.com/flatly/ -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/freelancer.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js"></script>
</head>

<body id="page-top" class="index">
<%@ include file="./facebook/api.jsp" %>
    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
     
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#page-top">Food Chaser - 푸드 트럭</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="#about">About</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#contact">Login</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <img class="img-responsive" src="img/profile.png" alt="">
                    <div class="intro-text">
                        <span class="name">Food Chaser</span>
                        <hr class="star-light">
                        <span class="skills">레스토랑은 비싸다?! 이젠 푸드트럭이다!! 레스토랑 못지않게 야외에서 맛있는 음식과 음료를 착한 가격에 즐기세요~</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- About Section -->
    <section class="success" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>About</h2>
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-lg-offset-2">
                    <p>도로 위의 레스토랑, 푸드트럭!!!!!!Food Chaser는 푸드 트럭을 찾아 주는 웹 서비스입니다. 자신 주변의 푸드 트럭을 검색하여 트럭을 찾을 수 있고, 정보를 확인하며 다른 사용자들이 남긴 리뷰를 볼 수 있습니다.</p>
                </div>
                <div class="col-lg-4">
                    <p>푸드 트럭과 친해질 수 있어요! 가장 쉽고, 빠르고 세련되게 푸드 트럭과 함께할 수 있습니다. 우리 동네에서 영업 중인 푸드트럭들을 지도를 통해서 한눈에 쉽게 확인할 수 있습니다. 또한, 우리 동네에 영업 중인 모든 푸드트럭의 실제 이용자들이 남긴 리뷰들을 모두 확인할 수 있습니다. 손님들뿐만 아니라 푸드트럭의 사장님들을 위한 쉽고 간편한 영업 관리 서비스를 지원합니다. </p>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Login</h2>
                    <hr class="star-primary">                  
                    <fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
					</fb:login-button>
                </div>
            </div>
            
        </div>
    </section>

    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
            <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
               	        작성자 김상현 32101888  김영훈 32101893 김현우 32101901 이수민 32143312
                    </div>
                </div>
            </div>
            </div>
           </div>
           </div>        
    </footer>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/freelancer.js"></script>

</body>

</html>