<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudRegister.aspx.cs" Inherits="admin_StudRegister" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="description" content="multikart">
    <meta name="keywords" content="multikart">
    <meta name="author" content="multikart">


    <!--Google font-->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">

    <!-- Icons -->
    <link rel="stylesheet" type="text/css" href="../assets/css/fontawesome.css">

    <!--Slick slider css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/slick.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/slick-theme.css">

    <!-- Animate icon -->
    <link rel="stylesheet" type="text/css" href="../assets/css/animate.css">

    <!-- Themify icon -->
    <link rel="stylesheet" type="text/css" href="../assets/css/themify-icons.css">

    <!-- Bootstrap css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css">

    <!-- Theme css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/color1.css" media="screen" id="color">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Multikart admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Multikart admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="pixelstrap">

    <title>Balwant College Vita</title>

    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Font Awesome-->
    <link rel="stylesheet" type="text/css" href="../assets/css/fontawesome.css">

    <!-- Flag icon-->
    <link rel="stylesheet" type="text/css" href="../assets/css/flag-icon.css">

    <!-- jsgrid css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/jsgrid.css">

    <!-- Bootstrap css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css">

    <!-- App css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/admin.css">
    <script>

        function allowOnlyNumber(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }
    function phoneNumberCheck(phoneNumber)
{
        var str =phoneNumber
       alert(str.length)
   if(phoneNumber.value.match(regEx))
     {
      return true;
     }
   else
     {
     alert("Please enter a valid phone number.");
     return false;
     }
}    
</script> 
</head>
<body>


<!-- page-wrapper Start-->
<div class="page-wrapper">

    <!-- Page Header Start-->

    <!-- Page Header Ends -->

    <!-- Page Body Start-->
    <div class="page-body-wrapper">

        <!-- Page Sidebar Start-->

        <!-- Page Sidebar Ends-->

        <!-- Right sidebar Start-->
        <div class="right-sidebar" id="right_side_bar">
            <div>
                <div class="container p-0">
                    <div class="modal-header p-l-20 p-r-20">
                        <div class="col-sm-8 p-0">
                            <h6 class="modal-title font-weight-bold">FRIEND LIST</h6>
                        </div>
                        <div class="col-sm-4 text-right p-0"><i class="mr-2" data-feather="settings"></i></div>
                    </div>
                </div>
                <div class="friend-list-search mt-0">
                    <input type="text" placeholder="search friend"><i class="fa fa-search"></i>
                </div>
                <div class="p-l-30 p-r-30">
                    <div class="chat-box">
                        <div class="people-list friend-list">
                            <ul class="list">
                                <li class="clearfix"><img class="rounded-circle user-image" src="../assets/images/dashboard/user.png" alt="">
                                    <div class="status-circle online"></div>
                                    <div class="about">
                                        <div class="name">Vincent Porter</div>
                                        <div class="status"> Online</div>
                                    </div>
                                </li>
                                <li class="clearfix"><img class="rounded-circle user-image" src="../assets/images/dashboard/user1.jpg" alt="">
                                    <div class="status-circle away"></div>
                                    <div class="about">
                                        <div class="name">Ain Chavez</div>
                                        <div class="status"> 28 minutes ago</div>
                                    </div>
                                </li>
                                <li class="clearfix"><img class="rounded-circle user-image" src="../assets/images/dashboard/user2.jpg" alt="">
                                    <div class="status-circle online"></div>
                                    <div class="about">
                                        <div class="name">Kori Thomas</div>
                                        <div class="status"> Online</div>
                                    </div>
                                </li>
                                <li class="clearfix"><img class="rounded-circle user-image" src="../assets/images/dashboard/user3.jpg" alt="">
                                    <div class="status-circle online"></div>
                                    <div class="about">
                                        <div class="name">Erica Hughes</div>
                                        <div class="status"> Online</div>
                                    </div>
                                </li>
                                <li class="clearfix"><img class="rounded-circle user-image" src="../assets/images/dashboard/man.png" alt="">
                                    <div class="status-circle offline"></div>
                                    <div class="about">
                                        <div class="name">Ginger Johnston</div>
                                        <div class="status"> 2 minutes ago</div>
                                    </div>
                                </li>
                                <li class="clearfix"><img class="rounded-circle user-image" src="../assets/images/dashboard/user5.jpg" alt="">
                                    <div class="status-circle away"></div>
                                    <div class="about">
                                        <div class="name">Prasanth Anand</div>
                                        <div class="status"> 2 hour ago</div>
                                    </div>
                                </li>
                                <li class="clearfix"><img class="rounded-circle user-image" src="../assets/images/dashboard/designer.jpg" alt="">
                                    <div class="status-circle online"></div>
                                    <div class="about">
                                        <div class="name">Hileri Jecno</div>
                                        <div class="status"> Online</div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Right sidebar Ends-->

        <div class="page-body">

            <!-- Container-fluid starts-->
            <div class="container-fluid">
                <div class="page-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="page-header-left">
                                <!--<h3>Category
                                    <small>Maangalya Admin panel</small>
                                </h3>-->
                                <h3>Student Registration
                                </h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Container-fluid Ends-->

            <!-- Container-fluid starts-->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card">
                            
                            <section class="register-page section-b-space">
        <div class="container" style="margin-top:0px">
            <div class="row">
                <div class="col-lg-12">
                    <h3>Student Information</h3>
                    <div class="theme-card">
                        <form name="form1" runat="server" class="theme-form">
                            <div class="form-row">
                                <div class="col-md-6">
                                   
                                    <input type="text" class="form-control" id="seat" name="seatno" placeholder="Seat Number"
                                        required="" style="margin-left:0px">
                                </div>

                                <div class="col-md-6">
                                    
                                    <input type="text" class="form-control" id="prn" name="prn" placeholder="PRN Number"
                                        required=""  style="margin-left:0px">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-6">
                                   
                                    <input type="text" class="form-control" id="fname" name="fname" placeholder="First Name"
                                        required="" style="margin-left:0px">
                                </div>

                                <div class="col-md-6">
                                    
                                    <input type="text" class="form-control" id="lname" name="mname" placeholder="Middle Name"
                                        required=""  style="margin-left:0px">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-6">
                                    
                                    <input type="text" class="form-control" id="email" name="lname" placeholder="Last Name" required=""  style="margin-left:0px">
                                </div>


                                <div class="col-md-6">
                                   <asp:DropDownList ID ="DropDownList1" CssClass="form-control" Height="50px" runat="server" style="margin-left:0px; margin-bottom:10px">
                                        <asp:ListItem>< Select Branch ></asp:ListItem>
                                   </asp:DropDownList>

                                </div>
                            </div>
                             <div class="form-row">
                                <div class="col-md-6">
                                   <asp:DropDownList ID ="DropDownList2" CssClass="form-control" Height="50px" runat="server" style="margin-left:0px; margin-bottom:10px">
                                        <asp:ListItem>< Select Year ></asp:ListItem>
                                       <asp:ListItem>First Year</asp:ListItem>
                                       <asp:ListItem>Second Year</asp:ListItem>
                                       <asp:ListItem>Third Year</asp:ListItem>
                                   </asp:DropDownList>

                                </div>
                                <div class="col-md-6">
                                   <asp:DropDownList ID ="DropDownList3" CssClass="form-control" Height="50px" runat="server" style="margin-left:0px; margin-bottom:10px">
                                        <asp:ListItem>< Select Semester ></asp:ListItem>
                                       <asp:ListItem>Sem 1</asp:ListItem>
                                       <asp:ListItem>Sem 2</asp:ListItem>
                                       <asp:ListItem>Sem 3</asp:ListItem>
                                       <asp:ListItem>Sem 4</asp:ListItem>
                                       <asp:ListItem>Sem 5</asp:ListItem>
                                       <asp:ListItem>Sem 6</asp:ListItem>
                                       <asp:ListItem>Sem 7</asp:ListItem>
                                       <asp:ListItem>Sem 8</asp:ListItem>
                                   </asp:DropDownList>

                                </div>
                            </div>
                             <div class="form-row">
                                <div class="col-md-6">
                                    <br />

                                     <input class="form-control" id="email1" name="email" placeholder="Mobile Number" required="" onkeypress="return allowOnlyNumber(event);"  style="margin-left:0px">
                                   
                                </div>


                                <div class="col-md-6">
                                  <br />
                                    <input class="form-control" id="address" name="address" placeholder="Enter Email" required="" style="margin-left:0px">


                                </div>
                            </div>

                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-solid" 
                                   Text="Create Account"/>




                          
                           


                            </form>
                               
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Section ends-->
                             



                        </div>
                    </div>
                </div>
            </div>
            <!-- Container-fluid Ends-->

        </div>

        <!-- footer start-->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6 footer-copyright">
                        <p class="mb-0">Copyright 2020 @ Balwant College Vita</p>
                    </div>
                    <div class="col-md-6">
                        <p class="pull-right mb-0">Hand crafted & made with<i class="fa fa-heart"></i></p>
                    </div>
                </div>
            </div>
        </footer>
        <!-- footer end-->

    </div>

</div>

<!-- latest jquery-->
<script src="../assets/js/jquery-3.3.1.min.js"></script>

<!-- Bootstrap js-->
<script src="../assets/js/popper.min.js"></script>
<script src="../assets/js/bootstrap.js"></script>

<!-- feather icon js-->
<script src="../assets/js/icons/feather-icon/feather.min.js"></script>
<script src="../assets/js/icons/feather-icon/feather-icon.js"></script>

<!-- Sidebar jquery-->
<script src="../assets/js/sidebar-menu.js"></script>

<!--Customizer admin-->
<script src="../assets/js/admin-customizer.js"></script>

<!-- Jsgrid js-->
<script src="../assets/js/jsgrid/jsgrid.min.js"></script>
<script src="../assets/js/jsgrid/griddata-manage-product.js"></script>
<script src="../assets/js/jsgrid/jsgrid-manage-product.js"></script>

<!--right sidebar js-->
<script src="../assets/js/chat-menu.js"></script>

<!--script admin-->
<script src="../assets/js/admin-script.js"></script>

</body>
</html>


