<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>Comment</title>
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
            font-size: 25px;
            color: #333333;
        }
        
        .style11 {
            font-size: 16px
        }
        
        .style13 {
            color: #FFFF00
        }
        
        .style14 {
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
                        <li class="active"><a href="consumerLogin.jsp"><span>User</span></a></li>
                        <li><a href="webServerLogin.jsp"><span>Cloud</span></a></li>

                    </ul>
                </div>
                <div class="clr"></div>
                <div class="logo">
                    <h1><a href="index.html" class="style1">Biometric-Cloud </a></h1>
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

                        <p class="style5">Users Comment</p>
                        <div class="clr"></div>



                        <p>
                            <%@ include file="connect.jsp" %>
                                <%

    
      	try 
	{
      		String name = request.getParameter("name");
			String s2,s3;
			int i=0;
        
           String query="select * from serverimages where name ='"+name+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
	
	
		   %>
                        </p>
                        <p>
                            <form action="c_Comment1.jsp" method="post" name="form1">
                                <div align="center" class="style1">
                                    <p>&nbsp;</p>
                                    <table width="465" border="0">
                                        <tr>
                                            <td width="245" bgcolor="#FF0000">
                                                <div align="center" class="style13 style11 style8"><strong> ID </strong></div>
                                            </td>
                                            <td width="210"><label>
          <input type="text" name="t" value="<%=i%>" readonly>
        </label></td>
                                        </tr>
                                        <tr>
                                            <td bgcolor="#FF0000">
                                                <div align="center" class="style13 style11 style8"><strong>Biometric Image Title </strong></div>
                                            </td>
                                            <td><label>
          <input type="text" name="t1" value="<%=s2%>" readonly>
        </label></td>
                                        </tr>
                                        <tr>
                                            <td bgcolor="#FF0000">
                                                <div align="center" class="style13 style11 style8"><strong>Biometric Image Name </strong></div>
                                            </td>
                                            <td><label>
          <input type="text" name="t2" value="<%=s3%>" readonly>
        </label></td>
                                        </tr>
                                        <tr>
                                            <td bgcolor="#FF0000">
                                                <div align="center" class="style13 style11 style8"><strong>Comment</strong></div>
                                            </td>
                                            <td><textarea name="t3"></textarea></td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td><label>
          <input type="submit" name="Submit" value="Comment">
        </label></td>
                                        </tr>
                                    </table>
                                    <p>&nbsp; </p>
                                </div>
                            </form>
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
                            </P>
                            <p align="right"><a href="consumerMain.jsp">Back</a></p>
                            <div class="clr"></div>
                    </div>
                </div>
                <div class="sidebar">
                    <div class="gadget">
                        <h2 class="star"><span></span> User Menu</h2>

                        <ul class="sb_menu style14">
                            <li><a href="consumerMain.jsp">User  Main</a></li>
                            <li><a href="consumerLogin.jsp">Log Out </a></li>
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