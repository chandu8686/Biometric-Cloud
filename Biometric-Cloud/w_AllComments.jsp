<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>Digital Sign</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
    <script type="text/javascript" src="js/cufon-yui.js"></script>
    <script type="text/javascript" src="js/cufon-marketingscript.js"></script>
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
    <script type="text/javascript" src="js/coin-slider.min.js"></script>
    <style type="text/css">
        <!-- .style1 {
            font-size: 40px
        }
        
        .style5 {
            font-size: 16px
        }
        
        .style6 {
            font-size: 14px
        }
        
        .style7 {
            color: #000000
        }
        
        .style8 {
            color: #333333
        }
        
        .style9 {
            font-size: 14px;
            color: #000000;
        }
        
        .style10 {
            color: #FFFF00
        }
        
        .style11 {
            font-weight: bold
        }
        
        -->
    </style>
</head>

<body>
    <div class="main">
        <div class="header">
            <div class="header_resize">

                <div class="menu_nav">
                    <ul>
                        <li><a href="index.html"><span>Home</span></a></li>
                        <li><a href="ownerLogin.jsp"><span>Owner</span></a></li>
                        <li><a href="consumerLogin.jsp"><span>User</span></a></li>
                        <li><a href="webServerLogin.jsp"><span>Cloud</span></a></li>

                    </ul>
                </div>
                <div class="clr"></div>
                <div class="logo">
                    <h1><a href="index.html" class="style1">Biometric-Cloud</a></h1>
                </div>
                <div class="clr"></div>
                <div class="slider">
                    <div id="coin-slider">

                        <img src="images/slide1.jpg" width="960" height="460" alt="" />
                        <img src="images/slide2.jpg" width="960" height="460" alt="" />
                        <img src="images/slide3.jpg" width="960" height="460" alt="" />

                    </div>
                    <div class="clr"></div>
                </div>
                <div class="clr"></div>
            </div>
        </div>
        <div class="content">
            <div class="content_resize">
                <div class="mainbar">

                    <div class="article">
                        <h2>All Biometric Image Comments</h2>
                        <p>&nbsp;</p>
                        <div class="clr"></div>




                        <p>
                            <%@ include file="connect.jsp" %>
                                <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
                                    <%

  
      	try 
	{    
          
		   String title,name,rank,user,comment,date;
		   int id = 0;
		   String str1="select * from serverimages order by rank desc "; 
           Statement st1=connection.createStatement();
           ResultSet rs1=st1.executeQuery(str1);
	while ( rs1.next() )
	   {
	     id = rs1.getInt(1);
	     title=rs1.getString(2);
		 name=rs1.getString(3);
		 rank=rs1.getString(9);
	     
		 String encryptedTitle = new String(Base64.decode(title.getBytes()));
		 String encryptedName = new String(Base64.decode(name.getBytes()));
         
%>
                        </p>

                        <table width="510" border="1" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="176" rowspan="5">
                                    <div style="margin:10px 13px 10px 13px;">
                                        <div align="center" class="style8"> <a class="#" id="img1" href="#">
               <input  name="image2" type="image" src="w_ProfilePic.jsp?id=<%=id%>&type=<%="serverimages"%>" style="width:150px; height:150px;"  />
             </a> </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td width="184" height="45" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
                                    <div align="left" class="style10 style5 style16" style="margin-left:20px;"><strong> ID </strong></div>
                                </td>
                                <td width="142" bgcolor="#FF0000"><span class="style15 style10 style6 style7"> &nbsp;&nbsp;<%=id%></span></td>
                            </tr>
                            <tr>
                                <td width="184" height="48" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
                                    <div align="left" class="style10 style5 style16" style="margin-left:20px;"><strong>Image Title </strong></div>
                                </td>
                                <td bgcolor="#FF0000"><span class="style15 style10 style6 style7">&nbsp;&nbsp;<%=encryptedTitle%></span></td>
                            </tr>
                            <tr>
                                <td width="184" height="39" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
                                    <div align="left" class="style10 style5 style16" style="margin-left:20px;"><strong>Image Name </strong></div>
                                </td>
                                <td bgcolor="#FF0000"><span class="style15 style10 style6 style7">&nbsp;&nbsp;<%=encryptedName%></span></td>
                            </tr>
                            <tr>
                                <td width="184" height="25" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
                                    <div align="left" class="style10 style5 style16" style="margin-left:20px;"><strong>Rank</strong></div>
                                </td>
                                <td bgcolor="#FF0000"><span class="style15 style10 style6 style7">&nbsp;&nbsp;<%=rank%></span></td>
                            </tr>

                            </td>
                            </tr>
                            <tr>
                                <td width="144" height="30" colspan="1" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
                                    <div align="center" class="style10 style5 style17"><strong>Commented By</strong></div>
                                </td>
                                <td width="144" height="30" colspan="1" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;">
                                    <div align="center" class="style10 style5 style17"><strong>Comments Details </strong></div>
                                </td>
                                <td width="144" height="30" colspan="1" valign="middle" bgcolor="#FF0000" style="color: #9e4c66;">
                                    <div align="left" class="style16 style10 style5 style11" style="margin-left:20px;">
                                        <div align="center">Date</div>
                                    </div>
                                </td>
                            </tr>
                            <%
   
   
   	   String str2="select * from comment where id="+id+""; 
           Statement st2=connection.createStatement();
           ResultSet rs2=st2.executeQuery(str2);
	while ( rs2.next() )
	   {
	     user=rs2.getString(2);
		 comment=rs2.getString(5);
		 date=rs2.getString(6);
	   
	 %>
                                <tr>
                                    <td height="36">
                                        <div align="center" class="style9"><span class="style15">&nbsp;&nbsp;<%=user%></span></div>
                                    </td>
                                    <td>
                                        <div align="center" class="style9"><span class="style15">&nbsp;&nbsp;<%=comment%></span></div>
                                    </td>
                                    <td>
                                        <div align="center" class="style9"><span class="style15">&nbsp;&nbsp;<%=date%></span></div>
                                    </td>
                                    <tr> </tr>



                                    <%
       	
       
						}
					%>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                        </table>

                        <p>
                            <%
       	
    
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
                                </table>
                        </p>
                        <p align="right"><a href="webServerMain.jsp">Back</a></p>
                        <div class="clr"></div>
                    </div>
                </div>
                <div class="sidebar">
                    <div class="gadget">
                        <h2 class="star"><span></span> Cloud Menu</h2>
                        <div class="clr"></div>
                        <ul class="sb_menu">
                            <li><a href="webServerMain.jsp">Cloud  Main</a></li>
                            <li><a href="webServerLogin.jsp">Log Out</a></li>
                        </ul>
                    </div>
                </div>
                <div class="clr"></div>
            </div>
        </div>
        <div class="fbg"></div>
        <div class="footer">
            <div class="footer_resize">

                <div style="clear:both;"></div>
            </div>
        </div>
    </div>
</body>

</html>