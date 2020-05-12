
        
        <%
        String username = request.getParameter("username");
        %>
    
     <br/><br/><br/>       
    <h2><font color="black"> Count of </font> <font color="red"><%=username%> </font></h2><br/>
    <%@ include file="connect.jsp"%>


    <%

    try
    {
    
    String sql="SELECT * FROM boundarynodes where username = '"+username+"' ";
    Statement st = connection.createStatement();
    ResultSet rs = st.executeQuery(sql);
        

    %>
    <script type="text/javascript" src="sources/jscharts.js"></script>

    <div id="graph">Loading graph...</div>


        <script type="text/javascript">
    var myData=new Array();
    var colors=[];

    <%
            int i=0;
	
	String s1=null;
	
	while(rs.next())
	{
	 s1=rs.getString("community");
	int  s2=rs.getInt("communitycount");
	
	
	
	%>
	
	myData["<%=i%>"]=["<%= s1%>",<%=s2%>];
        
	<%
	i++;}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#42aBdB');
	myChart.setBarOpacity(0.8);
	myChart.setSize(500, 400);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#8C8383');
	myChart.setAxisColor('#777E89');
	myChart.setAxisValuesColor('#777E81');
	myChart.draw();
	
  </script>
  
  <br/>
<%
        String sql4="select * from boundarynodes"; 
	Statement st4=connection.createStatement();
	ResultSet rs4=st4.executeQuery(sql4);
	%>
        
         <center>
        <p><font color="red" size="5"> Landslide Model </font></p><br/>
     
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
        <th><font color="white">Other</th>

        </tr>

        <%                while (rs4.next()) {
        %>

     <tr>
    <td><font color="black"><%=rs4.getString(1)%></td>
    <td><font color="black"><%=rs4.getString(2)%></td>
    <td><font color="black"><%=rs4.getString(3)%></td>
    <td><font color="black"><%=rs4.getString(4)%></td>
    <td><font color="black"><%=rs4.getString(5)%></td>
    </tr>
       <%
           }
       %>
      </table>
      </center>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

<br/>
<center><a href="landslidemodel.jsp"><button type="button">BACK</button></a></center>
        