
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>A Fast Parallel Community Discovery Model</title>
<link href="http://fonts.googleapis.com/css?family=Abel|Arvo" rel="stylesheet" type="text/css" />
<link href="styles.css" rel="stylesheet" type="text/css" />
</head>

<body>
    
    <%
    if (request.getParameter("msg") != null) {%>
    <script>alert('Profile Updated Successfully..!');</script>
    <%}%>   
    <%
    String user = session.getAttribute("user").toString();
    %>
    
    <div id="container">
    <div id="header">
    <p> <font size="6" color="black"> A Fast Parallel Community Discovery Model on Complex Networks Through Approximate Optimization </font></p><br/>
    <div class="clearfloat"></div>
    <div id="navcontainer">
    <ul id="navlist">
    <li><a href="userhome.jsp">Home</a></li>
    <li id="active"><a href=""><%=user%></a></li>
    <li><a href="logout.jsp">Logout</a></li>
    </ul>
    </div>
    <div class="clearfloat"></div>
    <div><img src="images/headerPic.jpg" alt="" /></div>
    </div>

    <div id="contentBody">
    <div class="threeBoxes">
    <div class="box">
    <br/>
    
    <%@page import="java.sql.*"%>
    <%@ include file="connect.jsp" %>
    <%@ page session="true" %>
    <%
    
    String sql="select * from user where username = '"+user+"' "; 
    Statement st=connection.createStatement();
    ResultSet rs=st.executeQuery(sql);
    if(rs.next()){
        
    }
    %>    
    
       
    <center><p><font color="red" size="5"> Profile </font></p>

    <form action="updateprofileact.jsp" method="post" >
    <table width="371">
    <tr>
    <td height="43"><font color="black">User Name </td>
    <td><input name="username" size="18" readonly="" value="<%=rs.getString("username")%>" /></td>
    </tr>
    <tr>
    <td height="43"><font color="black"> Email ID</td>
    <td><input name="email" size="18" autocomplete="off" required="" value="<%=rs.getString("email")%>" /></td>
    </tr>

    <tr>
    <td height="43"><font color="black">Date Of Birth</td>
    <td><input type="date" size="18" name="dob" required="" value="<%=rs.getString("dob")%>" ></td>
    </td>
    </tr>
    
    <tr>
    <td height="65"><font color="black">Address</td>
    <td><input size="18" name="address" autocomplete="off" required="" value="<%=rs.getString("address")%>"></input></td>
    </tr>
    <tr>
    <td height="43"><font color="black">Mobile Number </td>
    <td><input size="18" name="mobile" autocomplete="off" required="" value="<%=rs.getString("mobile")%>"/></td>
    </tr>
    <tr>
    <td height="43" rowspan="3">
    <p>&nbsp;</p></td>
    <td align="left" valign="middle"> <p>&nbsp;
    </p>
    <p>
    <input name="submit" type="submit" value="UPDATE" />
    </p>
    <div align="right">
    </div></td>
    </tr>
    </table>
    </form>
    </center>

    </div>
    <div class="links">
    <h3> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User Menu</h3>
    <ul>
    <li><a href="userhome.jsp">Home</a></li>
    <li><a href="updateprofile.jsp">View Profile</a></li>
    <li><a href="uploadpost.jsp">Select Plans</a></li>
    
    <li><a href="logout.jsp">Logout</a></li>
    </ul>
    </div>

    <div class="clearfloat"></div>
    </div>

    </div>
    <div id="footer">
    <p>
     
    </p>
    </div>
    </div>
</body>
</html>
