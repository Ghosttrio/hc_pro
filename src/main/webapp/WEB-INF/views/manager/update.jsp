
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <style>
        #wrap {
            margin-top: 30px;
            margin-left: 30px;
            margin-right: 30px;
        }
        header > *{
            display: inline-block;
        }
        h1{
            width: 90%;
        }
        section{
            
        }
        section > *{
            display: inline-block;
            vertical-align: top;
        }
        article{
            width: 100%;
            height: 800px;
            overflow:scroll;
            background-color:#f2f0e5;
            
        }
        .article{
        	width:120px;
        	display:inline-block;
        	margin-bottom:10px;
        	border-radius:5%;
        	padding:3px;
        	background-color:#333;
        	
        }
        .article img {
        	border-radius:5%;
        }
        .top2_1{
        	font-size:20px;
        	font-weight:600;
        	margin-bottom:10px;
        }
        .content{
        	padding:10px;
        }
        .top2 > * {
        	display:inline-block;
        }
        .add{
        	float:right;
        }
        .title_long{
			white-space: nowrap; 
			overflow: hidden;  
			text-overflow: ellipsis;
			font-weight:600;
			color:white;
		}
		.delete{
			background-color: black;
		    color:white;
		    border-radius:5%;
		    cursor:pointer;
		    font-weight:600;
		}
		.update{
			background-color: black;
		    color:white;
		    border-radius:5%;
		    cursor:pointer;
		    font-weight:600;
		
		}
		.aside_title{
			background-color:#f2f0e5;
			color:black;
			text-align:center;
			font-size:30px;
			font-weight:600;
			padding:5px;
		}
    </style>
</head>
<body>
    <div id="wrap">
        <header>
            <h1>관리자페이지</h1>
        </header>
        <section>
             <article>
				<div class="content">
					<h1>영화수정</h1>
				    <c:forEach var="movieList" items="${movieList }" varStatus="status">
					   <form action="movieManager.do" method="GET">
					    타이틀 : <input type="text" value="${movieList.title }" name="title"><br>
					   	타이틀(영문) :	<input type="text" value="${movieList.title_en }" name="title_en"><br>
					   	관람연령 :	<input type="text" value="${movieList.age }" name="age"><br>
					   	개봉일 : <input type="text" value="${movieList.opendate }" name="opendate"><br>
						영화설명 : <input type="text" value="${movieList.explain }" name="explain"><br>
						감독 : <input type="text" value="${movieList.director }" name="director"><br>
					   	장르 : <input type="text" value="${movieList.genre }" name="genre"><br>
					   	러닝타임 :	<input type="text" value="${movieList.runningtime }" name="runningtime"><br>
					  	배우 : <input type="text" value="${movieList.actor }" name="actor"><br>
					   	포스터(배경) : <input type="text" value="${movieList.poster_back }" name="poster_back"><br>
					   	포스터(메인) :	<input type="text" value="${movieList.poster_main }" name="poster_main"><br>
					   	
					   	
					    <input type="submit">
					    <input type="reset">
					    <input type="hidden" name="command" value="update">
					   </form>
				    </c:forEach>
	            </div>
			</article>
        </section>
    </div>
</body>
</html>