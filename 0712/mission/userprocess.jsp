<%@page import="java.util.HashMap"%>
<%@page import="com.encore.t0712.UserInfoDAO"%>
<%@page import="com.encore.t0712.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>가입처리결과</title>
</head>
<body>
  <%
  	String id = request.getParameter("id"); 
   	String pass = request.getParameter("pass"); 
   	String name = request.getParameter("name"); 
   	String jumin = request.getParameter("jumin"); 
   	String birth = request.getParameter("birth"); 
   	String zip = request.getParameter("zip"); 
   	String addr = request.getParameter("addr"); 
   	String email = request.getParameter("email"); 
   	String job = request.getParameter("job"); 
  	
  	

 
	UserInfo u = new UserInfo();
  	u.setId(id);
//   	u.setPass(Integer.parseInt(pass));
//  	u.setName(name);
//    	u.setJumin(Integer.parseInt(jumin));
//    	u.setBirth(Integer.parseInt(birth));
//    	u.setZip(zip);
//    	u.setAddr(addr);
//    	u.setEmail(email);
//    	u.setJob(job);
  	
  	UserInfoDAO dao = new UserInfoDAO();
  	dao.insert(u);
  	System.out.println(u);
  	
  %>

  
  <center>     
     <table width="330" border="0" cellpadding="5">
         <tr bgcolor="#3399cc">
           <td><b>[]님 가입을 축하합니다.</b></td>
         </tr>
         <tr>
           <td>
              입력하신 내용대로 가입이 완료되었습니다.<br>
              님께서 요청하신 아이디와 패스워드입니다.
              <p align="center">아이디:<br>
                                패스워드:<br><br>
                 <a href="userconfirm.jsp">로그인 화면</a>                   
              </p>
           </td>
         </tr>
      </table>
     
     <table width="330" border="0" cellpadding="5">
        <tr bgcolor="#3399cc">
          <td><b>가입이 되지않았습니다.<br>
                    입력내용을 다시 한번 확인해 주세요.</b></td>
        </tr>
        <tr>
          <td>            
             <p align="center">입력이 정확한 경우에도 가입이 되지 않는 경우
              관리자에게 문의하여 주십시요.  <br>  
                <a href="javascript:history.back()">이전화면</a>               
             </p>
          </td>
        </tr>
     </table> 
      
  </center>
</body>
</html>