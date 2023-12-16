<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>U_Search_Tweets</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style2 {font-size: 24}
.style3 {padding:0; margin:0; width:100%; line-height:0; clear: both;}
.style4 {
	color: #33CCFF;
	font-size: 36;
}
.style5 {
	font-size: 18px;
	color: #FF00FF;
	font-weight: bold;
}
.style6 {
	font-size: 36px;
	font-weight: bold;
}
.style7 {
	font-size: 24px;
	font-weight: bold;
	color: #FF0000;
}
.style9 {color: #FFFFFF; font-weight: bold; font-style: italic; }
.style10 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main style2">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h2 align="center" class="style4 style5">Detection of Social Network Spam Based on Improved Extreme Learning Machine</h2>
      </div>
      <div class="searchform"></div>
      <div class="style3"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html">Home Page</a></li>
          <li><a href="A_Login.jsp">Admin</a></li>
          <li class="active"><a href="U_Login.jsp">User</a></li>
        </ul>
      </div>
      <div class="style3"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="style3"></div>
      </div>
      <div class="style3"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	  
	  
	  
	    <p>&nbsp;</p>
	    <p class="style7">Search Tweets by Keyword .....</p>
	    <p class="style7">&nbsp;</p>
	    <p class="style7">&nbsp;</p>
	   <table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
					
				<%
	String tname=request.getParameter("tname");
	
String user=(String)application.getAttribute("uname");%>	
				
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
						
					
						String keyword=tname.toLowerCase();
						
						String s1,s2,s3,s4,s5,s6,s7,s8;
						int i=0;
						try 
						{
						   	String query="select * from tweets where user!='"+user+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
								s4=rs.getString(4).toLowerCase(); // desc
								s5=rs.getString(5);
								s6=rs.getString(6);
								s7=rs.getString(7);
								
						application.setAttribute("tname",s2); 
						
						if(s4.contains(keyword))
						{
					%>
					<tr>
					<td width="230" rowspan="7" >
						<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
						 <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="tweet"%>" style="width:200px; height:200px;"  />
						 </a></div>					</td>
					</tr>
					
					<tr>
					<tr>
					  <td  width="127" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style9" style="margin-left:20px;"><strong>Tweet Name</strong></div></td>
					  <td  width="182" valign="middle" height="44" style="color:#000000;"><div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s2);%></div></td>
					</tr>
					  <td  width="127" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style9" style="margin-left:20px;"><strong>Description</strong></div></td>
					  <td  width="182" valign="middle" height="40" style="color:#000000;"><div align="left" class="style11 style10" style="margin-left:20px;"><%out.println(s4);%></div></td>
					</tr>
					
					<tr>
					  <td height="38" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left " class="style14 style4 style3 style9" style="margin-left:20px;"><strong>Tweet Date </strong></div></td>
					  <td align="left" valign="middle" height="38"><div align="left" class="style11 style10" style="margin-left:20px;">
                        <%out.println(s5);%>
                      </div></td>
			       </tr>
				   <tr>
					  <td align="left" valign="middle" height="38" style="color: #2c83b0;"><div align="left " class="style14 style4 style3 style9" style="margin-left:20px;"><strong> </strong></div></td>
					  <td><div align="center"><a href="U_Tweet_Comment.jsp?name=<%= s2%>&uname=<%= s7%>&id=<%= i%>">Re-Tweet </a></div></td>
		  </tr>
				   
					 
				<%}
					 }
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
		</table>
	    <p class="style6">&nbsp;</p>
	    
	    
	    
	    <p><a href="U_Main.jsp"><strong>Back</strong></a></p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Sidebar Menu</h2>
          <div class="style3"></div>
          <ul class="sb_menu">
            <li><a href="U_Main.jsp">Home</a></li>
            <li><a href="U_Login.jsp">Logout</a></li>
          </ul>
        </div>
      </div>
      <div class="style3"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
