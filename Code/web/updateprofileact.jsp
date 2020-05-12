    <%@page import="java.sql.*"%>
    <%@ include file="connect.jsp" %>
    <%@ page session="true" %>
    
    <%
    
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String dob = request.getParameter("dob");
    String address = request.getParameter("address");
    String mobile = request.getParameter("mobile");
    
    PreparedStatement ps = connection.prepareStatement("update user set email = '"+email+"', dob = '"+dob+"', address = '"+address+"', mobile = '"+mobile+"' where username = '"+username+"'");
    ps.executeUpdate();
    
    response.sendRedirect("updateprofile.jsp?msg=success");
    
    %>