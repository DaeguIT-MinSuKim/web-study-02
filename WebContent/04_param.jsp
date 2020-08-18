<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿</title>
<script type="text/javascript" src="/js/param.js"></script>
</head>
<body>
	<form method="post" action="ParamServlet" name="frm">
		<label for="userid"> 아이디 : </label>       
			<input type="text" name="id" id="userid" value="test"><br>
		<label for="userpwd"> 암 &nbsp; 호 : </label>
			<input type="password" name="pwd" id="userpwd" value="1234"><br>
		<label for="userage">나 &nbsp; 이 : </label> 
			<input type="text" name="age" id="userage" value="28"><br>
		<label for="username">이 &nbsp; 름 : </label>
			<input type="text" name="name" id="username" value="홍길동"><br>
		<label for="useraddr">주 &nbsp; 소 : </label>
			<input type="text" name="addr" id="useraddr" value="대구 서구"><br>
		<label for="gender"> 성별 : </label> 
			<input type="radio" id="gender"	name="gender" value="남자" checked> 남자 
			<input type="radio"	id="gender" name="gender" value="여자"> 여자 <br>
			<br> 
		<label for="chk_mail"> 메일 정보 수신 여부 : </label> 
			<input type="radio" id="chk_mail" name="chk_mail" value="yes" checked>수신 
			<input type="radio" id="chk_mail" name="chk_mail" value="no"> 거 부<br><br>
		<label for="chk_mail"> 악세사리 </label> 
			<input type="checkbox" name="item" value="신발"> 신발 
			<input type="checkbox" name="item" value="가방"> 가방 
			<input type="checkbox" name="item" value="벨트"> 벨트<br> 
			<input type="checkbox" name="item" value="모자"> 모자 
			<input type="checkbox" name="item" value="시계"> 시계 
			<input type="checkbox" name="item" value="쥬얼리"> 쥬얼리<br>
			
		<span style="float: left; margin-right: 20px"> 
		    <label for="job">직업</label>
			<select id="job" name="job" size="1">
				<option value="">선택하세요</option>
				<option value="학생">학생</option>
				<option value="컴퓨터/인터넷">컴퓨터/인터넷</option>
				<option value="언론">언론</option>
				<option value="공무원">공무원</option>
				<option value="군인">군인</option>
				<option value="서비스업">서비스업</option>
				<option value="교육">교육</option>
		    </select>
		</span> 
		   <label for="interest" style="float: left;">관심분야</label> 
		       <select id="interest" name="interest" size='5' multiple="multiple">
					<option value="에스프레소">에스프레소</option>
					<option value="로스팅">로스팅</option>
					<option value="생두">생두</option>
					<option value="원두">원두</option>
					<option value="핸드드립">핸드드립</option>
				</select> 
		<br><br>  
		<label for="content"> 간단한 가입 인사를 적어주세요^o^ </label>
			<textarea id="content" name="content" rows="3" cols="35">방가방가</textarea> <br>
		<input type="submit" value="전송" >
	</form>
</body>
</html>