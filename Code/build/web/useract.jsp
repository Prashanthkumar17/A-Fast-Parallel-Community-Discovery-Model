<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
   
    try{
       
      
      String query1="select * from user where username='"+username+"' and password='"+password+"' and status = 'Activated'"; 
      Statement st1=connection.createStatement();
      ResultSet rs=st1.executeQuery(query1);
      
	if(rs.next())
        {
         
         session.setAttribute("user",username);
         response.sendRedirect("userhome.jsp?msg=success");
        }
       else 
        {
            response.sendRedirect("user.jsp?m1=Login_Failed");
        }
	}
    
        catch(Exception e)
        {
        System.out.println("Error in useract"+e.getMessage());
        }
%>