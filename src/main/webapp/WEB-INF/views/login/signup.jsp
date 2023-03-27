<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

	<style>
		h1 {
			text-align:center;
		}
		form > div {
			text-align:center;
		}
		form > div > input {
			width:400px;
			height:40px;
			margin-top: 10px;
		}
		.btn > input {
			width:408px;
		}
		
	</style>
</head>
<body>
	<div id="wrap">
		<jsp:include page="../common/header.jsp"></jsp:include>
		<h1>ȸ������</h1>
		<form id="signup_form" action="memberInsert.do" method="get">
			<div class="id"><input type="text" id="input_id" name="id" placeholder="���̵�"></div>
			<div class="pw"><input type="text" id="input_pw" name="pw" placeholder="��й�ȣ"></div>
			<div class="pw_check"><input type="text" id="input_pw_check" name="pw_check" placeholder="��й�ȣ Ȯ��"></div>
			<div class="name"><input type="text" id="input_name" name="name" placeholder="����"></div>
			<div class="phon"><input type="text" id="input_phone" name="phone" placeholder="��ȭ��ȣ"></div>
			<div class="btn"><input type="button" id="input_signup" name="signup" value="ȸ������"></div>
		</form>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
	<script>
		
		document.querySelector("#input_signup").addEventListener("click", function(){
			
			let id = document.querySelector("#input_id").value;
			let pw = document.querySelector("#input_pw").value;
			let pw_check = document.querySelector("#input_pw_check").value;
			let name = document.querySelector("#input_name").value;
			let phone = document.querySelector("#input_phone").value;
			
			if(id==null || id==''){
				alert("���̵� �Է��Ͻÿ�");
			}else if(pw==null || pw==''){
				alert("��й�ȣ�� �Է��Ͻÿ�");
			}else if(name==null || name==''){
				alert("�̸��� �Է��Ͻÿ�");
			}else if(phone==null || phone==''){
				alert("��ȭ��ȣ�� �Է��Ͻÿ�");
			}else{
				if(pw != pw_check){
					alert("��й�ȣ�� �������� �ʽ��ϴ�.");
				} else if(pw == pw_check){
					alert("ȸ������ ����");
					document.querySelector("#signup_form").submit();
				}
			}
			
			
			
		})
		
	</script>
</body>
</html>