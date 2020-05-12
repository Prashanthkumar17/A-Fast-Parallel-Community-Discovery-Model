



    <%@page import="java.sql.*"%>
    <%@ include file="connect.jsp" %>
    <%@ page session="true" %>
    
    <%
    String username = session.getAttribute("user").toString();
    String community = "Jio";
    
    int i = 0;
    int j = 0;
    int other = 0;
    int other1 = 0;
    
    String sql = "select sum(communitycount) from boundarynodes where username = '"+username+"'";
    Statement st = connection.createStatement();
    ResultSet rs = st.executeQuery(sql);
    int sum = 0;
    if(rs.next()){
        sum = rs.getInt(1);
    }
    
    String sql2 = "select * from boundarynodes where username = '"+username+"' and community = '"+community+"' ";
    Statement st2 = connection.createStatement();
    ResultSet rs2 = st2.executeQuery(sql2);
    int k = 0;
    int total = 0;
    while(rs2.next()){
    
    k = rs2.getInt("communitycount");
    i = rs2.getInt("totalcount");
        
    }
    j = k+1;
    total = sum+1;
    other1 = sum+1-j;
    
    String sql3 = "select * from boundarynodes where username = '"+username+"' and community = '"+community+"' ";
    Statement st3 = connection.createStatement();
    ResultSet rs3 = st3.executeQuery(sql3);
    if(rs3.next()){
        
    PreparedStatement ps = connection.prepareStatement("update boundarynodes set communitycount = "+j+", totalcount = "+total+", others = "+other1+" where username = '"+username+"' and community = '"+community+"' ");
    ps.executeUpdate();    
    
    PreparedStatement ps1 = connection.prepareStatement("update boundarynodes set totalcount = "+total+",others = "+j+" where community = 'Airtel' and username = '"+username+"' ");
    ps1.executeUpdate();
    response.sendRedirect("uploadpost.jsp?msg=success");
    }
    
    else{
    
    PreparedStatement ps = connection.prepareStatement("insert into boundarynodes values(?,?,?,?,?)");
    ps.setString(1,username);
    ps.setString(2,community);
    ps.setInt(3,j);
    ps.setInt(4,total);
    ps.setInt(5,other1);
    ps.executeUpdate();
    response.sendRedirect("uploadpost.jsp?msg=success");
    } 
    
   
    %>
    