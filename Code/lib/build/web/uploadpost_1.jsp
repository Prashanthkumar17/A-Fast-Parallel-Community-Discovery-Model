
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>A Fast Parallel Community Discovery Model</title>
<link href="http://fonts.googleapis.com/css?family=Abel|Arvo" rel="stylesheet" type="text/css" />
<link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<style>
body {font-family: "Lato", sans-serif;}

ul.tab {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    width: 505px;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
}

/* Float the list items side by side */
ul.tab li {float: left;}

/* Style the links inside the list items */
ul.tab li a {
    display: inline-block;
    color: black;
    text-align: right;
    padding: 14px 109px 0px;
    text-decoration: none;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of links on hover */
ul.tab li a:hover {
    background-color: #ddd;
}

/* Create an active/current tablink class */
ul.tab li a:focus, .active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 6px 50px;
  //  border: 1px solid #ccc;
    border-top: none;
}
</style>
<body>
    
    <%
    if (request.getParameter("msg") != null) {%>
    <script>alert(' Success..!');</script>
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
    
    <ul class="tab">
   <center>
    <li><a href="javascript:void(0)" class="tablinks" onclick="openCity(event, 'Credit')">Airtel</a></li>
  <li><a href="javascript:void(0)" class="tablinks" onclick="openCity(event, 'Debit')">JIO</a></li>
 </center>
</ul>

<center>
    
    
    
<div id="Credit" class="tabcontent">
    <br>
  
  <%@ include file="connect.jsp" %>
    <%
        String sql2="select * from plans where community = 'Airtel' "; 
	Statement st2=connection.createStatement();
	ResultSet rs1=st2.executeQuery(sql2);
	%>
        
         <center>
        <p><font color="red" size="5"> Plans of Airtel</font></p><br/>
     
        <style>
        td{
            text-align: center;
        }
            
        </style>
        <table border="1" width="100%">

        <tr style="background-color: coral">
        <th><font color="white">Plan</th>
        <th><font color="white">Description</th>
        <th><font color="white">Community</th>

        </tr>

        <%  
          while (rs1.next()) {
        %>

     <tr>
    <td><font color="black"><%=rs1.getString("plan")%></td>
    <td><font color="black"><textarea rows="3" cols="25" readonly=""><%=rs1.getString("description")%></textarea></td>
    <td><font color="black"><%=rs1.getString("community")%></td>
    
    </tr>
       <%
           }
       %>
      </table></center>

                    
</div>

<div id="Debit" class="tabcontent">
    <br>
    <%
        String sql="select * from plans where community = 'Airtel' "; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(sql);
	%>
        
         <center>
        <p><font color="red" size="5"> Plans of JIO</font></p><br/>
     
        <style>
        td{
            text-align: center;
        }
            
        </style>
        <table border="1" width="100%">

        <tr style="background-color: coral">
        <th><font color="white">Plan</th>
        <th><font color="white">Description</th>
        <th><font color="white">Community</th>

        </tr>

        <%  
          while (rs.next()) {
        %>

     <tr>
    <td><font color="black"><%=rs.getString("plan")%></td>
    <td><font color="black"><textarea rows="3" cols="25" readonly=""><%=rs.getString("description")%></textarea></td>
    <td><font color="black"><%=rs.getString("community")%></td>
    
    </tr>
       <%
           }
       %>
      </table></center>
                
</div>


<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
</script>

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
