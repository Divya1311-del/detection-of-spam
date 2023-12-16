<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View_All_Offensive</title>
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
.style5 {
	font-size: 36px;
	color: #FF00FF;
}
.style6 {
	font-size: 18px;
	font-weight: bold;
}
.style7 {color: #FFFFFF}
.style9 {font-weight: bold}
.style10 {font-size: 12px}
.style11 {font-weight: bold}
.style12 {font-weight: bold}
.style13 {font-size: 14px}
-->
</style>
</head>
<body>
<div class="main style2">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h2 align="center" class="style5 style7 style6">Detection of Social Network Spam Based on Improved Extreme Learning Machine</h2>
      </div>
      <div class="searchform"></div>
      <div class="style3"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html">Home Page</a></li>
          <li class="active"><a href="A_Login.jsp">Admin</a></li>
          <li><a href="U_Login.jsp">User</a></li>
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
	  <h2>View All Spam Reviews...</h2>
	  <p>&nbsp;</p>
	  <%@ include file="connect.jsp"%>
	  
	  <table width="778" border="1">
				  
				  <tr>
				  <td width="244" height="55" bgcolor="#FF0000" ><div align="left" class="style4 style5 style35 style1 style2 style9">
						<div align="center" class="style1 style7  style10">Tweet Name </div>
					</div></td>
					<td width="244" bgcolor="#FF0000" ><div align="left" class="style4 style5 style35 style1 style2 style9">
						<div align="center" class="style1 style7  style10">Commented User </div>
					</div></td>
					<td width="230" bgcolor="#FF0000" ><div align="left" class="style4 style36 style1 style2 style11">
						<div align="center">Tweet Comment</div>
					</div></td>
					<td width="266" bgcolor="#FF0000"><div align="left" class="style37 style4 style1 style12">
						<div align="center">Commented Date</div>
					</div></td>
				  </tr>

<%
		   			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="", pos="Spam",s22="" ;
	int i=0,poscnt=0,negcnt=0,strcnt=0;
	int count1=0;
	String ftype="Spam";
	
	try
	{
			String sql3="select tname,user from tweets";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s1=rs3.getString(1);
			   s7=rs3.getString(2);
			   int count=0;
			%>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {
	font-weight: bold;
	color: #FFFFFF;
}
.style4 {font-weight: bold}
.style5 {color: #FF0000}
.style6 {color: #FF0000; font-weight: bold; }
-->
</style>

	
				 
				  <%

				  String query="select * from comments where tweet_name='"+s1+"' "; 
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
			   {
					i=rs.getInt(1);
					s2=rs.getString(2); //uname
					s22=rs.getString(3); //tname
					s3=rs.getString(4).toLowerCase();  // comment post 
					s5=rs.getString(5);  // Date
					
					count++;

			   
			       String sql1="select * from filter where tctype='"+pos+"' ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t1=rs1.getString(1);
			             String t2=rs1.getString(2).toLowerCase();
			   			 	
							  if ((s3.contains(t2)))
									{ 
	
			                 count1++;
									 %>
							  <tr>
							  <td width="266" height="0"  style="color:#000000;"><div align="center" class="style32 style5 style13"><strong><%=s1%></strong></div></td>
								<td width="244" height="0" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style1 style13"><strong><a href="A_User_Profile1.jsp?uname=<%=s2%>"> <%=s2%></a></strong></div></td>
								<td width="230" height="0"  style="color:#000000;"><div align="center" class="style32 style5 style13"><strong><%=s3%></strong></div></td>
								<td width="266" height="0"  style="color:#000000;"><div align="center" class="style32 style5 style13"><strong><%=s5%></strong></div></td>
			  <td width="10" height="0"  style="color:#000000;"><div align="center">			  </tr>
							  				
		    <%   					}

					      }
			      }
			        
			
				
				}
				
				 String sql11="Update results set fcount="+count1+" where ftype='"+ftype+"' ";
					Statement st11=connection.createStatement();
			  		st11.executeUpdate(sql11);
				
   			
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table>

		 
	  <p>&nbsp;</p>
	  <p>&nbsp;</p>
	  <p align="right"><a href="A_Main.jsp" class="style2"><strong>Back</strong></a></p>
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
