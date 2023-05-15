<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
           background-image:url("../assets/balwantcollage/slider5.jpg");
           background-repeat:no-repeat;
            background-attachment:fixed;
            background-size:cover;
        }
        #img{
            width:500px;
            height:80px;
            background-color:aqua;
            opacity:0.8;
            margin-top: 280px;
            margin-left: 500px;
            padding-top:34px;

        }
       
        ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  /*background-color:antiquewhite;*/
 
  overflow: hidden;
  
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 15px 10px;
  margin-right:8px;
  margin-left:14px;
  text-decoration: none;
  font-size:16px;
  font-weight:bold;
  background-color:brown;
    border-radius:10px;
 
}


    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="img">
       <%-- <h1><a id="anchor" href="admin/Default.aspx">Admin Login</a></h1>--%>
         <ul>
            
        <li ><a href="../admin/Default.aspx">ADMIN LOGIN</a></li>
        <li ><a href="../staff/Default.aspx">STAFF LOGIN</a></li>
        <li ><a href="../student/Default.aspx">STUDENT LOGIN</a></li>
        
      </ul>

    </div>
    </form>
</body>
</html>
