<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Search Friends</title>
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
.style6 {
	color: #FF00FF;
	font-style: italic;
	font-weight: bold;
}
.style7 {font-size: 16px}
.style8 {
	color: #FF00FF;
	font-weight: bold;
}
-->
</style>
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.keyword.value;
if(na3=="")

{
alert("Please Enter User Name");
document.s.keyword.focus();
return false;
}
else
{

}

}
</script>
</head>
<body>
<div class="main style2">
  <div class="header">
    <div class="header_resize">
      <div class="logo style7">
        <h2 align="center" class="style8">Detection of Social Network Spam Based on Improved Extreme Learning Machine</h2>
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
	  
           	 <h2>Search Friends...        </h2>
            
           <form name="s" action="U_SearchFriend.jsp" method="post"  onSubmit="return valid()"  ons target="_top"> 
            <table width="500">
              <tr>
                <td width="150" height="50" bgcolor="#00FFFF"><span class="style6">Enter  Friend Name </span></td>
                <td width="140" bgcolor="#00FFFF"><input type="text" name="keyword" /></td>
                <td width="95"><label>
                <input type="submit" name="Submit" value="Search" />
                </label></td>
              </tr>
            </table>
           </form>
            <%=(String)application.getAttribute("msg1")%>
			<%application.removeAttribute("msg1");%>
            <p align="right">&nbsp;</p>
			<p align="right"><a href="U_FrdSearchReq.jsp" class="style2">Back</a></p>

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
