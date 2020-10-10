<title>Admin Login</title>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 내부적으로 처리 -->
<%
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String pwd = request.getParameter("pwd");

if((id.equals("아이디") && pwd.equals("비밀번호")) ||
    (id.equals("아이디") && pwd.equals("비밀번호"))){
    session.setAttribute("id",id);
    response.sendRedirect("loginok.jsp");
    }else{
        //response.sendRedirect("loginfail.jsp");
    }
%>

<script>
alert("로그인 실패");
alert("아이디 또는 비밀번호를 확인해주세요.");
location.href="index.jsp";
</script>