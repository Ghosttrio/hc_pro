<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	.booking_info{
		margin-top:30px;
		width:100%;
		background-color: #f2f0e5;
	}
	.info_box{
		display:inline-block;
		vertical-align:top;
		width:70%;
		margin-left:40px;
	}
	.home{
	    width: 150px;
	    height: 50px;
	    background-color: black;
	    color:white;
	    border: 0;
	    outline: 0;
	    border-radius:5%;
	    cursor:pointer;
	    margin-top:175px;
	}
</style>
</head>
<body>
	<div id="wrap">
		<jsp:include page="../common/header.jsp"></jsp:include>
		<h1>���Ű� �Ϸ�Ǿ����ϴ�. ��ſ� �����Ǽ���.</h1>
		<div class="booking_info">
			<c:forEach var="movieList" items="${movieList }">
				<c:if test="${movieList.articleNO == articleNO}">
					<img src="${movieList.poster_main }" width=290px height=420px>
				</c:if>
			</c:forEach>
			
			<div class="info_box">
				<c:forEach var="movieList" items="${movieList }">
					<c:if test="${movieList.articleNO == articleNO}">
						<div class="info">
							<h3>����: ${movieList.title }</h3>
						</div>
					</c:if>
				</c:forEach>
				<div  class="info">
					<c:forEach var="theaterList" items="${theaterList }">
						<c:if test="${theaterList.theater_id == theater_id}">
							<h3>�����: ${theaterList.theater_name }</h3>
						</c:if>
					</c:forEach>
				</div>
				<div  class="info">
					<h3>��¥: ${showdate }</h3>
					
				</div>
				<div  class="info">
					<h3>�󿵽ð�: ${showtime }</h3>
				</div>
				<a href="main.do"><input class="home" type="button" value="�������ΰ���"></a>
			</div>
		</div>
	</div>
</body>
</html>