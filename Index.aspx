<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" EnableEventValidation="false" CodeFile="Index.aspx.cs" Inherits="Index" %>

<%@ Register Assembly="GoogleReCaptcha" Namespace="GoogleReCaptcha" TagPrefix="cc1" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" href="images/eConnectLogo1.ico" />
    <title>eConnect-K12 | Cloud based School Management ERP Software with mobile app for student, parent, teacher and management</title>
    <meta name="description" content="eConnect K-12 School-ERP is an integrated suites of solutions for educational institutions It offers most comprehensive modules that run at back-office of the institutions and cover entire student management, fee management, library, examination and financial accounting functions." />
    <meta name="keywords" content="Jupsoft, econnect, cloud, ERP, k12, school erp, ERP, Best School ERP, Best school educational ERP, Awesome ERP, Awesome feature ERP, Best feature ERP" />
    <meta name="author" content="Jupsoft Technologies Pvt. Ltd." />
    <script src='https://www.google.com/recaptcha/api.js'></script>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext" rel="stylesheet" />
    <link rel="stylesheet" href="style.css" />
    <link href="css/navbar.css" rel="stylesheet" />
    <script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
    <script type="text/javascript">
        function showpopup() {
            var login = document.getElementById('login-dp');
            login.style.display = 'initial';

        }
    </script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-34577062-6"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-34577062-6');
    </script>
</head>

<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="sm1" runat="server"></asp:ScriptManager>
        <script type="text/javascript">
            /* <![CDATA[ */
            var google_conversion_id = 1005973384;
            var google_custom_params = window.google_tag_params;
            var google_remarketing_only = true;
            /* ]]> */
        </script>
        <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
        </script>
        <noscript>
            <div style="display: inline;">
                <img height="1" width="1" style="border-style: none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/1005973384/?guid=ON&amp;script=0" />
            </div>
        </noscript>
        <header class="navbar-fixed-top back-white">
            <nav>
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <img src="images/menu.png">
                        </button>
                        <a class="logo" href="index.aspx">
                            <img src="images/E-connect-K12.png" />
                        </a>
                        <div class="call">
                            <a href="tel: +919599520064" target="_top"><i class="fa fa-phone"></i></a>
                        </div>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a class="hvr-underline-from-center smoothScroll" href="#module">Module</a>
                            </li>
                            <li><a class="hvr-underline-from-center smoothScroll" href="#feature">Feature</a>
                            </li>
                            <li><a class="hvr-underline-from-center smoothScroll" href="#advantage">Advantage</a>
                            </li>
                            <li><a class="hvr-underline-from-center smoothScroll" href="#about">About Us</a>
                            </li>
                            <div class="dropdown navbar-collapse navbar-right open hidden-xs margin-top-7">
                                <a href="#" data-toggle="dropdown">
                                    <button onclick="showpopup();" class="btn btn-primary navbar-btn">Drop Us @ Message</button>
                                </a>
                                <ul id="login-dp" class="dropdown-menu a">
                                    <li>
                                        <div class="row">
                                            <div class="col-md-12 ">
                                                <div class="form-group ">
                                                    <label class="sr-only" for="exampleInputEmail2">Name</label>
                                                    <asp:TextBox name="txtname" ID="txtname" class="form-control" placeholder="Enter your name" type="text" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="valName" ControlToValidate="txtName" runat="server" Display="Dynamic" SetFocusOnError="true" ValidationGroup="btn-desktop" ErrorMessage="*Required" ForeColor="Red" />
                                                </div>
                                                <div class="form-group">
                                                    <label class="sr-only" for="exampleInputEmail2">Email</label>
                                                    <asp:TextBox name="txtemailid" ID="txtemailid" class="form-control" placeholder="Email@example.com" type="email" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="valEmail" ControlToValidate="txtemailid" runat="server" Display="Dynamic" SetFocusOnError="true" ValidationGroup="btn-desktop" ErrorMessage="*Required" ForeColor="Red" />
                                                    <asp:RegularExpressionValidator ID="valEmailid" ControlToValidate="txtemailid" runat="server" Display="Dynamic" SetFocusOnError="true" ValidationGroup="btn-desktop" ErrorMessage="*Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" />
                                                </div>
                                                <div class="form-group">
                                                    <label class="sr-only" for="exampleInputEmail2">Mobile Number</label>
                                                    <asp:TextBox name="txtphone" MaxLength="10" ID="txtphone" class="form-control" placeholder="Enter your Mobile Number" type="tel" onkeypress="return onlyNumbers(event)" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="valPhone" ControlToValidate="txtphone" runat="server" Display="Dynamic" SetFocusOnError="true" ValidationGroup="btn-desktop" ErrorMessage="*Required" ForeColor="Red" />
                                                    <asp:Label ID="lblbody" runat="server" Text="Thank you for your enquiry for Jupsoft eConnect-K12. Cloud based ERP for Schools. We will reach you soon. &#13;Jupsoft - Manoj 9599520064" CssClass="hide"></asp:Label>
                                                    <asp:Label ID="lblbodyvCard" runat="server" Text="Best Cloud based student management ERP eConnectK12. Save our contact for future reference: https://goo.gl/Re8E7H . &#13;Team Jupsoft eConnect" CssClass="hide"></asp:Label>
                                                </div>
                                                <div class="form-group">
                                                    <label class="sr-only" for="exampleInputEmail2">Message</label>
                                                    <asp:TextBox name="txtmessage" ID="txtmessage" class="form-control" placeholder="Glad to hear from you.." type="text" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="valText" ControlToValidate="txtmessage" runat="server" Display="Dynamic" SetFocusOnError="true" ValidationGroup="btn-desktop" ErrorMessage="*Required" ForeColor="Red" />
                                                </div>
                                                <div class="form-group">
                                                    <asp:Panel ID="Panel1" runat="server"></asp:Panel>
                                                    <%--<cc1:GoogleReCaptcha ID="ctrlGoogleReCaptcha" runat="server" PublicKey="6LcEyzAUAAAAAEg_bEfVmZzWn8bwoPsME5Iua2qK" PrivateKey="6LcEyzAUAAAAAM7QE1shDdmkN-BqRq9QiQnWG_LC" />--%>
                                                    <%--<cc1:GoogleReCaptcha ID="ctrlGoogleReCaptcha" runat="server" PublicKey="6LcEyzAUAAAAAEg_bEfVmZzWn8bwoPsME5Iua2qK" PrivateKey="6LcEyzAUAAAAAM7QE1shDdmkN-BqRq9QiQnWG_LC" />--%>
                                                    <asp:Label ID="Label1" runat="server" Text="" ForeColor="#e84c3d"></asp:Label>
                                                    <%-- <div class="g-recaptcha" data-sitekey="6LcEyzAUAAAAAEg_bEfVmZzWn8bwoPsME5Iua2qK"></div>--%>
                                                </div>
                                            </div>
                                            <div class="bottom text-center">
                                                <div class="form-group">
                                                    <asp:Button ID="btnsubmit" class="btn btn-success btn-block" runat="server" Text="Send" ValidationGroup="btn-desktop" OnClick="btnsubmit_Click" />
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <section class="banner">
            <%--<img src="images/econnect-banner-modified.png" class="img-responsive banner-image" />--%>
            <%--<img src="images/republic-day-18-econnect-school-management-software.jpg" class="img-responsive banner-image" />--%>
            <img src="images/1366.png" class="img-responsive banner-image" />
        </section>
        <%-- Mobile view --%>
        <section id="mobile-view">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12 ">
                        <h3>Drop Us a message</h3>
                    </div>
                    <div class="col-md-12 ">
                        <div class="form-group ">
                            <label class="sr-only" for="exampleInputEmail2">Name</label>
                            <asp:TextBox name="txtname" ID="txtname1" class="form-control" placeholder="Enter your name" type="text" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="valName1" ControlToValidate="txtName1" runat="server" Display="Dynamic" SetFocusOnError="true" ValidationGroup="btn-mobile" ErrorMessage="*Required" ForeColor="Red" />
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="exampleInputEmail2">Email</label>
                            <asp:TextBox name="txtemailid" ID="txtemailid1" class="form-control" placeholder="Email@example.com" type="email" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="valEmail1" ControlToValidate="txtemailid1" runat="server" Display="Dynamic" SetFocusOnError="true" ValidationGroup="btn-mobile" ErrorMessage="*Required" ForeColor="Red" />
                            <asp:RegularExpressionValidator ID="valEmailid1" ControlToValidate="txtemailid1" runat="server" Display="Dynamic" SetFocusOnError="true" ValidationGroup="btn-mobile" ErrorMessage="*Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" />
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="exampleInputEmail2">Mobile Number</label>
                            <asp:TextBox name="txtphone" MaxLength="10" ID="txtphone1" class="form-control" placeholder="Enter your Mobile Number" type="tel" onkeypress="return onlyNumbers(event)" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="valPhone1" ControlToValidate="txtphone1" runat="server" Display="Dynamic" SetFocusOnError="true" ValidationGroup="btn-mobile" ErrorMessage="*Required" ForeColor="Red" />
                            <asp:Label ID="lblbody1" runat="server" Text="Thank you for your enquiry for Jupsoft eConnect-K12. Cloud based ERP for Schools. We will reach you soon. &#13;Jupsoft - Manoj 9599520064" CssClass="hide"></asp:Label>
                            <asp:Label ID="lblbodyvCard1" runat="server" Text="Best Cloud based student management ERP - eConnectK12. Save our contact for future reference: https://goo.gl/Re8E7H Team. &#13;Jupsoft eConnect" CssClass="hide"></asp:Label>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="exampleInputEmail2">Message</label>
                            <asp:TextBox name="txtmessage" ID="txtmessage1" class="form-control" placeholder="Glad to hear from you.." type="text" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="valText1" ControlToValidate="txtmessage1" runat="server" Display="Dynamic" SetFocusOnError="true" ValidationGroup="btn-mobile" ErrorMessage="*Required" ForeColor="Red" />
                        </div>
                        <div class="form-group">
                            <center>
									<asp:Panel ID="Panel11" runat="server"></asp:Panel>
									<asp:Label ID="Label11" runat="server" Text="" ForeColor="#e84c3d"></asp:Label>
								</center>
                        </div>
                    </div>
                    <div class="bottom text-center">
                        <div class="form-group">
                            <asp:Button ID="btnsubmit1" class="btn btn-success btn-lg width-50p" runat="server" ValidationGroup="btn-mobile" Text="Send" OnClick="btnsubmit_Click1" />
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="trusted-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 company-content">
                        <h2 class="text-center">What is Jupsoft eConnect</h2>
                        <p class="text-center font-grey jupsoft-heading">Jupsoft eConnect-K12 is a revolutionary school management ERP system that aims to simplify, accelerate organize and coordinate the daily processes that are a part of any school’s functioning. It is an advanced ERP software that is exceptionally efficient, secure, systematic and also easy to use. It will connect, collect, integrate and interpret information from different departments and manage functions and processes across your school at a central point, to enable effective decision making – making way for progress.</p>
                        <p class="text-center font-grey jupsoft-heading">
                            It reduces paperwork tremendously and is capable of handling administration, infrastructure and logistics of any school. It allows you to share, search and store information easily and safely, which saves time and money while increasing efficiency and accuracy. What’s more, you need not make changes to your existing infrastructure to install this school automation system! You may select the features and modules that best suit your requirement and can add on as and when required. <b style="color: #e84c3d !important">It is totally flexible and adaptable!</b>
                        </p>
                    </div>
                    <div class="col-sm-6">
                        <iframe style="width: 100%; height: 350px; margin: 55px 0;" src="https://www.youtube.com/embed/iMQZ1b4ZviY" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
            <div class="container-fluid trusted">
                <div class="row">
                    <div class="col-sm-12 trusted">
                        <h2>Trusted By</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-5 col-sm-offset-1">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-sm-5 col-sm-offset-1 text-center">
                                    <img src="images/schoolgray.png" class="img-rounded ">
                                </div>
                                <div class="col-sm-5 right-content">
                                    <h3 class="font-red">250+ <span>Schools & Colleges</span>
                                    </h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-5">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-sm-5 text-center">
                                    <img src="images/facultygray.png" class="img-rounded">
                                </div>
                                <div class="col-sm-5 text-left right-content">
                                    <h3>500 Thousand+<span>Students & Teachers</span>
                                    </h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="module-wrapper" id="module">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 module">
                        <center>
								<h2>Modules </h2>
								<h3 class="font-red">Everything your institution will ever need!</h3>
							</center>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="school-mngmt">
                            <figure>
                                <img src="images/icon-school.png" class="img-rounded">
                            </figure>
                            <div class="school-content-row">
                                <h3>School Management</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="school-mngmt">
                            <figure>
                                <img src="images/icon-timetable.png" class="img-rounded">
                            </figure>
                            <div class="school-content-row">
                                <h3>Timetable & scheduling</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="school-mngmt">
                            <figure>
                                <img src="images/icon-grade.png" class="img-rounded">
                            </figure>
                            <div class="school-content-row">
                                <h3>Gradebook & reports</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="school-mngmt">
                            <figure>
                                <img src="images/card.png" class="img-rounded">
                            </figure>
                            <div class="school-content-row">
                                <h3>Smart Card Access</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="school-mngmt">
                            <figure>
                                <img src="images/icon-parent.png" class="img-rounded">
                            </figure>
                            <div class="school-content-row">
                                <h3>Parent teacher collaboration</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="school-mngmt">
                            <figure>
                                <img src="images/icon-lib.png" class="img-rounded">
                            </figure>
                            <div class="school-content-row">
                                <h3>Library management</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="school-mngmt">
                            <figure>
                                <img src="images/icon-exam.png" class="img-rounded">
                            </figure>
                            <div class="school-content-row">
                                <h3>Online examination </h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="school-mngmt">
                            <figure>
                                <img src="images/icon-fee1.png" class="img-rounded">
                            </figure>
                            <div class="school-content-row">
                                <h3>Online fee payment portal</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 awesome-modul">
                        <h3>15+ other awesome modules in Jupsoft eConnect-K12</h3>
                        <p>
                            <center> <a href="#openModal" data-toggle="modal" data-target="#openModal" class="btn btn-danger btn-lg hidden-xs">Explore All Modules!</a>
									<a href="http://www.schoolmanagementsoftware.in/School-management-erp" target="_blank" id="explorebtn" class="btn btn-danger btn-lg">Explore All Modules!</a>
								</center>
                        </p>
                    </div>
                </div>
            </div>
        </section>
        <section class="feature-econnect" id="feature">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="online-portal">
                            <h2>eConnect K12 Features</h2>
                            <h3 class="font-red text-center-p">Jupsoft eConnect-K12 has every feature you will ever need to run your institution efficiently.</h3>
                        </div>
                    </div>
                </div>
                <p>&nbsp;</p>
                <div class="row">
                    <div class="col-sm-3">
                        <img src="Images/Image4.png" class="img-responsive img-center">
                        <h4>Always Accessible</h4>
                        <p>You can log in from any place from your computer, mobile phone or tablet.</p>
                    </div>
                    <div class="col-sm-3">
                        <img src="Images/Image1.png" class="img-responsive img-center">
                        <h4>Always Up-To-Date</h4>
                        <p>You’re always using the latest version with automatic updates.</p>
                    </div>
                    <div class="col-sm-3">
                        <img src="Images/Image2.png" class="img-responsive img-center">
                        <h4>Always Secure</h4>
                        <p>Security system on par with internet banking ensures your data is safe with us.</p>
                    </div>
                    <div class="col-sm-3">
                        <img src="images/Image3.png" class="img-responsive img-center">
                        <h4>Always Backed Up</h4>
                        <p>Your data is backed up, so if your computer crashes – your work doesn’t.</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3">
                        <img src="images/role-base-icon.png" class="img-responsive img-center">
                        <h4>Role Based Dashboard</h4>
                        <p>You shall be provided with multiple dashboard, for every department.</p>
                    </div>
                    <div class="col-sm-3">
                        <img src="images/paperless.png" class="img-responsive img-center">
                        <h4>Paperless</h4>
                        <p>Go green, Go paperless.</p>
                    </div>
                    <div class="col-sm-3">
                        <img src="images/multiple-device.png" class="img-responsive img-center">
                        <h4>Support Multiple Devices</h4>
                        <p>You can access you ERP from any device, any time.</p>
                    </div>
                    <div class="col-sm-3">
                        <img src="images/multiple-os.png" class="img-responsive img-center">
                        <h4>Multiple OS</h4>
                        <p>You can access your data from any os either its windows, mac or linux.</p>
                    </div>
                </div>
                <p>&nbsp;</p>
                <div class="row">
                    <div class="col-sm-12">
                        <center> <a href="http://www.schoolmanagementsoftware.in/why-econnect" class="btn btn-success btn-lg" target="_blank">99 Reasons to 'Why eConnect'</a>
							</center>
                    </div>
                </div>
                <%--<div class="row">
						<div class="col-sm-4">
							<div class="online-portal-content">
								<div class="left-arrow">Available on Cloud</div>
								<div class="left-arrow">Browser based application</div>
								<div class="left-arrow">Barcode based book tracking record</div>
								<div class="left-arrow">Easy integration with online
									<br />payment gateway</div>
								</ul>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="online-portal-img" data-wow-delay=".35s" class="wow wobble" style="visibility: visible; animation-delay: 0.35s; animation-name: wobble;">
								<img src="images/man.png" class="img-rounded man-img swing img-responsive">
							</div>
						</div>
						<div class="col-sm-4">
							<div class="online-portal-content">
								<div class="right-arrow">Access to Worksheets</div>
								<div class="right-arrow">Manage admission Process</div>
								<div class="right-arrow">Linked to School and Alumni Website</div>
								<div class="right-arrow">Multi-user LocalHost/Online interface</div>
								</ul>
							</div>
						</div>
						<div class="col-sm-12">
							<p class="simple-content">Simple, Powerful & Affordable School Management System</p>
						</div>
				</div>--%>
            </div>
        </section>
        <section class="app-feature-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="app-feature">
                            <h2>Mobile App</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <div class="app-feature-content right">
                            <h2>School Diary</h2>
                            <p>A complete timeline view of informational, homework, fees, results related information being sent by the school on a regular basis!</p>
                            <h2>Bus Tracking</h2>
                            <p>Know the exact location of the bus in which your child is traveling in real time on a map.</p>
                            <h2>Fee</h2>
                            <p>Make fee payments on mobile. Track fees schedule, fee paid, upcoming installment and pending installments for all the fee to be paid!</p>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="app-feature-content1 ">
                            <img src="images/iphone-app.png" class="img-responsive ht-450">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="app-feature-content">
                            <h2>Attendence</h2>
                            <p>Track student attendance and inform parents instantly about child absence.</p>
                            <br />
                            <h2>Library</h2>
                            <p>Account for every book. Enable patrons to browse through the library and check availability.</p>
                            <h2>Result</h2>
                            <p>Stay informed about your scholar's performance!</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 k-12link">
                        <h3>The Jupsoft eConnect-K12 App is a revolutionary mobile/tablet communication tool between a school, its students and their parents which helps keep the parents informed, happy and impressed.
                        </h3>
                        <p class="available-p">Available on</p>
                    </div>
                    <div class="col-sm-4 col-sm-offset-4">
                        <img src="images/google-apple-windows.png" class="img-responsive" />
                    </div>
                </div>
            </div>
        </section>
        <section class="scalability">
            <div class="container">
                <div class="row">
                    <h2 class="text-center">Scalability</h2>
                    <div class="col-sm-6 text-center">
                        <h3 class="font-red">Multiple Users</h3>
                        <img src="images/scalability-multiple-user.png" class="img-responsive" alt="Multiple Users" />
                    </div>
                    <div class="col-sm-6 text-center">
                        <h3 class="font-red">Multiple Locations</h3>
                        <img src="images/scalability-multiple-locations.png" class="img-responsive" alt="Multiple Locations" />
                    </div>
                </div>
            </div>
        </section>
        <section class="advantage-wrapper" id="advantage">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 advantage-head">
                        <h2>Advantage eConnect-K12</h2>
                        <h4>Manage your school with the most advanced, powerful and intuitive school management software</h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <div class="advantge-content">
                            <img src="images/tally.png" class="img-responsive">
                            <h2>Tally Integration</h2>
                            <p>Manage your school with the most advanced, powerful and intuitive school management software</p>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="advantge-content">
                            <img src="images/gps.png" class="img-responsive">
                            <h2>GPS Integration</h2>
                            <p>Track your school fleet in real-time on any device. Stay informed and Stay hassle-free.</p>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="advantge-content">
                            <img src="images/tool.png" class="img-responsive">
                            <h2>Stress-free Implementation</h2>
                            <p>Every school is different. That's why customized implementation of Jupsoft ERP for your school.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="preferred-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="preferred-by">
                            <h2>Preferred By</h2>
                            <h4 class="font-red">Some of the most progressive schools in India use Jupsoft eConnect-K12 to simplify school management!</h4>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div id="myCarousel" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                                <li data-target="#myCarousel" data-slide-to="3"></li>
                            </ol>
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner height-a" role="listbox">
                                <div class="item active">
                                    <div class="row">
                                        <div class="col-sm-3 col-xs-6 text-center">
                                            <img src="images/mothers-global-school.png" alt="Image" class="img-responsive ">
                                        </div>
                                        <div class="col-sm-3 col-xs-6 text-center">
                                            <img src="images/vanasthali-public-school.png" alt="Image" class="img-responsive">
                                        </div>
                                        <div class="col-sm-3 col-xs-6 text-center">
                                            <img src="images/nestling-nippers.png" alt="Image" class="img-responsive">
                                        </div>
                                        <div class="col-sm-3 col-xs-6 text-center">
                                            <img src="images/sneh-international-school.png" alt="Image" class="img-responsive">
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="row">
                                        <div class="col-sm-3 col-xs-6 text-center">
                                            <img src="images/hill.png" alt="Image" class="img-responsive">
                                        </div>
                                        <div class="col-sm-3 col-xs-6 text-center">
                                            <img src="images/little.png" alt="Image" class="img-responsive">
                                        </div>
                                        <div class="col-sm-3 col-xs-6 text-center">
                                            <img src="images/sri.png" alt="Image" class="img-responsive">
                                        </div>
                                        <div class="col-sm-3 col-xs-6 text-center">
                                            <img src="images/st-icon.png" alt="Image" class="img-responsive">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="built-apps">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="built-apps-content">
                            <h2>Integrated Features</h2>
                            <ul class="list-item-main">
                                <li>
                                    <a href="#" data-toggle="tooltip" title="Mobile Alert Notification">
                                        <img src="images/sms.png" alt="SMS">
                                        <p>SMS</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" data-toggle="tooltip" title="Mail Updation">
                                        <img src="images/mail.png" alt="Mail">
                                        <p>eMail</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" data-toggle="tooltip" title="Finger Print Security">
                                        <img src="images/bio1.png" alt="Biometric">
                                        <p>Biometric</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" data-toggle="tooltip" title="App Integration">
                                        <img src="images/app.png" alt="Android App">
                                        <p>Android App</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" data-toggle="tooltip" title="Barcode Tracking">
                                        <img src="images/barcode.png" alt="Barcode">
                                        <p>Barcode</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" data-toggle="tooltip" title="Website Dynamic Portal">
                                        <img src="images/website.png" alt="Website">
                                        <p>Website</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" data-toggle="tooltip" title="Tally Two-way Integrated">
                                        <img src="images/tally1.png" alt="Tally">
                                        <p>Tally</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" data-toggle="tooltip" title="GPS Tracking">
                                        <img src="images/gps1.png" alt="GPS">
                                        <p>GPS</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" data-toggle="tooltip" title="Smart Card Access">
                                        <img src="images/card.png" alt="Smart Card">
                                        <p>SmartCard</p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="company-wrapper" id="about">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="company-content">
                            <h2>The Company</h2>
                            <h3 class="font-red text-center">We believe in what we do!</h3>
                            <div class="center-pad">
                                <img src="images/bulb.gif" class="img-ht">
                            </div>
                            <p>Established in 2004 by a team of young expert software professionals, Jupsoft is one of IT majors today in providing educational institutions integrated modules to manage all the processes online. Consistently delivering mission, our team has been delivering technically challenging projects under tight timeliness, while also providing exceptional customer service and support to our clientele. This in turn has led to extremely positive long-term working relationships all over. Our detailed project process was created to ensure our projects are completed on-time, on-budget, and to our clients complete satisfaction.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-5">
                        <div class="footer-content">
                            <div class="row">
                                <div class="col-sm-12">
                                    <h3>Discuss your project with us.</h3>
                                </div>
                                <div class="col-sm-12">
                                    <h4>A team focused to work for client's benefits and providing value added services with every products and solutions.</h4>
                                </div>
                                <div class="col-xs-4 col-sm-4">
                                    <p>
                                        <span>E-mail:</span>
                                    </p>
                                </div>
                                <div class="col-xs-8 col-sm-8">
                                    <p>sales@jupsoft.com</p>
                                </div>
                                <div class="col-xs-4 col-sm-4">
                                    <p>
                                        <span>Web: </span>
                                    </p>
                                </div>
                                <div class="col-xs-8 col-sm-8">
                                    <p class="padding-bottom-0">
                                        <a href="https://www.jupsoft.com" target="_blank">www.jupsoft.com</a>
                                    </p>
                                    <p class="font-size-12">
                                        <a href="http://schoolmanagementsoftware.in" target="_blank">www.schoolmanagementsoftware.in</a>
                                    </p>
                                </div>
                                <div class="col-xs-4 col-sm-4">
                                    <p>
                                        <span>Phone: </span>
                                    </p>
                                </div>
                                <div class="col-xs-8 col-sm-8">
                                    <p>+91 9871700064</p>
                                    <p class="margin-top-20">+91 9599520064</p>
                                </div>
                                <div class="col-xs-4 col-sm-4">
                                    <p>
                                        <span>Address: </span>
                                    </p>
                                </div>
                                <div class="col-xs-8 col-sm-8">
                                    <p>
                                        Jupsoft Technologies Pvt. Ltd.
											<br />
                                        (An ISO 9001:2008 Certified Company)
											<br />
                                        B-75, First Floor, Sector 6, Noida, Uttar Pradesh 201301 (India)
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-7 text-center-mobile margin-top-20">
                        <!--<h3 class="white">We are online<span class="open-blink"></span></h3>-->
                        <iframe style="border-radius: 5px" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3503.255565721623!2d77.31432481508168!3d28.592108982433817!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cfcad8b19be71%3A0xfe9a04da30426f26!2sJupsoft+Technologies+Private+Limited!5e0!3m2!1sen!2sin!4v1480400264522" width="100% " height="350" frameborder="0" allowfullscreen=""></iframe>
                    </div>
                    <div class="col-sm-8 copyright">
                        <p>
                            © 2017 All Rights Reserved. Powered by <a href="https://www.jupsoft.com/" target="_blank">Jupsoft Technologies Pvt.Ltd.</a>
                        </p>
                    </div>
                    <div class="col-sm-4 text-right">
                        <ul class="social-network social-circle">
                            <li><a href="https://www.facebook.com/Jupsoft/" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li><a href="https://twitter.com/jupsoft/" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
        <div class="modal fade in" id="openModal" style="display: none;">
            <div class="modal-dialog">
                <div class="modal-content model-modal">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">
                            <div class="awesomefont">
                                <center><h3>Modules</h3></center>
                            </div>
                        </h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-sm-3 col-xs-6">
                                <div class="img-icon hover11">
                                    <img src="images/icons/ej_enquiry-icon.png" class="img-rounded img-modal modal-img-w  img-center">
                                </div>
                                <div>
                                    <h6 class="module-pad grey-col text-center">Enquiry</h6>
                                </div>
                            </div>
                            <div class="col-sm-3 col-xs-6">
                                <div class="img-icon  hover11">
                                    <img src="images/icons/ej_pre-add-icon.png" class="img-rounded img-modal modal-img-w img-center">
                                </div>
                                <div>
                                    <h6 class="module-pad grey-col text-center">Pre - Admission</h6>
                                </div>
                            </div>
                            <div class="col-sm-3 col-xs-6 ">
                                <div class="img-icon hover11">
                                    <img src="images/icons/ej_front_office-icon.png" class="img-rounded img-modal modal-img-w img-center">
                                </div>
                                <div>
                                    <h6 class="module-pad grey-col text-center">Front Office</h6>
                                </div>
                            </div>
                            <div class="col-sm-3 col-xs-6 ">
                                <div class="img-icon hover11">
                                    <img src="images/icons/ej_attendance-icon.png" class="img-rounded img-modal modal-img-w img-center">
                                </div>
                                <div>
                                    <h6 class="module-pad grey-col text-center">Attendance</h6>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-3 col-xs-6">
                                <div class="img-icon hover11">
                                    <img src="images/icons/ej_student-icon.png" class="img-rounded img-modal modal-img-w img-center">
                                </div>
                                <div>
                                    <h6 class="module-pad grey-col text-center">Student</h6>
                                </div>
                            </div>
                            <div class="col-sm-3 col-xs-6">
                                <div class="img-icon hover11">
                                    <img src="images/icons/ej_fee-accounting-icon.png" class="img-rounded img-modal modal-img-w img-center">
                                </div>
                                <div>
                                    <h6 class="module-pad grey-col text-center">Fee Accounting</h6>
                                </div>
                            </div>
                            <div class="col-sm-3 col-xs-6">
                                <div class="img-icon hover11">
                                    <img src="images/icons/ej_transport-icon.png" class="img-rounded img-modal modal-img-w img-center">
                                </div>
                                <div>
                                    <h6 class="module-pad grey-col text-center">Transport</h6>
                                </div>
                            </div>
                            <div class="col-sm-3 col-xs-6">
                                <div class="img-icon hover11">
                                    <img src="images/icons/ej_examination-icon.png" class="img-rounded img-modal modal-img-w img-center">
                                </div>
                                <div>
                                    <h6 class="module-pad grey-col text-center">Examination</h6>
                                </div>
                            </div>
                            <div class="col-sm-3 col-xs-6">
                                <div class="img-icon hover11">
                                    <img src="images/icons/ej_payroll-icon.png" class="img-rounded img-modal modal-img-w img-center">
                                </div>
                                <div>
                                    <h6 class="module-pad grey-col text-center">Payroll</h6>
                                </div>
                            </div>
                            <div class="col-sm-3 col-xs-6">
                                <div class="img-icon hover11">
                                    <img src="images/icons/ej_library-icon.png" class="img-rounded img-modal modal-img-w img-center">
                                </div>
                                <div>
                                    <h6 class="module-pad grey-col text-center">Library</h6>
                                </div>
                            </div>
                            <div class="col-sm-3 col-xs-6">
                                <div class="img-icon hover11">
                                    <img src="images/icons/ej_inventory-icon.png" class="img-rounded img-modal modal-img-w img-center">
                                </div>
                                <div>
                                    <h6 class="module-pad grey-col text-center">Inventory</h6>
                                </div>
                            </div>
                            <div class="col-sm-3 col-xs-6">
                                <div class="img-icon hover11">
                                    <img src="images/icons/ej_fleet-icon.png" class="img-rounded img-modal modal-img-w img-center">
                                </div>
                                <div>
                                    <h6 class="module-pad grey-col text-center">Fleet</h6>
                                </div>
                            </div>
                            <div class="col-sm-3 col-xs-6">
                                <div class="img-icon hover11">
                                    <img src="images/icons/ej_fee-accounting-icon.png" class="img-rounded img-modal modal-img-w img-center">
                                </div>
                                <div>
                                    <h6 class="module-pad grey-col text-center">Financial Accounting</h6>
                                </div>
                            </div>
                            <div class="col-sm-3 col-xs-6">
                                <div class="img-icon hover11">
                                    <img src="images/icons/ej_timetable-icon.png" class="img-rounded img-modal modal-img-w img-center">
                                </div>
                                <div>
                                    <h6 class="module-pad grey-col text-center">Time Table</h6>
                                </div>
                            </div>
                            <div class="col-sm-3 col-xs-6">
                                <div class="img-icon hover11">
                                    <img src="images/icons/ej_infirmary-icon.png" class="img-rounded img-modal modal-img-w img-center">
                                </div>
                                <div>
                                    <h6 class="module-pad grey-col text-center">Infirmary</h6>
                                </div>
                            </div>
                            <div class="col-sm-3 col-xs-6">
                                <div class="img-icon hover11">
                                    <img src="images/icons/ej_hostel-icon.png" class="img-rounded img-modal modal-img-w img-center">
                                </div>
                                <div>
                                    <h6 class="module-pad grey-col text-center">Hostel</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            $(document).ready(function () {
                $('[data-toggle="tooltip"]').tooltip();
            });
        </script>
        <script>
            $('#myModal').click(function () {
                $('.modal-backdrop').hide();
            });
        </script>
        <script type="text/javascript">
            function onlyNumbers(event) {
                var e = event || evt; // for trans-browser compatibility
                var charCode = e.which || e.keyCode;
                if (charCode > 31 && (charCode < 48 || charCode > 57))
                    return false;

                return true;
            }
        </script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                // browser window scroll (in pixels) after which the "back to top" link is shown
                var offset = 300,
                    //browser window scroll (in pixels) after which the "back to top" link opacity is reduced
                    offset_opacity = 800,
                    //duration of the top scrolling animation (in ms)
                    scroll_top_duration = 700,
                    //grab the "back to top" link
                    $back_to_top = $('.cd-top');

                //hide or show the "back to top" link
                $(window).scroll(function () {
                    ($(this).scrollTop() > offset) ? $back_to_top.addClass('cd-is-visible') : $back_to_top.removeClass('cd-is-visible cd-fade-out');
                    if ($(this).scrollTop() > offset_opacity) {
                        $back_to_top.addClass('cd-fade-out');
                    }
                });

                //smooth scroll to top
                $back_to_top.on('click', function (event) {
                    event.preventDefault();
                    $('body,html').animate({
                        scrollTop: 0,
                    }, scroll_top_duration
                    );
                });

            });
        </script>
        <script type="text/javascript">
            $(document).ready(function () {
                // Add smooth scrolling to all links
                $("a").on('click', function (event) {

                    // Make sure this.hash has a value before overriding default behavior
                    if (this.hash !== "") {
                        // Prevent default anchor click behavior
                        event.preventDefault();

                        // Store hash
                        var hash = this.hash;

                        // Using jQuery's animate() method to add smooth page scroll
                        // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
                        $('html, body').animate({
                            scrollTop: $(hash).offset().top
                        }, 800, function () {

                            // Add hash (#) to URL when done scrolling (default click behavior)
                            window.location.hash = hash;
                        });
                    } // End if
                });
            });
        </script>
        <script>
            $(window).scroll(function () {
                if ($(this).scrollTop() > 0) {
                    $('.a').fadeOut();
                }
                else {
                    $('.a').fadeIn();
                }
            });
            //var servicepath = "http://localhost:63747/eConnectK12services.asmx/";
            var servicepath = "https://econnectk12.jupsoft.com/eConnectK12services.asmx/";
            var Body = document.getElementById('lblbody').innerHTML;
            var BodyvCard = document.getElementById('lblbodyvCard').innerHTML;
            var Body1 = document.getElementById('lblbody1').innerHTML;
            var BodyvCard1 = document.getElementById('lblbodyvCard1').innerHTML;
            var Password = "jtpl@1234#";
            var Password1 = "jtpl@1234#";
            function SMSWebServices1() {
                debugger;
                var MobileNo = document.getElementById("txtphone").value;
                var path = servicepath + "SMSWebServices?callback=?";
                $.ajax({
                    type: "POST",
                    url: path,
                    data: { mobileno: JSON.stringify(MobileNo), body: JSON.stringify(Body), password: JSON.stringify(Password) },
                    url: path,
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (response) {
                        SMSWebServicesvCard();
                        // window.location.href = "http://www.schoolmanagementsoftware.in/thankyou.aspx";
                    },
                    error: function (data) {
                    }
                });
                return true;
            }
            function SMSWebServicesvCard() {
                debugger;
                var MobileNo = document.getElementById("txtphone").value;
                var path = servicepath + "SMSWebServices?callback=?";
                $.ajax({
                    type: "POST",
                    url: path,
                    data: { mobileno: JSON.stringify(MobileNo), body: JSON.stringify(BodyvCard), password: JSON.stringify(Password) },
                    url: path,
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (response) {
                        window.location.href = "thank-you.aspx";
                    },
                    error: function (data) {
                    }
                });
                return true;
            }

            function SMSWebServices12() {
                debugger;
                var MobileNo = document.getElementById("txtphone1").value;

                var path = servicepath + "SMSWebServices?callback=?";
                $.ajax({
                    type: "POST",
                    url: path,
                    data: { mobileno: JSON.stringify(MobileNo), body: JSON.stringify(Body1), password: JSON.stringify(Password1) },
                    url: path,
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (response) {
                        SMSWebServicesvCard2();
                        // window.location.href = "http://www.schoolmanagementsoftware.in/thankyou.aspx";
                    },
                    error: function (data) {

                    }
                });
                return true;
            }
            function SMSWebServicesvCard2() {
                debugger;
                var MobileNo1 = document.getElementById("txtphone1").value;

                var path = servicepath + "SMSWebServices?callback=?";
                $.ajax({
                    type: "POST",
                    url: path,
                    data: { mobileno: JSON.stringify(MobileNo1), body: JSON.stringify(BodyvCard1), password: JSON.stringify(Password1) },
                    url: path,
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (response) {
                        window.location.href = "thank-you.aspx";
                    },
                    error: function (data) {

                    }
                });
                return true;
            }
        </script>
    </form>
</body>

</html>
