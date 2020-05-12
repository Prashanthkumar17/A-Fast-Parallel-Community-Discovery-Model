
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

    String sql="SELECT distinct username FROM boundarynodes ";
    Statement stmt = connection.createStatement();
    ResultSet rs =stmt.executeQuery(sql);

    %> 
    
    <p align="justify">
    <center><p><font color="red" size="5">Boundary Nodes</font></p><br/>
    <form name="myform" action="boundarynodesact.jsp" method="post" id="" >
    <table width="401">
        
    <td height="43"><font color="black">Select User</td>
    <td><select name="username" style="width:170px;" required="">

    <option>--Select--</option>
    <% 
    while(rs.next())
    {
    String username = rs.getString("username");

    %>
    <option><%=username%></option>
    <% }%>
    </select>
    </td></tr>
    <tr>
    <td height="43"><font color="black">Select Community</td>
    <td><select name="community" style="width:170px;" required="">
    <option value="">--Select--</option>
    <option value="Airtel">Airtel</option>
    <option value="Jio">Jio</option>
    </select></td>
    </tr>  
    <tr>
    <td height="43" rowspan="3"></td>
    <td align="left" valign="middle">
    <p>
    <input name="submit" type="submit" value="VIEW" />
    </p>
    <div align="right">
    </div></td>
    </tr>
    </table>
    </form>
    </center>
    </p>

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
