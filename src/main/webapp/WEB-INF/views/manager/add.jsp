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
            <h1>������������</h1>
        </header>
        <section>
             <article>
				<div class="content">
					<h1>��ȭ�߰�</h1>
				    <form action="movieManager.do" method="GET">
				    
				    	��ȭ��ȣ : <input type="text" name="articleNO" value="${articleNO }"> <br>
					    Ÿ��Ʋ : <input type="text" name="title"> <br>
					    Ÿ��Ʋ(����) : <input type="text" name="title_en"> <br>
					    �������� : <input type="text" name="age"> <br>
					    ������ : <input type="text" name="opendate"> <br>
					    ��ȭ���� : <input type="text" name="explain"> <br>
					    ���� : <input type="text" name="director"> <br>
					    �帣 : <input type="text" name="genre"> <br>
					    ����Ÿ�� : <input type="text" name="runningtime"> <br>
					    ��� : <input type="text" name="actor"> <br>
					    ������(���) : <input type="text" name="poster_back"> <br>
					    ������(����) : <input type="text" name="poster_main"> <br>
				
					    <input type="hidden" name="command" value="add">
					    <input type="submit">
					    <input type="reset">
				    </form>
	            </div>
			</article>
        </section>
    </div>
</body>
</html>