<%@page import="com.model.KOREAPLACE"%>
<%@page import="com.model.OVERSEAPLACE"%>
<%@page import="com.model.FileDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@page import="com.model.FileDAO"%>
<%@page import="com.model.MemberDTO"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta content="IE=edge" http-equiv="X-UA-Compatible">
<meta content="width=device-width,initial-scale=1" name="viewport">
<meta content="description" name="description">
<meta name="google" content="notranslate" />
<meta content="Mashup templates have been developped by Orson.io team"
   name="author">

<!-- Disable tap highlight on IE -->
<meta name="msapplication-tap-highlight" content="no">

<link rel="apple-touch-icon" sizes="180x180"
   href="./assets/apple-icon-180x180.png">
<link href="./assets/favicon.ico" rel="icon">

<title>유사 여행지 추천</title>

<link href="./main.3f6952e4.css" rel="stylesheet">
</head>
<style>
/* img {
   display: inline-block;
   width: 250px;
   max-width: 250%;
   height: auto;
}
 */
div.card-container card-container-lg {
   width: 250px;
   max-width: 250%;
   height: 100px;
}

.row1 {
   margin-top: 100px;
}

#pad {
   margin-right: 100px;
}
</style>
<body class="">
   <div id="site-border-left"></div>
   <div id="site-border-right"></div>
   <div id="site-border-top"></div>
   <div id="site-border-bottom"></div>
   <!-- Add your content of header -->
   <header>
   
      <%
         // 파이썬에서 넘겨받아야 하는 키워드들
         // 해외 지역어딘지 분석해서 넘겨줄 이름   
         String OVERSEAPLACE  = request.getParameter("OVERSEAPLACE");
         // 한국 지역어딘지 분석해서 넘겨줄 이름
         String[] KOREAPLACE = request.getParameterValues("KOREAPLACE");
         ArrayList<KOREAPLACE> list = new ArrayList<KOREAPLACE>();
         
         // 테스트 용도로 임의의 데이터 넣기
         // 해외
         OVERSEAPLACE = "산토리니";
         // 한국
         KOREAPLACE = new String[3];
         KOREAPLACE[0] = "독일마을";
         KOREAPLACE[1] = "산토리니펜션";
         KOREAPLACE[2] = "다랭이 마을";

         FileDAO dao = new FileDAO();
         // dao를 통해 분석한 외국 정보 dto를 받아오는 부분
         OVERSEAPLACE over = dao.searchForeign(OVERSEAPLACE);
         // dao를 통해 분석한 한국 정보 dto를 받아오는 부분
         for(int i = 0; i < KOREAPLACE.length; i++){
            KOREAPLACE korea = dao.searchKorea(KOREAPLACE[i]);
            if(korea != null){
               list.add(korea);
            }
         }
         
      
      %>
   
   
      <%
         MemberDTO info = (MemberDTO) session.getAttribute("info");
      %>

      
      <nav class="navbar  navbar-fixed-top navbar-inverse">
         <div class="collapse navbar-collapse" id="navbar-collapse">
            <ul class="nav navbar-nav ">
               <li><a href="./main.jsp" title="">Home</a></li>
               <li><a href="./board_cat.jsp" title="">Board</a></li>
               <%
                  if (info == null) {
               %>
               <li><a href="./Login_form.jsp" title="">Login</a></li>
               <li><a href="./Join_form.jsp" title="">Join</a></li>
               <%
                  } else {
               %>
               <li><a href="LogoutService">Logout</a></li>
               <li><a href="MyPage_form.jsp">킹겨찾기</a></li>
               <%
                  }
               %>
            </ul>
         </div>
      </nav>

      <nav class="navbar  navbar-fixed-top navbar-default">
         <div class="container">
            <button type="button" class="navbar-toggle collapsed"
               data-toggle="collapse" data-target="#navbar-collapse"
               aria-expanded="false">
               <span class="sr-only"> </span> <span class="icon-bar"></span> <span
                  class="icon-bar"></span> <span class="icon-bar"></span>
            </button>
         </div>
      </nav>
   </header>

   <div class="section-container">
      <div class="container">
         <div class="row">
            <div class="col-sm-8 col-sm-offset-2 section-container-spacer">
               <div class="text-center">
                  <h1 class="h2">여기가 어디인가유</h1>
                  <br> <br> <br> <br> 
                  <p>
                     찾는 곳 이름: <br><%= over.getOVERSEAtitle() %> <br> 
                     찾는 곳 주소: <br> <br> 
                     찾는곳 간략한 설명: <br> <br> 
                     <a href="http://www.swissthemepark.com?searchName="+ <%= over.getOVERSEAtitle()%>>
                     공식웹사이트 : </a>
                  </p>
               </div>
            </div>
            <nav class="navbar  navbar-fixed-top navbar-default">
               <div class="container">
                  <button type="button" class="navbar-toggle collapsed"
                     data-toggle="collapse" data-target="#navbar-collapse"
                     aria-expanded="false">
                     <span class="sr-only"> </span> <span class="icon-bar"></span> <span
                        class="icon-bar"></span> <span class="icon-bar"></span>
                  </button>
               </div>
            </nav>
            </header>
            <%--    <img src="SimilarPicture/<%= list.get(0).getFileName()%>">  --%>
            <div class="col-md-12">
               <div id="myCarousel" class="carousel slide projects-carousel">
                  <!-- Carousel items -->
                  <div class="carousel-inner">
                     <div class="item active">
                        <div class="row1">
                           <div class="col-sm-4">

                              <a href="./detail.jsp" title=""> <img
                                 src="SimilarPicture/"alt=""
                                 class="img-responsive"><!--한국 유사 여행지 사진이 나올곳이야  --> 
                              </a>
                              <p><%-- 여행지의 이름--%></p>
                              <br>
                              <p><!--간략 설명(?)  --></p>
                              <a href="./detail.jsp" title="" class="btn btn-default">정보
                                 보기</a>
                           </div>
                           <div class="col-sm-4">
                              <a href="./detail.jsp" title=""> <img
                                 src="SimilarPicture/" alt=""
                                 class="img-responsive"><!--한국 유사 여행지 사진이 나올곳이야  --> 
                              </a>
                              <p><%-- 여행지의 이름--%></p>
                              <br>
                              <p><!--간략 설명(?)  --></p>
                              <a href="./detail.jsp" title="" class="btn btn-default">정보
                                 보기</a>
                           </div>
                           <div class="col-sm-4">
                              <a href="./detail.jsp" title=""> <img
                                 src="SimilarPicture/" alt=""
                                 class="img-responsive"><!--한국 유사 여행지 사진이 나올곳이야  --> 
                              </a>
                              <p><%-- 여행지의 이름--%></p>
                              <br>
                              <p><!--간략 설명(?)  --></p>
                              <a href="./detail.jsp" title="" class="btn btn-default">정보
                                 보기</a>
                           </div>
                        </div>
                     </div>
                     <%--    <img src="SimilarPicture/<%= list.get(0).getFileName()%>">  --%>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!--/row-->
   </div>
   <!--/item-->
   <div class="item">
      <div class="row"></div>
   </div>
   <!--/row-->
   </div>
   <!--/item-->
   </div>
   <!--/carousel-inner-->

   </div>
   <!--/myCarousel-->
   </div>
   </div>
   </div>
   </div>


   <footer class="footer-container text-center">
      <div class="container">
         <div class="row">
            <div class="col-xs-12">
               <p>여기에도 뭘 쓸깐</p>
            </div>
         </div>
      </div>
   </footer>

   <script>
      document.addEventListener("DOMContentLoaded", function(event) {
         navActivePage();
      });
   </script>

   <!-- Google Analytics: change UA-XXXXX-X to be your site's ID 

<script>
  (function (i, s, o, g, r, a, m) {
    i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
      (i[r].q = i[r].q || []).push(arguments)
    }, i[r].l = 1 * new Date(); a = s.createElement(o),
      m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
  })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
  ga('create', 'UA-XXXXX-X', 'auto');
  ga('send', 'pageview');
</script>

-->
   <script type="text/javascript" src="./main.70a66962.js"></script>
</body>

</html>