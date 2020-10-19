
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.BbsDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.model.BbsDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta content="IE=edge" http-equiv="X-UA-Compatible">
  <meta content="width=device-width,initial-scale=1" name="viewport">
  <meta content="description" name="description">
  <meta name="google" content="notranslate" />
  <meta content="Mashup templates have been developped by Orson.io team" name="author">

  <!-- Disable tap highlight on IE -->
  <meta name="msapplication-tap-highlight" content="no">
  
  <link rel="apple-touch-icon" sizes="180x180" href="./assets/apple-icon-180x180.png">
  <link href="./assets/favicon.ico" rel="icon">

  <title>Title page</title>  

<link href="./main.3f6952e4.css" rel="stylesheet">
<style>

</style>
</head>

<body class="">

		<%
			BbsDAO bbsDao = new BbsDAO();
			
			
			MemberDTO info = (MemberDTO)session.getAttribute("info");
		%>
		
		
<header>
  <nav class="navbar  navbar-fixed-top navbar-default">
    <div class="container">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>

      <div class="collapse navbar-collapse" id="navbar-collapse">
        <ul class="nav navbar-nav ">
          <li><a href="./main.jsp" title="">Home</a></li>
          <li><a href="./board_cat.jsp" title="">Board</a></li>

        </ul>


      </div> 
    </div>
  </nav>
</header>

<div class="section-container">
  <div class="container">
    <div class="row">
      
      <div class="col-sm-8 col-sm-offset-2 section-container-spacer">
        <div class="text-center">
          <h1 class="h2">자유게시판</h1>
            
          <p><a href="./board_write.jsp" class="btn btn-default">작성하기</a></p>
        </div>
      </div>

      <div class="col-md-12">
     
		 
		
        <!-- Carousel items -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="row">
                
                <% List<BbsDTO> list = bbsDao.selectList(); %>
						 
						 <%for (int i = 0; i < list.size(); i++) {%>
						 
						 <% int num=list.get(i).getBbsId(); %>
                
                
                    <div class="col-sm-4">
                    
                       <a href="board_info.jsp?num=<%=num%>" class="image featured"> <img src="./bbsimage/<%=list.get(i).getBbsImg() %>" alt="" class="img-responsive">
                      </a>
                     
                      <div class="card-container card-container-lg">
                      	
                        <h4 style="float:right;"><%=list.get(i).getMember_id()%></h4>
                        <h3><%=list.get(i).getBbsId() %>.<%=list.get(i).getBbsTitle() %></h3>
                        <p><%=list.get(i).getBbsDate() %></p>
                        <a href="board_info.jsp?num=<%=num%>" title="" class="btn btn-default">더보기</a>
                      </div>
                     
                    </div>
                  <%} %>
                   
                </div> 
                <!--/row-->
            </div>
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
        <p>© UNTITLED | Website created with <a href="http://www.mashup-template.com/" title="Create website with free html template">Mashup Template</a>/<a href="https://www.unsplash.com/" title="Beautiful Free Images">Unsplash</a></p>
      </div>
    </div>
  </div>
</footer>

<script>
  document.addEventListener("DOMContentLoaded", function (event) {
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

--> <script type="text/javascript" src="./main.70a66962.js"></script></body>

</html>