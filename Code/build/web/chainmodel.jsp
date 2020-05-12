
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>A Fast Parallel Community Discovery Model</title>
<link href="http://fonts.googleapis.com/css?family=Abel|Arvo" rel="stylesheet" type="text/css" />
<link href="styles.css" rel="stylesheet" type="text/css" />
</head>

<body>
        
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
        String sql4="select * from boundarynodes"; 
	Statement st4=connection.createStatement();
	ResultSet rs4=st4.executeQuery(sql4);
	%>
        
         <center>
        <p><font color="red" size="5"> Chain Model </font></p><br/>
     
        <style>
            td{
                text-align: center;
            }
            
        </style>
        <table border="1" >

        <tr style="background-color: coral">
        <th><font color="white">User Name</th>
        <th><font color="white">Community</th>
        <th><font color="white">Count</th>
        <th><font color="white">Total Count</th>

        </tr>

        <%                while (rs4.next()) {
        %>

     <tr>
    <td><font color="black"><%=rs4.getString(1)%></td>
    <td><font color="black"><%=rs4.getString(2)%></td>
    <td><font color="black"><%=rs4.getString(3)%></td>
    <td><font color="black"><%=rs4.getString(4)%></td>
    </tr>
       <%
           }
       %>
      </table>
      </center>

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
