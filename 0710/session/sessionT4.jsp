<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Session로그아웃 페이지</title>
<style type="text/css">
<!--
.normal {
	font-family: "굴림", "돋움";
	font-size: x-small;
	font-style: normal;
	font-weight: normal;
	text-decoration: none
}

.normalbold {
	font-family: "굴림", "돋움";
	font-size: x-small;
	font-style: normal;
	font-weight: bold;
	text-decoration: none
}
-->
</style>
</head>
<%-- sessionT4.jsp --%>
<%
	session.invalidate(); //세션 종료 즉, 로그아웃
%>
<body>

	<p class=normalbold>세션이 종료되었습니다.</p>
	<p class=normal>
		<a href="sessionT3.jsp">서비스 페이지로 이동 해 보죠.</a>
	</p>

</body>
</html>








