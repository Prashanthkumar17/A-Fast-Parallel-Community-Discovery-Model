
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>A Fast Parallel Community Discovery Model</title>
<link href="http://fonts.googleapis.com/css?family=Abel|Arvo" rel="stylesheet" type="text/css" />
<link href="styles.css" rel="stylesheet" type="text/css" />
</head>

<body>
    
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
    
    <%@ include file="connect.jsp" %>
    <%
        String sql2="select * from posts where username = '"+user+"' "; 
	Statement st2=connection.createStatement();
	ResultSet rs1=st2.executeQuery(sql2);
	%>
        
         <center>
        <p><font color="red" size="5"> Posts</font></p><br/>
     
        <style>
        td{
            text-align: center;
        }
            
        </style>
        <table border="1" width="80%">

        <tr style="background-color: coral">
        <th><font color="white">Image</th>
        <th><font color="white">Post Name</th>
        <th><font color="white">Description</th>
        <th><font color="white">Community</th>

        </tr>

        <%  
          while (rs1.next()) {
        %>

     <tr>
         <td><font color="black"><img src="Gallery/<%=rs1.getString(5)%>" height="60" width="60"></td>
    <td><font color="black"><%=rs1.getString(2)%></td>
    <td><font color="black"><textarea rows="2" cols="20" readonly=""><%=rs1.getString(3 )%></textarea></td>
    <td><font color="black"><%=rs1.getString(4)%></td>
    
    </tr>
       <%
           }
       %>
      </table></center>

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
