<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
  <%
        request.setCharacterEncoding("euc-kr"); 
  %>
<script language='javascript'>
	function checkValue()
	{
    	inputForm = eval("document.LoginInfo");
	    if(!inputForm.id.value) {
    	    alert("아이디를 입력하세요");    
        	inputForm.id.focus();
       	 	return false;
   		}
    	if(!inputForm.password.value) {
        	alert("비밀번호를 입력하세요");    
        	inputForm.password.focus();
        	return false;
    	}
	}
	function register() {
		location.href = "http://localhost:8080/DB_Project/register.jsp";
	}
</script>
<head>
  <!-- Site made with Mobirise Website Builder v4.8.7, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.8.7, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="assets/images/title_logo.jpg" type="image/x-icon">
  <meta name="description" content="Web Page Creator Description">
  <title>Login</title>
  <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
</head>
<body>
  <section class="menu cid-raFQyi5aXb" once="menu" id="menu2-s">
    <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </button>
        <div class="menu-logo">
            <div class="navbar-brand">
                <span class="navbar-logo">
                    <a href="index.html">
                        <img src="assets/images/16-3-463x124.jpg" title="" style="height: 3.8rem;">
                    </a>
                </span>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">

<!-- 회원가입 버튼 부분을 위로 옮겼습니다. href로 구현해놓았어요 기능은 똑같습니다!-->
            <div class="navbar-buttons mbr-section-btn">
                <a class="btn btn-sm btn-primary display-4" href="register.jsp">
                    <span class="mbri-users mbr-iconfont mbr-iconfont-btn" ></span>
                    	회원가입</a></div>
        </div>
    </nav>
</section>
<section class="engine"><a href="https://mobirise.info/r">free bootstrap templates</a></section><section class="mbr-section content5 cid-raFZrLIv7I mbr-parallax-background" id="content5-x">

    

    <div class="mbr-overlay" style="opacity: 0.6; background-color: rgb(35, 35, 35);">
    </div>

    <div class="container">
        <div class="media-container-row">
            <div class="title col-12 col-md-8">
                <h2 class="align-center mbr-bold mbr-white pb-3 mbr-fonts-style display-2">로그인</h2>

            </div>
        </div>
    </div>
</section>

 <!-- 로그인 부분 입니다 우선 설정하신 id, password 부분 name맞춰서 합쳤습니다.  -->
<section class="mbr-section form1 cid-raFVog8a8E" id="form1-u">
    <div class="container">
        <div class="row justify-content-center">
            <div class="media-container-column col-lg-6" data-form-type="formoid">
                <form  name="loginInfo" class="mbr-form" action="./loginPro.jsp"  method="post"
                 onsubmit="return checkValue()">
                    <div class="col col-sm-offset">
                        <div class="row-md-3" data-for="name">
                        <div class="form-group">
                            <label class="form-control-label mbr-fonts-style display-6" for="id-form1-u">아이디</label>
                            <input type="text" class="form-control" name="id" data-form-field="Text" required="" id="id-form1-u">
                        </div>
                    </div>
                        <div class="row-md-3" data-for="email">
                            <div class="form-group">
                                <label class="form-control-label mbr-fonts-style display-6" for="password-form1-u">비밀번호</label>
                                <input type="password" class="form-control" name="password" data-form-field="Password" required="" id="password-form1-u">
                            </div>
                        </div>
                    </div>
                    <span class="input-group-btn"><button href="" type="submit" class="btn btn-form btn-warning-outline display-4">확인</button>
                    </span>
                </form>
            </div>
        </div>
    </div>
</section>


  	<%
    String msg=request.getParameter("msg");

    if(msg != null && msg.equals("error") == true) {%>
    	<script>alert("id나 비밀번호를 확인해주세요")</script>
    <%}%>
	
	
	<section class="accordion2 cid-raG1k7ivY9" id="accordion2-10">
    <div class="container">
        <div class="media-container-row pt-5">
            <div class="accordion-content">
                <h2 class="mbr-section-title align-center pb-3 mbr-fonts-style display-2">
                        FAQ</h2>
                
                <div id="bootstrap-accordion_21" class="panel-group accordionStyles accordion pt-5 mt-3" role="tablist" aria-multiselectable="true">
                        <div class="card">
                            <div class="card-header" role="tab" id="headingOne">
                                <a role="button" class="collapsed panel-title text-black" data-toggle="collapse" data-core="" href="#collapse1_21" aria-expanded="false" aria-controls="collapse1">
                                    <h4 class="mbr-fonts-style display-5">
                                        <span class="sign mbr-iconfont mbri-arrow-down inactive"></span>아이디를 잊어 버리셨나요?</h4>
                                </a>
                            </div>
                            <div id="collapse1_21" class="panel-collapse noScroll collapse" role="tabpanel" aria-labelledby="headingOne" data-parent="#bootstrap-accordion_21">
                                <div class="panel-body p-4">
                                    <p class="mbr-fonts-style panel-text display-7">
                                        아이디를 잊어 버리셨습니까? 기억나지 않으신다면 db4_proj@gmail.com 으로 메일 보내주시면 신속하게 처리해드리겠습니다.
                                        개인정보 보호 상 본인 확인 과정이 필요하니 신분증 혹은 본인명의의 휴대폰을 준비해 주시기 바랍니다.</p>
                                </div>
                            </div>
                        </div>
                
                        <div class="card">
                            <div class="card-header" role="tab" id="headingTwo">
                                <a role="button" class="collapsed panel-title text-black" data-toggle="collapse" data-core="" href="#collapse2_21" aria-expanded="false" aria-controls="collapse2">
                                    <h4 class="mbr-fonts-style mbr-fonts-style display-5">
                                        <span class="sign mbr-iconfont mbri-arrow-down inactive"></span>비밀번호를 잊어버리셨나요?</h4>
                                </a>
                                
                            </div>
                            <div id="collapse2_21" class="panel-collapse noScroll collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#bootstrap-accordion_21">
                                <div class="panel-body p-4">
                                    <p class="mbr-fonts-style panel-text display-7">
                                        비밀번호를 잊어 버리셨습니까? 기억나지 않으신다면 db4_proj@gmail.com 으로 메일 보내주시면 신속하게 처리해드리겠습니다.
                                        개인정보 보호 상 본인 확인 과정이 필요하니 신분증 혹은 본인명의의 휴대폰을 준비해 주시기 바랍니다.</p>
                                </div>
                            </div>
                        </div>
                
                        
                
                        
                
                        
                
                        
                </div>
            </div>
            <div class="mbr-figure" style="width: 105%;">
                    <img src="assets/images/mbr-1042x695.jpg" alt="Mobirise" title="">
            </div>
        </div>
    </div>
</section>

<section once="" class="cid-raG1pQqtBZ" id="footer6-12">

    

    

    <div class="container">
        <div class="media-container-row align-center mbr-white">
            <div class="col-12">
                <p class="mbr-text mb-0 mbr-fonts-style display-7">@ DB_TEAM4 Website 2018. All Rights Reserved.
                </p>
            </div>
        </div>
    </div>
</section>


  <script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/popper/popper.min.js"></script>
  <script src="assets/tether/tether.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/dropdown/js/script.min.js"></script>
  <script src="assets/touchswipe/jquery.touch-swipe.min.js"></script>
  <script src="assets/parallax/jarallax.min.js"></script>
  <script src="assets/mbr-switch-arrow/mbr-switch-arrow.js"></script>
  <script src="assets/smoothscroll/smooth-scroll.js"></script>
  <script src="assets/theme/js/script.js"></script>
  
  
</body>
</html>