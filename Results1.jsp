
<%@ include file="connect.jsp"%>


<%
try
{

ResultSet rs=connection.createStatement().executeQuery("select ftype,fcount from results");
%><html>
<head>
<title>Transaction Results</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css">
<!--
body {
	background-color: #FFFFFF;
}
-->
</style></head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	int i=0;
	
	String s1=null;
	
	while(rs.next())
	{
	 s1=rs.getString(1);
	int s3=rs.getInt(2);
	
	%>
	
	myData["<%=i%>"]=["<%= s1%>",<%= s3%>];
        
	<%
	i++;}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#FF00FF');
	
	myChart.setBarOpacity(0.8);
	myChart.setSize(900,350);
	myChart.setBarBorderColor('#FF00FF');
	myChart.setBarValues(true);
	myChart.setTitleColor('#FF00FF');
	myChart.setAxisColor('#FF00FF');
	myChart.setAxisValuesColor('#FF00FF');
	myChart.draw();
	
</script>

</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

