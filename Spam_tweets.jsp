<%@ include file="connect.jsp" %>
            <%@ page import="java.io.*"%>
            <%@ page import="java.util.*" %>
            <%@ page import="java.util.Date" %>
            <%@ page import="com.oreilly.servlet.*"%>
            <%@ page import ="java.text.SimpleDateFormat" %>
            <%@ page import ="javax.crypto.Cipher" %>
            <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
            <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
            <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
            <style type="text/css">
<!--
.style2 {color: #FFFF00}
-->
            </style>
            

   <table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0" >
			<tr>
				 <td  width="108" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style8"><strong>Created User </strong></div></td>
				  <td  width="109" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style8"><strong>Tweet Image </strong></div></td>
				  <td  width="96" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style8"><strong>Tweet Name</strong></div></td>
				  <td   width="150" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style8"><strong>Description</strong></div></td>
				  <td  width="123" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style8"><strong>Created Date and Time </strong></div></td>
	 </tr>

<%
		   			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="", pos="Spam",s22="" ;
	int i=0,poscnt=0,negcnt=0,strcnt=0;
	int count1=0,pid;
	String ftype="Spam";
	
	try
	{
			String sql3="select * from tweets";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			  i=rs3.getInt(1);
		s2=rs3.getString(2);
		s3=rs3.getString(3);
		s4=rs3.getString(4).toLowerCase();// tweet Desc
		s5=rs3.getString(5);
		s6=rs3.getString(6);
		s7=rs3.getString(7);
			%>
<style type="text/css">
<!--
.style2 {
	font-weight: bold;
	color: #FFFFFF;
}
.style4 {font-weight: bold}
.style5 {color: #FF0000}
-->
</style>
       
				 
				  <%
				  
				 
			   
			       String sql1="select * from filter where tctype='"+pos+"' ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t1=rs1.getString(1);
			             String t2=rs1.getString(2).toLowerCase();  // Filter
			   			 	
							  if ((s4.contains(t2)))
									{ 
	
			                 count1++;
									 %>
							<tr>
		
	    <td  width="108" height="110" align="center" valign="middle" style="color:#000000;"><div align="center" class="style9"><%=s7%></div></td>	
	   	<td width="109"><input  name="image" type="image" style="width:100px; height:100px;" src="profile_pic.jsp?id=<%=i%>&type=<%="tweet"%>"/></td>
			  <td  width="96" height="110" align="center" valign="middle" style="color:#000000;"><div align="center" class="style9"><%out.println(s2);%></div></td>	
			  <td  width="150" height="110" align="center" valign="middle"><div align="center" class="style9"><%out.println(s4);%></div></td>
			  <td  width="123" align="center" valign="middle"><div align="center" class="style9"><%out.println(s5);%></div></td>
			</tr>
							  				
	    <%   					

					      }
			      }
			        
			
				
				}
				
   			
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table>
        