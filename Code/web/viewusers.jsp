
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
    <script>alert('Activated..!');</script>
    <%}%>
     <%
    if (request.getParameter("m1") != null) {%>
    <script>alert('DeActivated..!');</script>
    <%}%>
    
    <div id="container">
    <div id="header">
    <p> <font size="6" color="black"> A Fast Parallel Community Discovery Model on Complex Networks Through Approximate Optimization </font></p><br/>
    <div class="clearfloat"></div>
    <div id="navcontainer">
    <ul id="navlist">
    <li><a href="adminhome.jsp">Home</a></li>
    <li id="active"><a href="">Admin</a></li>
    <li><a href="logout.jsp">Logout</a></li>
    </ul>
    </div>
    <div class="clearfloat"></div>
    <div><img src="images/headerPic.jpg" alt="" /></div>
    </div>

    <div id="contentBody">
    <div class="threeBoxes">
    <div class="box">
    
    <%@ include file="connect.jsp" %>
    <%
        String sql2="select * from user "; 
	Statement st2=connection.createStatement();
	ResultSet rs1=st2.executeQuery(sql2);
	%>
        
         <center>
        <h2><font color="black" size="5"> All Users</font></h2>
     
        <style>
            td{
                text-align: center;
            }
            
        </style>
        <table border="1" width="90%">

        <tr style="background-color: coral">
        <th><font color="white">User Name</th>
        <th><font color="white">Email</th>
        <th><font color="white">Gender</th>
        <th><font color="white">Address</th>
        <th><font color="white">Status</th>
        <th><font color="white">Activate</th>
        <th><font color="white">DeActivate</th>

        </tr>

        <%                while (rs1.next()) {
        %>

     <tr>
    <td><font color="black"><%=rs1.getString(1)%></td>
    <td><font color="black"><%=rs1.getString(3)%></td>
    <td><font color="black"><%=rs1.getString(5)%></td>
    <td><font color="black"><%=rs1.getString(6)%></td>
    <td><font color="black"><%=rs1.getString(8)%></td>
    <td><a href="activate.jsp?username=<%=rs1.getString(1)%>">Activate</a></td>
    <td><a href="deactivate.jsp?username=<%=rs1.getString(1)%>">DeActivate</a></td>
    </tr>
       <%
           }
       %>
      </table></center>

    </div>
    <div class="links">
    <h3> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Admin Menu</h3>
    <ul>
    <li><a href="adminhome.jsp">Home</a></li>
    <li><a href="viewusers.jsp">View Users</a></li>
    <li><a href="boundarynodes.jsp">Boundary Nodes</a></li>
    <li><a href="chainmodel.jsp">Chain Model</a></li>
    <li><a href="mountainmodel.jsp">Mountain Model</a></li>
    <li><a href="landslidemodel.jsp">Landslide Model</a></li>
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
