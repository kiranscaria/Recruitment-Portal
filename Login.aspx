<%@ Page Language="C#" MasterPageFile="~/LoginMasterPage.master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Top content -->
    
    <form role="form" id="login" runat="server" class="login-form">
        <div class="jumbotron" style="background: rgba(200, 200, 200, 0.05);color:white;margin-bottom:0px;padding-bottom:0px;padding-top:20px;";>
          <h1>Central University of Rajasthan</h1> 
          <p>Recruitment Portal</p> 
        </div>
        <div class="top-content" style="padding-top:0px;margin-top:0px;">
            <div class="inner-bg" style="padding-top:0px;margin-top:0px;">
                <div class="container">
                    <div class="row" style="padding-top:0px;margin-top:0px;">
                        <div class="col-md-5">
                            <div class="form-box" style="padding-top:0px;margin-top:0px;">
	                        	<div class="form-top">
	                        		<div class="form-top-left">
	                        			<h3>Important Information !!</h3>
	                        		</div>
	                        		<div class="form-top-right">
	                        			<i class="fa fa-info-circle"></i>
	                        		</div>
	                            </div>
                                <div class="form-bottom" style="font-weight:bold;color:white;padding-top:0px;">
                                    <ul style =" padding: 0;">
                                      <li>A Candidate can apply in multiple Schools and their respective departments from a single form</li>
                                      <li>For any specific query, Kindly contact University.</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-sm-1 middle-border"></div>
                        <div class="col-sm-1"></div>
                        <div class="col-md-5">
                        	<div class="form-box" style="padding-top:0px;margin-top:0px;">
	                        	<div class="form-top">
	                        		<div class="form-top-left">
	                        			<h3>Login to our site</h3>
	                            		<p>Enter username and password to log on:</p>
	                        		</div>
	                        		<div class="form-top-right">
	                        			<i class="fa fa-lock"></i>
	                        		</div>
	                            </div>
	                            <div class="form-bottom">
				                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user" aria-hidden="false"></i></span>
                                        <asp:TextBox ID="loginEmail" runat="server" CssClass="form-control" 
                                            placeholder="Applicant's Registered Email Id"></asp:TextBox>
                                    </div>
                                 <span style="color:Red;visibility:hidden;padding-bottom:0px;padding-top:0px;">
                                  <asp:RegularExpressionValidator ID="revRegEmail" runat="server" ControlToValidate="loginEmail" ErrorMessage="Invalid!"  
                                            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </span>
                                      
				                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-key" aria-hidden="false"></i></span>
                                        <asp:TextBox ID="loginPwd"  runat="server" CssClass="form-control" type="password" placeholder="Applicant's Login Password"></asp:TextBox>
                                    </div>
                                    <span style="color:Red;visibility:hidden;">
                                     <asp:RegularExpressionValidator ID="revPwdRegister" runat="server" ControlToValidate="loginPwd" ErrorMessage="Invalid!"  
                                            ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,30}$"></asp:RegularExpressionValidator>
                                    </span>
                                     
                                    <div class="g-recaptcha" data-sitekey="6LdxsyoUAAAAACF7LOHjHdTFcmcm_89I00SP_Ggl"></div>
                                     
                                    <div class="form-group"> </div>
                                    <div class="form-group">
                                        <asp:Button ID="loginBtn" runat="server" CssClass="btn btn-primary" text="Login" OnClick="loginBtn_Click"/>
                                     </div>

                                    <div class="alert alert-danger alert-dismissible" ID="invalid_usrPwd" runat="server" role="alert" visible="false">
                                          <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                          <strong>Invalid</strong> Username or password!
                                        </div>
                                    <div class="alert alert-danger alert-dismissible" ID="captchaVerification" role="alert" runat="server" visible="false">
                                          <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                          <strong>Captcha</strong> could not be verified!
                                     </div>
                                    <a href="Registration.aspx"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
                                        &nbsp New User Registration</a>&nbsp &nbsp
                                    <a><i class="fa fa-arrow-circle-right" aria-hidden="true"></i>&nbsp Reset Password</a>&nbsp &nbsp
                                    <a><i class="fa fa-arrow-circle-right" aria-hidden="true"></i>&nbsp Help</a>&nbsp &nbsp
                                </div>
			                </div>
		                </div>
                    </div>
                </div>
            </div>    
        </div>
    </form>
</asp:Content>
