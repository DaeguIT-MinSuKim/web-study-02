<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>param 결과</title>
</head>
<body>
	${id} 님(${name }) 나이는 ${age } 입니다.<br>
	주소는 ${addr }<br>
	성별 : ${gender}<br>
       메일수신 여부 : ${chk_mail}<br>
       기타 : ${content }<br>
       악세사리 : ${items }<br>
	직업 : ${job }<br>
       관심 분야 : ${interests }<br>
       악세사리 배열로 표현<br>
<%
	String[] itemArr = (String[])request.getAttribute("itemsArr");
	for(String item : itemArr){
	    out.print(item + "<br>");
	}
%>       
	<br><a href='javascript:history.go(-1)'>다시</a>;
</body>
</html>