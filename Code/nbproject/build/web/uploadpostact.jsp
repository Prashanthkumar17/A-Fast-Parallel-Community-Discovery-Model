    <%@page import="java.sql.*"%>
    <%@ include file="connect.jsp" %>
    <%@ page session="true" %>
    <%@page import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
    
    <%
    String user = session.getAttribute("user").toString();
    String postname = request.getParameter("postname");
    String description = request.getParameter("description");
    String community = request.getParameter("community");
    String image = request.getParameter("image");
    
    String dt=null;
    Date dNow = new Date( );
    SimpleDateFormat date2 = new SimpleDateFormat("hh:00");
    dt = date2.format(dNow);
    
    
    PreparedStatement ps = connection.prepareStatement("insert into posts values(?,?,?,?,?,?)");
    ps.setString(1,user);
    ps.setString(2,postname);
    ps.setString(3,description);
    ps.setString(4,community);
    ps.setString(5,image);
    ps.setString(6,dt);
    ps.executeUpdate();
    
    response.sendRedirect("uploadpost.jsp?msg=success");
    
    %>