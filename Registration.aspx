<%@ Page Language="C#" MasterPageFile="~/LoginMasterPage.master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Top content -->
    
    <form role="form" id="registration" runat="server" class="login-form">
        <div class="jumbotron" style="background: rgba(200, 200, 200, 0.05);color:white;margin-bottom:0px;padding-bottom:0px;padding-top:20px;";>
          <h1>Central University of Rajasthan</h1> 
          <p><strong>Recruitment Portal</strong></p> 
        </div>
        <div class="top-content" style="padding-top:0px;margin-top:0px;">
            <div class="inner-bg" style="padding-top:0px;margin-top:0px;">
                <div class="container">
                    <div class="row" style="padding-top:0px;margin-top:0px;">
                        <div class="col-md-5">
                            <div class="form-box" style="padding-top:0px;margin-top:0px;">
	                        	<div class="form-top">
	                        		<div class="form-top-left">
	                        			<h3>Instructions for registration</h3>
	                        		</div>
	                        		<div class="form-top-right">
	                        			<i class="fa fa-info-circle"></i>
	                        		</div>
	                            </div>
                                <div class="form-bottom" style="color:white;text-align:justify;padding-top:0px;">
                                    <ul style =" padding: 4px;">
                                        <li>Fill out the New Account form with your details.</li>
                                        <li>Click on the register button to register.</li>
                                        <li>After successful registration you will be able to login to system.</li>
                                        <li>After Login click on Apply now button to see all the available job openings.</li>
                                        <li>First select the post.</li>
                                        <li>Then select the department in which you want to apply.</li>
                                        <li>Then select the Advertisement No. of the job you are applying form.</li>
                                        <li>Click on Apply button to start filling form.</li>
                                    </ul>
                                </div>
                                <div class="form-bottom" style="text-align:justify;">
                                    <label style="color:white;">Note : Please check the information before clicking 'Register' Button for any typo or spelling mistakes.</label><br />
                                   <br />
                                    <label style="color:#ff8833;">This information will be used throughout the application and no changes will be allowed.</label>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-sm-1 middle-border"></div>
                        <div class="col-sm-1"></div>
                        <div class="col-md-5">
                        	<div class="form-box" style="padding-top:0px;margin-top:0px;">
	                        	<div class="form-top">
	                        		<div class="form-top-left">
	                        			<h3>Register</h3>
	                            		<p>Register here if you are a new user.</p>
	                        		</div>
	                        		<div class="form-top-right">
	                        			<i class="fa fa-user-plus" aria-hidden="true"></i>
	                        		</div>
	                            </div>
	                            <div class="form-bottom">
				                    <div class="input-group"  style="padding-bottom:0px;">
                                        <span class="input-group-addon"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                                        <asp:TextBox ID="regEmail" runat="server" CssClass="form-control" 
                                            placeholder="Applicant's Email Address" required="true"></asp:TextBox>
                                    </div>
                                    <span style="color:Red;visibility:hidden;padding-bottom:0px;padding-top:0px;">
                                        <asp:RequiredFieldValidator ID="rfvRegEmail" runat="server" ControlToValidate="regEmail" ErrorMessage="*" />
                                        <asp:RegularExpressionValidator ID="revRegEmail" runat="server" ControlToValidate="regEmail" ErrorMessage="Invalid!"  
                                            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </span>
                                    
				                    <div class="input-group"  style="padding-bottom:0px;padding-top:0px;">
                                        <span class="input-group-addon"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                                        <asp:TextBox ID="regConfEmail" runat="server" CssClass="form-control" 
                                            placeholder="Confirm Email Address" required="true"></asp:TextBox>
                                    </div>
                                    <span style="color:Red;visibility:hidden;">
                                        <asp:RequiredFieldValidator ID="rfvRegConfEmail" runat="server" ControlToValidate="regConfEmail" ErrorMessage="*" />
                                         
                                        <asp:RegularExpressionValidator ID="revRegConfEmail" runat="server" ControlToValidate="regConfEmail" ErrorMessage="Invalid!"  
                                            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </span>
                                    
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-key" aria-hidden="true"></i></span>
                                        <asp:TextBox ID="pwdRegister" runat="server" CssClass="form-control" type="password"
                                            placeholder="Password (Minimum 6 characters)" required="true"></asp:TextBox>
                                    </div>
                                    <span style="color:Red;visibility:hidden;">
                                        <asp:RequiredFieldValidator ID="rfvPwdRegister" runat="server" ControlToValidate="pwdRegister" ErrorMessage="*" />
                                         
                                        <asp:RegularExpressionValidator ID="revPwdRegister" runat="server" ControlToValidate="pwdRegister" ErrorMessage="Invalid!"  
                                            ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,30}$"></asp:RegularExpressionValidator>
                                    </span>
                                    
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-key" aria-hidden="true"></i></span>
                                        <asp:TextBox ID="pwdConfRegister" runat="server" CssClass="form-control" type="password"
                                            placeholder="Confirm Password" required="true"></asp:TextBox>
                                    </div>
                                    <span style="color:Red;visibility:hidden;">
                                        <asp:RequiredFieldValidator ID="rfvPwdConfRegister" runat="server" ControlToValidate="pwdConfRegister" ErrorMessage="*" />
                                         
                                        <asp:RegularExpressionValidator ID="revPwdConfRegister" runat="server" ControlToValidate="pwdConfRegister" ErrorMessage="Invalid!"  
                                            ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,30}$"></asp:RegularExpressionValidator>
                                    </span>
                                    
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-phone-square" aria-hidden="true"></i></span>
                                        <asp:TextBox ID="registerMobile" runat="server" CssClass="form-control" 
                                            placeholder="Applicant's Mobile No." required="true"></asp:TextBox>
                                    </div>
                                    <span style="color:Red;visibility:hidden;">
                                        <asp:RequiredFieldValidator ID="rfvRegisterMobile" runat="server" ControlToValidate="registerMobile" ErrorMessage="*" />
                                         
                                        <asp:RegularExpressionValidator ID="revRegisterMobile" runat="server" ControlToValidate="registerMobile" ErrorMessage="Invalid!"  
                                            ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                    </span>
                                    
                                     <div class="g-recaptcha" data-sitekey="6LdxsyoUAAAAACF7LOHjHdTFcmcm_89I00SP_Ggl"></div>
                                    <div class="form-group">
                                        

                                    </div>
                                    <div class="form-group">
                                        <asp:Button ID="registerBtn" runat="server" CssClass="btn btn-primary" text="Register" OnClick="registerBtn_Click" />
                                   &nbsp &nbsp  
                                    </div>
                                        <div class="alert alert-danger alert-dismissible" ID="passwordMatchWarning" runat="server" role="alert" visible="false">
                                          <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                          <strong>Passwords</strong> do not match!
                                        </div>
                                        <div class="alert alert-danger alert-dismissible" ID="emailMatchWarning" role="alert" runat="server" visible="false">
                                          <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                          <strong>Emails</strong> do not match!
                                        </div>
                                        <div class="alert alert-warning alert-dismissible" ID="emailExistWarning" role="alert" runat="server" visible="false">
                                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>                                       
                                          <strong>Email</strong> is already registered!
                                        </div>
                                        <div class="alert alert-success alert-dismissible" ID="accountCreated" role="alert" runat="server" visible="false">
                                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                            <strong>Account</strong> is successfully created!
                                        </div>
                                        <div class="alert alert-danger alert-dismissible" ID="captchaVerification" role="alert" runat="server" visible="false">
                                          <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                          <strong>Captcha</strong> could not be verified!
                                        </div>
                                        
                                        
                                    <div>
                                        <a href="Login.aspx"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
                                            &nbsp Already have an account ?</a>
                                    </div>
                                </div>
			                </div>
		                </div>
                    </div>
                </div>
            </div>
            
        </div>    
    </form>
</asp:Content>