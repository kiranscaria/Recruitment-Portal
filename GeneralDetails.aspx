<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/FormsMasterPage.master" AutoEventWireup="true" CodeFile="GeneralDetails.aspx.cs" Inherits="GeneralDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!-- include summernote css/js-->
    <link href="assets/css/datedropper.css" rel="stylesheet">
    <link href="assets/css/datedropper_style.css" rel="stylesheet">
    <script src="assets/js/datedropper.js" type="text/javascript"></script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <form role="form" id="personalDetails" runat="server">
            <div class="row">
                <div class="col-md-12">
                <div class="card" ID="cardPersonalDetails" visible="true" runat="server">
                    <div class="card-header" data-background-color="blue">
                        <h4 class="title">Personal Details</h4>
                        <p class="category">Help</p>
                    </div>
			            <div class ="card-content table-responsive">
                            <asp:Table class="table" ID="tablePersonalDetails" runat="server">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <label>Name</label>
                                                    <asp:TextBox required="true" CssClass="form-control input" runat="server" ID="name" MaxLength="50" TabIndex="1"
                                                        onkeypress="filterAlphabet(event)"></asp:TextBox>
                                                    
                                                </div>
                                            </div>
                                            <div class="col-lg-3">
                                                <div class="form-group">
                                                    <label>Gender</label>
                                                    <asp:DropDownList ID="genderList" runat="server" required="true"  class="form-control" TabIndex="2">
                                                        <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">Female</asp:ListItem>
                                                        <asp:ListItem Value="2">Male</asp:ListItem>
                                                        <asp:ListItem Value="3">Other</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-lg-3">
                                                <div class="form-group">
                                                    <label>Date of Birth</label>
                                                    <asp:TextBox type="text" ID="dob" class="form-control datePicker" runat="server" tabindex="3" 
                                                        ClientIDMode="Static" data-min-year="1930" data-format="d-m-Y"  data-theme="my-style"  
                                                        data-large-mode="true"  data-large-default="true"> </asp:TextBox>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Category</label>
                                                    <asp:DropDownList ID="categoryList" runat="server" required="true"  class="form-control" TabIndex="4">
                                                        <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">UR</asp:ListItem>
                                                        <asp:ListItem Value="2">OBC</asp:ListItem>
                                                        <asp:ListItem Value="3">SC</asp:ListItem>
                                                        <asp:ListItem Value="4">ST</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>PWD</label>
                                                    <asp:DropDownList ID="pwdList" runat="server" required="true" class="form-control" TabIndex="5">
                                                        <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">No</asp:ListItem>
                                                        <asp:ListItem Value="2">Yes</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Ex-Serviceman</label>
                                                    <asp:DropDownList ID="exServiemanList" runat="server" required="true"  class="form-control" TabIndex="6">
                                                        <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">No</asp:ListItem>
                                                        <asp:ListItem Value="2">Yes</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Nationality</label>
                                                    <asp:DropDownList ID="nationalityList" runat="server" required="true" class="form-control" TabIndex="7">
                                                        <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">Indian</asp:ListItem>
                                                        <asp:ListItem Value="2">Foreign National</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Marital Status</label>
                                                    <asp:DropDownList ID="maritalStatus" runat="server" required="true" class="form-control" TabIndex="8">
                                                        <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">Married</asp:ListItem>
                                                        <asp:ListItem Value="2">UnMarried</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Minority</label>
                                                    <asp:DropDownList ID="minorityList" runat="server" required="true"  class="form-control" TabIndex="9">
                                                        <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">No</asp:ListItem>
                                                        <asp:ListItem Value="2">Yes</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <label>Father's Name</label>
                                                    <asp:TextBox type="text" runat="server" id="fathersName" MaxLength="50" required="true" onkeypress="filterAlphabet(event)" class="form-control" 
                                                        tabindex="10"></asp:TextBox>
                                                    
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <label>Mother's Name</label>
                                                    <asp:TextBox type="text" runat="server" id="mothersName" MaxLength="50" required="true" onkeypress="filterAlphabet(event)" class="form-control" 
                                                        tabindex="11"></asp:TextBox>
                                                    
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <label>Email</label>
                                                    <asp:TextBox type="text" runat="server" id="email" class="form-control" 
                                                        tabindex="12"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <label>Alternate Email</label>
                                                    <asp:TextBox type="email" runat="server" id="altEmail" required="true" class="form-control" 
                                                        tabindex="13"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Phone</label>
                                                    <asp:TextBox type="text" runat="server" id="phoneNumber" class="form-control" onkeypress="filterDigits(event)"
                                                        tabindex="14"></asp:TextBox>
                                                    <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "phoneNumber" ID="RegularExpressionValidator3" ValidationExpression = "^[\s\S]{10,14}$" 
                                                        runat="server" ErrorMessage="Phone No. should be between 10 to 14 digits"></asp:RegularExpressionValidator>
                                                    
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Mobile No.</label>
                                                    <asp:TextBox type="text" runat="server" id="mobileNumber" required="true" MaxLength="14" onkeypress="filterDigits(event)" class="form-control" 
                                                        tabindex="15"></asp:TextBox>
                                                    <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "mobileNumber" ID="RegularExpressionValidator1" ValidationExpression = "^[\s\S]{10,14}$" 
                                                        runat="server" ErrorMessage="Mobile No. should be between 10 to 14 digits"></asp:RegularExpressionValidator>
                                                    
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Applicant's Aadhar Number</label>
                                                    <asp:TextBox type="text" runat="server" id="aadharNumber" class="form-control" onkeypress="filterDigits(event)"
                                                        tabindex="16"></asp:TextBox>
                                                    <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "aadharNumber" ID="RegularExpressionValidator2" ValidationExpression = "^[\s\S]{12,12}$" 
                                                        runat="server" ErrorMessage="Adhaar No. should be of 12 digits"></asp:RegularExpressionValidator>
                                                    
                                                </div>
                                            </div>
                                        </div>

                                        <hr />
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group label-floating">
                                                    <h4>Address for Correspondence</h4>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group label-floating">
                                                    <h4>Permanent Address</h4>
                                                </div>
                                            </div>
                                        </div><!-- End Row -->

                                        <div class="row">
                                            <div class="col-md-6">
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group label-floating">
                                                    <asp:CheckBox ID="permanentAddress" runat="server" TabIndex="17" Font-Size="Small" 
                                                        ForeColor="Green" AutoPostBack="true" OnCheckedChanged="addressChanged"
                                                        Text=" Tick the Checkbox if the address is same as of Correspondence" />
                                                </div>
                                            </div>
                                        </div><!-- End Row -->

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Address Line 1</label>
                                                    <asp:TextBox type="text" runat="server" id="cAddress1" required="true" MaxLength="50" onkeypress="filterAlphaNumericExt(event)" class="form-control" 
                                                        tabindex="18"></asp:TextBox>
                                                    
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Address Line 1</label>
                                                    <asp:TextBox type="text" runat="server" id="pAddress1" required="true" MaxLength="50" onkeypress="filterAlphaNumericExt(event)" class="form-control" 
                                                        tabindex="24"></asp:TextBox>
                                                   
                                                </div>
                                            </div>
                                        </div><!-- End Row -->

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Address Line 2</label>
                                                    <asp:TextBox type="text" runat="server" id="cAddress2" MaxLength="50" onkeypress="filterAlphaNumericExt(event)" class="form-control" 
                                                        tabindex="19"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Address Line 2</label>
                                                    <asp:TextBox type="text" runat="server" id="pAddress2" MaxLength="50" onkeypress="filterAlphaNumericExt(event)" class="form-control" 
                                                        tabindex="25"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div><!-- End Row -->

                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>City</label>
                                                    <asp:TextBox type="text" runat="server" id="cCity" MaxLength="30" required="true" onkeypress="filterAlphabet(event)" class="form-control" 
                                                        tabindex="20"></asp:TextBox>
                                                  
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>State</label>
                                                    <asp:DropDownList ID="cState" runat="server" required="true" class="form-control" TabIndex="21">
                                                        <asp:ListItem Value="" Selected="True">Select State</asp:ListItem>
                                                        <asp:ListItem Value="1">Outside India</asp:ListItem>
                                                        <asp:ListItem Value="2">Andaman and Nicobar Islands</asp:ListItem>
                                                        <asp:ListItem Value="3">Andhra Pradesh</asp:ListItem>
                                                        <asp:ListItem Value="4">Arunachal Pradesh</asp:ListItem>
                                                        <asp:ListItem Value="5">Assam</asp:ListItem>
                                                        <asp:ListItem Value="6">Bihar</asp:ListItem>
                                                        <asp:ListItem Value="7">Chandigarh</asp:ListItem>
                                                        <asp:ListItem Value="8">Chhattisgarh</asp:ListItem>
                                                        <asp:ListItem Value="9">Dadra and Nagar Haveli</asp:ListItem>
                                                        <asp:ListItem Value="10">Daman and Diu</asp:ListItem>
                                                        <asp:ListItem Value="11">Delhi</asp:ListItem>
                                                        <asp:ListItem Value="12">Goa</asp:ListItem>
                                                        <asp:ListItem Value="13">Gujarat</asp:ListItem>
                                                        <asp:ListItem Value="14">Haryana</asp:ListItem>
                                                        <asp:ListItem Value="15">Himachal Pradesh</asp:ListItem>
                                                        <asp:ListItem Value="16">Jammu and Kashmir</asp:ListItem>
                                                        <asp:ListItem Value="17">Jharkhand</asp:ListItem>
                                                        <asp:ListItem Value="18">Karnataka</asp:ListItem>
                                                        <asp:ListItem Value="19">Kerala</asp:ListItem>
                                                        <asp:ListItem Value="20">Lakshadweep</asp:ListItem>
                                                        <asp:ListItem Value="21">Madhya Pradesh</asp:ListItem>
                                                        <asp:ListItem Value="22">Maharashtra</asp:ListItem>
                                                        <asp:ListItem Value="23">Manipur</asp:ListItem>
                                                        <asp:ListItem Value="24">Meghalaya</asp:ListItem>
                                                        <asp:ListItem Value="25">Mizoram</asp:ListItem>
                                                        <asp:ListItem Value="26">Nagaland</asp:ListItem>
                                                        <asp:ListItem Value="27">Odisha</asp:ListItem>
                                                        <asp:ListItem Value="28">Puducherry</asp:ListItem>
                                                        <asp:ListItem Value="29">Punjab</asp:ListItem>
                                                        <asp:ListItem Value="30">Rajasthan</asp:ListItem>
                                                        <asp:ListItem Value="31">Sikkim</asp:ListItem>
                                                        <asp:ListItem Value="32">Tamil Nadu</asp:ListItem>
                                                        <asp:ListItem Value="33">Telangana</asp:ListItem>
                                                        <asp:ListItem Value="34">Tripura</asp:ListItem>
                                                        <asp:ListItem Value="35">Uttar Pradesh</asp:ListItem>
                                                        <asp:ListItem Value="36">Uttarakhand</asp:ListItem>
                                                        <asp:ListItem Value="37">West Bengal</asp:ListItem>
                                                    </asp:DropDownList>
                                                  
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>City</label>
                                                    <asp:TextBox type="text" runat="server" id="pCity" MaxLength="30" required="true" onkeypress="filterAlphabet(event)" class="form-control" tabindex="26"></asp:TextBox>
                                                    
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>State</label>
                                                    <asp:DropDownList ID="pState" runat="server" required="true" class="form-control" TabIndex="27">
                                                        <asp:ListItem Value="" Selected="True">Select State</asp:ListItem>
                                                        <asp:ListItem Value="1">Outside India</asp:ListItem>
                                                        <asp:ListItem Value="2">Andaman and Nicobar Islands</asp:ListItem>
                                                        <asp:ListItem Value="3">Andhra Pradesh</asp:ListItem>
                                                        <asp:ListItem Value="4">Arunachal Pradesh</asp:ListItem>
                                                        <asp:ListItem Value="5">Assam</asp:ListItem>
                                                        <asp:ListItem Value="6">Bihar</asp:ListItem>
                                                        <asp:ListItem Value="7">Chandigarh</asp:ListItem>
                                                        <asp:ListItem Value="8">Chhattisgarh</asp:ListItem>
                                                        <asp:ListItem Value="9">Dadra and Nagar Haveli</asp:ListItem>
                                                        <asp:ListItem Value="10">Daman and Diu</asp:ListItem>
                                                        <asp:ListItem Value="11">Delhi</asp:ListItem>
                                                        <asp:ListItem Value="12">Goa</asp:ListItem>
                                                        <asp:ListItem Value="13">Gujarat</asp:ListItem>
                                                        <asp:ListItem Value="14">Haryana</asp:ListItem>
                                                        <asp:ListItem Value="15">Himachal Pradesh</asp:ListItem>
                                                        <asp:ListItem Value="16">Jammu and Kashmir</asp:ListItem>
                                                        <asp:ListItem Value="17">Jharkhand</asp:ListItem>
                                                        <asp:ListItem Value="18">Karnataka</asp:ListItem>
                                                        <asp:ListItem Value="19">Kerala</asp:ListItem>
                                                        <asp:ListItem Value="20">Lakshadweep</asp:ListItem>
                                                        <asp:ListItem Value="21">Madhya Pradesh</asp:ListItem>
                                                        <asp:ListItem Value="22">Maharashtra</asp:ListItem>
                                                        <asp:ListItem Value="23">Manipur</asp:ListItem>
                                                        <asp:ListItem Value="24">Meghalaya</asp:ListItem>
                                                        <asp:ListItem Value="25">Mizoram</asp:ListItem>
                                                        <asp:ListItem Value="26">Nagaland</asp:ListItem>
                                                        <asp:ListItem Value="27">Odisha</asp:ListItem>
                                                        <asp:ListItem Value="28">Puducherry</asp:ListItem>
                                                        <asp:ListItem Value="29">Punjab</asp:ListItem>
                                                        <asp:ListItem Value="30">Rajasthan</asp:ListItem>
                                                        <asp:ListItem Value="31">Sikkim</asp:ListItem>
                                                        <asp:ListItem Value="32">Tamil Nadu</asp:ListItem>
                                                        <asp:ListItem Value="33">Telangana</asp:ListItem>
                                                        <asp:ListItem Value="34">Tripura</asp:ListItem>
                                                        <asp:ListItem Value="35">Uttar Pradesh</asp:ListItem>
                                                        <asp:ListItem Value="36">Uttarakhand</asp:ListItem>
                                                        <asp:ListItem Value="37">West Bengal</asp:ListItem>
                                                    </asp:DropDownList>
                                           
                                                </div>
                                            </div>
                                        </div><!-- End Row -->

                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Pin</label>
                                                    <asp:TextBox type="text" runat="server" required="true" onkeypress="filterDigits(event)" id="cPin" class="form-control" tabindex="22"></asp:TextBox>
                                                    <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "cPin" ID="RegularExpressionValidator4" ValidationExpression = "^[\s\S]{6,6}$" 
                                                        runat="server" ErrorMessage="Please enter 6 digits PIN Code"></asp:RegularExpressionValidator>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Country</label>
                                                    <asp:DropDownList ID="cCountry" runat="server" required="true" class="form-control" TabIndex="23">
                                                        <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">Afghanistan</asp:ListItem>
                                                        <asp:ListItem Value="2">Albania</asp:ListItem>
                                                        <asp:ListItem Value="3">Algeria</asp:ListItem>
                                                        <asp:ListItem Value="4">AmericanSamoa</asp:ListItem>
                                                        <asp:ListItem Value="5">Andorra</asp:ListItem>
                                                        <asp:ListItem Value="6">Angola</asp:ListItem>
                                                        <asp:ListItem Value="7">Anguilla</asp:ListItem>
                                                        <asp:ListItem Value="8">Antarctica</asp:ListItem>
                                                        <asp:ListItem Value="9">Antigua & Barbuda</asp:ListItem>
                                                        <asp:ListItem Value="10">Argentina</asp:ListItem>
                                                        <asp:ListItem Value="11">Armenia</asp:ListItem>
                                                        <asp:ListItem Value="12">Aruba</asp:ListItem>
                                                        <asp:ListItem Value="13">Australia</asp:ListItem>
                                                        <asp:ListItem Value="14">Austria</asp:ListItem>
                                                        <asp:ListItem Value="15">Azerbaijan</asp:ListItem>
                                                        <asp:ListItem Value="16">Bahamas</asp:ListItem>
                                                        <asp:ListItem Value="17">Bahrain</asp:ListItem>
                                                        <asp:ListItem Value="18">Bangladesh</asp:ListItem>
                                                        <asp:ListItem Value="19">Barbados</asp:ListItem>
                                                        <asp:ListItem Value="20">Belarus</asp:ListItem>
                                                        <asp:ListItem Value="21">Belgium</asp:ListItem>
                                                        <asp:ListItem Value="22">Belize</asp:ListItem>
                                                        <asp:ListItem Value="23">Benin</asp:ListItem>
                                                        <asp:ListItem Value="24">Bermuda</asp:ListItem>
                                                        <asp:ListItem Value="25">Bhutan</asp:ListItem>
                                                        <asp:ListItem Value="26">Bolivia</asp:ListItem>
                                                        <asp:ListItem Value="27">Caribbean Netherlands</asp:ListItem>
                                                        <asp:ListItem Value="28">Bosnia</asp:ListItem>
                                                        <asp:ListItem Value="29">Botswana</asp:ListItem>
                                                        <asp:ListItem Value="30">Bouvet Island</asp:ListItem>
                                                        <asp:ListItem Value="31">Brazil</asp:ListItem>
                                                        <asp:ListItem Value="32">British Indian Ocean Territory</asp:ListItem>
                                                        <asp:ListItem Value="33">Brunei</asp:ListItem>
                                                        <asp:ListItem Value="34">Bulgaria</asp:ListItem>
                                                        <asp:ListItem Value="35">Burkina Faso</asp:ListItem>
                                                        <asp:ListItem Value="36">Burundi</asp:ListItem>
                                                        <asp:ListItem Value="37">Cambodia</asp:ListItem>
                                                        <asp:ListItem Value="38">Cameroon</asp:ListItem>
                                                        <asp:ListItem Value="39">Canada</asp:ListItem>
                                                        <asp:ListItem Value="40">Cape Verde</asp:ListItem>
                                                        <asp:ListItem Value="41">Cayman Islands</asp:ListItem>
                                                        <asp:ListItem Value="42">Central African Republic</asp:ListItem>
                                                        <asp:ListItem Value="43">Chad</asp:ListItem>
                                                        <asp:ListItem Value="44">Chile</asp:ListItem>
                                                        <asp:ListItem Value="45">China</asp:ListItem>
                                                        <asp:ListItem Value="46">Christmas Island</asp:ListItem>
                                                        <asp:ListItem Value="47">Cocos (Keeling) Islands</asp:ListItem>
                                                        <asp:ListItem Value="48">Colombia</asp:ListItem>
                                                        <asp:ListItem Value="49">Comoros</asp:ListItem>
                                                        <asp:ListItem Value="50">Congo-Brazzaville</asp:ListItem>
                                                        <asp:ListItem Value="51">Congo-Kinshasa</asp:ListItem>
                                                        <asp:ListItem Value="52">Cook Islands</asp:ListItem>
                                                        <asp:ListItem Value="53">Costa Rica</asp:ListItem>
                                                        <asp:ListItem Value="54">Croatia</asp:ListItem>
                                                        <asp:ListItem Value="55">Cuba</asp:ListItem>
                                                        <asp:ListItem Value="56">Curaçao</asp:ListItem>
                                                        <asp:ListItem Value="57">Cyprus</asp:ListItem>
                                                        <asp:ListItem Value="58">Czech Republic</asp:ListItem>
                                                        <asp:ListItem Value="59">Côted’ Ivoire</asp:ListItem>
                                                        <asp:ListItem Value="60">Denmark</asp:ListItem>
                                                        <asp:ListItem Value="61">Djibouti</asp:ListItem>
                                                        <asp:ListItem Value="62">Dominica</asp:ListItem>
                                                        <asp:ListItem Value="63">Dominican Republic</asp:ListItem>
                                                        <asp:ListItem Value="64">Ecuador</asp:ListItem>
                                                        <asp:ListItem Value="65">Egypt</asp:ListItem>
                                                        <asp:ListItem Value="66">ElSalvador</asp:ListItem>
                                                        <asp:ListItem Value="67">Equatorial Guinea</asp:ListItem>
                                                        <asp:ListItem Value="68">Eritrea</asp:ListItem>
                                                        <asp:ListItem Value="69">Estonia</asp:ListItem>
                                                        <asp:ListItem Value="70">Ethiopia</asp:ListItem>
                                                        <asp:ListItem Value="71">Falkland Islands</asp:ListItem>
                                                        <asp:ListItem Value="72">Faroe Islands</asp:ListItem>
                                                        <asp:ListItem Value="73">Fiji</asp:ListItem>
                                                        <asp:ListItem Value="74">Finland</asp:ListItem>
                                                        <asp:ListItem Value="75">France</asp:ListItem>
                                                        <asp:ListItem Value="76">French Guiana</asp:ListItem>
                                                        <asp:ListItem Value="77">French Polynesia</asp:ListItem>
                                                        <asp:ListItem Value="78">French Southern Territories</asp:ListItem>
                                                        <asp:ListItem Value="79">Gabon</asp:ListItem>
                                                        <asp:ListItem Value="80">Gambia</asp:ListItem>
                                                        <asp:ListItem Value="81">Georgia</asp:ListItem>
                                                        <asp:ListItem Value="82">Germany</asp:ListItem>
                                                        <asp:ListItem Value="83">Ghana</asp:ListItem>
                                                        <asp:ListItem Value="84">Gibraltar</asp:ListItem>
                                                        <asp:ListItem Value="85">Greece</asp:ListItem>
                                                        <asp:ListItem Value="86">Greenland</asp:ListItem>
                                                        <asp:ListItem Value="87">Grenada</asp:ListItem>
                                                        <asp:ListItem Value="88">Guadeloupe</asp:ListItem>
                                                        <asp:ListItem Value="89">Guam</asp:ListItem>
                                                        <asp:ListItem Value="90">Guatemala</asp:ListItem>
                                                        <asp:ListItem Value="91">Guernsey</asp:ListItem>
                                                        <asp:ListItem Value="92">Guinea</asp:ListItem>
                                                        <asp:ListItem Value="93">Guinea-Bissau</asp:ListItem>
                                                        <asp:ListItem Value="94">Guyana</asp:ListItem>
                                                        <asp:ListItem Value="95">Haiti</asp:ListItem>
                                                        <asp:ListItem Value="96">Heard & McDonald Islands</asp:ListItem>
                                                        <asp:ListItem Value="97">Vatican City</asp:ListItem>
                                                        <asp:ListItem Value="98">Honduras</asp:ListItem>
                                                        <asp:ListItem Value="99">HongKong</asp:ListItem>
                                                        <asp:ListItem Value="100">Hungary</asp:ListItem>
                                                        <asp:ListItem Value="101">Iceland</asp:ListItem>
                                                        <asp:ListItem Value="102">India</asp:ListItem>
                                                        <asp:ListItem Value="103">Indonesia</asp:ListItem>
                                                        <asp:ListItem Value="104">Iran</asp:ListItem>
                                                        <asp:ListItem Value="105">Iraq</asp:ListItem>
                                                        <asp:ListItem Value="106">Ireland</asp:ListItem>
                                                        <asp:ListItem Value="107">IsleofMan</asp:ListItem>
                                                        <asp:ListItem Value="108">Israel</asp:ListItem>
                                                        <asp:ListItem Value="109">Italy</asp:ListItem>
                                                        <asp:ListItem Value="110">Jamaica</asp:ListItem>
                                                        <asp:ListItem Value="111">Japan</asp:ListItem>
                                                        <asp:ListItem Value="112">Jersey</asp:ListItem>
                                                        <asp:ListItem Value="113">Jordan</asp:ListItem>
                                                        <asp:ListItem Value="114">Kazakhstan</asp:ListItem>
                                                        <asp:ListItem Value="115">Kenya</asp:ListItem>
                                                        <asp:ListItem Value="116">Kiribati</asp:ListItem>
                                                        <asp:ListItem Value="117">North Korea</asp:ListItem>
                                                        <asp:ListItem Value="118">South Korea</asp:ListItem>
                                                        <asp:ListItem Value="119">Kuwait</asp:ListItem>
                                                        <asp:ListItem Value="120">Kyrgyzstan</asp:ListItem>
                                                        <asp:ListItem Value="121">Laos</asp:ListItem>
                                                        <asp:ListItem Value="122">Latvia</asp:ListItem>
                                                        <asp:ListItem Value="123">Lebanon</asp:ListItem>
                                                        <asp:ListItem Value="124">Lesotho</asp:ListItem>
                                                        <asp:ListItem Value="125">Liberia</asp:ListItem>
                                                        <asp:ListItem Value="126">Libya</asp:ListItem>
                                                        <asp:ListItem Value="127">Liechtenstein</asp:ListItem>
                                                        <asp:ListItem Value="128">Lithuania</asp:ListItem>
                                                        <asp:ListItem Value="129">Luxembourg</asp:ListItem>
                                                        <asp:ListItem Value="130">Macau</asp:ListItem>
                                                        <asp:ListItem Value="131">Macedonia</asp:ListItem>
                                                        <asp:ListItem Value="132">Madagascar</asp:ListItem>
                                                        <asp:ListItem Value="133">Malawi</asp:ListItem>
                                                        <asp:ListItem Value="134">Malaysia</asp:ListItem>
                                                        <asp:ListItem Value="135">Maldives</asp:ListItem>
                                                        <asp:ListItem Value="136">Mali</asp:ListItem>
                                                        <asp:ListItem Value="137">Malta</asp:ListItem>
                                                        <asp:ListItem Value="138">Marshall Islands</asp:ListItem>
                                                        <asp:ListItem Value="139">Martinique</asp:ListItem>
                                                        <asp:ListItem Value="140">Mauritania</asp:ListItem>
                                                        <asp:ListItem Value="141">Mauritius</asp:ListItem>
                                                        <asp:ListItem Value="142">Mayotte</asp:ListItem>
                                                        <asp:ListItem Value="143">Mexico</asp:ListItem>
                                                        <asp:ListItem Value="144">Micronesia</asp:ListItem>
                                                        <asp:ListItem Value="145">Moldova</asp:ListItem>
                                                        <asp:ListItem Value="146">Monaco</asp:ListItem>
                                                        <asp:ListItem Value="147">Mongolia</asp:ListItem>
                                                        <asp:ListItem Value="148">Montenegro</asp:ListItem>
                                                        <asp:ListItem Value="149">Montserrat</asp:ListItem>
                                                        <asp:ListItem Value="150">Morocco</asp:ListItem>
                                                        <asp:ListItem Value="151">Mozambique</asp:ListItem>
                                                        <asp:ListItem Value="152">Myanmar</asp:ListItem>
                                                        <asp:ListItem Value="153">Namibia</asp:ListItem>
                                                        <asp:ListItem Value="154">Nauru</asp:ListItem>
                                                        <asp:ListItem Value="155">Nepal</asp:ListItem>
                                                        <asp:ListItem Value="156">Netherlands</asp:ListItem>
                                                        <asp:ListItem Value="157">New Caledonia</asp:ListItem>
                                                        <asp:ListItem Value="158">New Zealand</asp:ListItem>
                                                        <asp:ListItem Value="159">Nicaragua</asp:ListItem>
                                                        <asp:ListItem Value="160">Niger</asp:ListItem>
                                                        <asp:ListItem Value="161">Nigeria</asp:ListItem>
                                                        <asp:ListItem Value="162">Niue</asp:ListItem>
                                                        <asp:ListItem Value="163">Norfolk Island</asp:ListItem>
                                                        <asp:ListItem Value="164">Northern Mariana Islands</asp:ListItem>
                                                        <asp:ListItem Value="165">Norway</asp:ListItem>
                                                        <asp:ListItem Value="166">Oman</asp:ListItem>
                                                        <asp:ListItem Value="167">Pakistan</asp:ListItem>
                                                        <asp:ListItem Value="168">Palau</asp:ListItem>
                                                        <asp:ListItem Value="169">Palestine</asp:ListItem>
                                                        <asp:ListItem Value="170">Panama</asp:ListItem>
                                                        <asp:ListItem Value="171">Papua New Guinea</asp:ListItem>
                                                        <asp:ListItem Value="172">Paraguay</asp:ListItem>
                                                        <asp:ListItem Value="173">Peru</asp:ListItem>
                                                        <asp:ListItem Value="174">Philippines</asp:ListItem>
                                                        <asp:ListItem Value="175">Pitcairn Islands</asp:ListItem>
                                                        <asp:ListItem Value="176">Poland</asp:ListItem>
                                                        <asp:ListItem Value="177">Portugal</asp:ListItem>
                                                        <asp:ListItem Value="178">Puerto Rico</asp:ListItem>
                                                        <asp:ListItem Value="179">Qatar</asp:ListItem>
                                                        <asp:ListItem Value="180">Romania</asp:ListItem>
                                                        <asp:ListItem Value="181">Russia</asp:ListItem>
                                                        <asp:ListItem Value="182">Rwanda</asp:ListItem>
                                                        <asp:ListItem Value="183">Réunion</asp:ListItem>
                                                        <asp:ListItem Value="184">St. Barthélemy</asp:ListItem>
                                                        <asp:ListItem Value="185">St. Helena</asp:ListItem>
                                                        <asp:ListItem Value="186">St. Kitts & Nevis</asp:ListItem>
                                                        <asp:ListItem Value="187">St. Lucia</asp:ListItem>
                                                        <asp:ListItem Value="188">St. Martin</asp:ListItem>
                                                        <asp:ListItem Value="189">St. Pierre & Miquelon</asp:ListItem>
                                                        <asp:ListItem Value="190">St. Vincent & Grenadines</asp:ListItem>
                                                        <asp:ListItem Value="191">Samoa</asp:ListItem>
                                                        <asp:ListItem Value="192">SanMarino</asp:ListItem>
                                                        <asp:ListItem Value="193">São Tomé Príncipe</asp:ListItem>
                                                        <asp:ListItem Value="194">Saudi Arabia</asp:ListItem>
                                                        <asp:ListItem Value="195">Senegal</asp:ListItem>
                                                        <asp:ListItem Value="196">Serbia</asp:ListItem>
                                                        <asp:ListItem Value="197">Seychelles</asp:ListItem>
                                                        <asp:ListItem Value="198">Sierra Leone</asp:ListItem>
                                                        <asp:ListItem Value="199">Singapore</asp:ListItem>
                                                        <asp:ListItem Value="200">Sint Maarten</asp:ListItem>
                                                        <asp:ListItem Value="201">Slovakia</asp:ListItem>
                                                        <asp:ListItem Value="202">Slovenia</asp:ListItem>
                                                        <asp:ListItem Value="203">Solomon Islands</asp:ListItem>
                                                        <asp:ListItem Value="204">Somalia</asp:ListItem>
                                                        <asp:ListItem Value="205">South Africa</asp:ListItem>
                                                        <asp:ListItem Value="206">South Georgia & South Sandwich Islands</asp:ListItem>
                                                        <asp:ListItem Value="207">South Sudan</asp:ListItem>
                                                        <asp:ListItem Value="208">Spain</asp:ListItem>
                                                        <asp:ListItem Value="209">Sri Lanka</asp:ListItem>
                                                        <asp:ListItem Value="210">Sudan</asp:ListItem>
                                                        <asp:ListItem Value="211">Suriname</asp:ListItem>
                                                        <asp:ListItem Value="212">Svalbard & Jan Mayen</asp:ListItem>
                                                        <asp:ListItem Value="213">Swaziland</asp:ListItem>
                                                        <asp:ListItem Value="214">Sweden</asp:ListItem>
                                                        <asp:ListItem Value="215">Switzerland</asp:ListItem>
                                                        <asp:ListItem Value="216">Syria</asp:ListItem>
                                                        <asp:ListItem Value="217">Taiwan</asp:ListItem>
                                                        <asp:ListItem Value="218">Tajikistan</asp:ListItem>
                                                        <asp:ListItem Value="219">Tanzania</asp:ListItem>
                                                        <asp:ListItem Value="220">Thailand</asp:ListItem>
                                                        <asp:ListItem Value="221">Timor-Leste</asp:ListItem>
                                                        <asp:ListItem Value="222">Togo</asp:ListItem>
                                                        <asp:ListItem Value="223">Tokelau</asp:ListItem>
                                                        <asp:ListItem Value="224">Tonga</asp:ListItem>
                                                        <asp:ListItem Value="225">Trinidad & Tobago</asp:ListItem>
                                                        <asp:ListItem Value="226">Tunisia</asp:ListItem>
                                                        <asp:ListItem Value="227">Turkey</asp:ListItem>
                                                        <asp:ListItem Value="228">Turkmenistan</asp:ListItem>
                                                        <asp:ListItem Value="229">Turks & Caicos Islands</asp:ListItem>
                                                        <asp:ListItem Value="230">Tuvalu</asp:ListItem>
                                                        <asp:ListItem Value="231">Uganda</asp:ListItem>
                                                        <asp:ListItem Value="232">Ukraine</asp:ListItem>
                                                        <asp:ListItem Value="233">United Arab Emirates</asp:ListItem>
                                                        <asp:ListItem Value="234">UK</asp:ListItem>
                                                        <asp:ListItem Value="235">US</asp:ListItem>
                                                        <asp:ListItem Value="236">U.S. Outlying Islands</asp:ListItem>
                                                        <asp:ListItem Value="237">Uruguay</asp:ListItem>
                                                        <asp:ListItem Value="238">Uzbekistan</asp:ListItem>
                                                        <asp:ListItem Value="239">Vanuatu</asp:ListItem>
                                                        <asp:ListItem Value="240">Venezuela</asp:ListItem>
                                                        <asp:ListItem Value="241">Vietnam</asp:ListItem>
                                                        <asp:ListItem Value="242">British Virgin Islands</asp:ListItem>
                                                        <asp:ListItem Value="243">U.S. Virgin Islands</asp:ListItem>
                                                        <asp:ListItem Value="244">Wallis & Futuna</asp:ListItem>
                                                        <asp:ListItem Value="245">Western Sahara</asp:ListItem>
                                                        <asp:ListItem Value="246">Yemen</asp:ListItem>
                                                        <asp:ListItem Value="247">Zambia</asp:ListItem>
                                                        <asp:ListItem Value="248">Zimbabwe</asp:ListItem>
                                                        <asp:ListItem Value="249">Åland Islands</asp:ListItem>
                                                    </asp:DropDownList>
                                                    
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Pin</label>
                                                    <asp:TextBox type="text" runat="server" id="pPin" required="true" onkeypress="filterDigits(event)" class="form-control" tabindex="28"></asp:TextBox>
                                                    <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "pPin" ID="RegularExpressionValidator5" ValidationExpression = "^[\s\S]{6,6}$" 
                                                        runat="server" ErrorMessage="Please enter 6 digits PIN Code"></asp:RegularExpressionValidator>   
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Country</label>
                                                    <asp:DropDownList ID="pCountry" runat="server" required="true" class="form-control" TabIndex="29">
                                                        <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                                                        <asp:ListItem Value="1">Afghanistan</asp:ListItem>
                                                        <asp:ListItem Value="2">Albania</asp:ListItem>
                                                        <asp:ListItem Value="3">Algeria</asp:ListItem>
                                                        <asp:ListItem Value="4">AmericanSamoa</asp:ListItem>
                                                        <asp:ListItem Value="5">Andorra</asp:ListItem>
                                                        <asp:ListItem Value="6">Angola</asp:ListItem>
                                                        <asp:ListItem Value="7">Anguilla</asp:ListItem>
                                                        <asp:ListItem Value="8">Antarctica</asp:ListItem>
                                                        <asp:ListItem Value="9">Antigua & Barbuda</asp:ListItem>
                                                        <asp:ListItem Value="10">Argentina</asp:ListItem>
                                                        <asp:ListItem Value="11">Armenia</asp:ListItem>
                                                        <asp:ListItem Value="12">Aruba</asp:ListItem>
                                                        <asp:ListItem Value="13">Australia</asp:ListItem>
                                                        <asp:ListItem Value="14">Austria</asp:ListItem>
                                                        <asp:ListItem Value="15">Azerbaijan</asp:ListItem>
                                                        <asp:ListItem Value="16">Bahamas</asp:ListItem>
                                                        <asp:ListItem Value="17">Bahrain</asp:ListItem>
                                                        <asp:ListItem Value="18">Bangladesh</asp:ListItem>
                                                        <asp:ListItem Value="19">Barbados</asp:ListItem>
                                                        <asp:ListItem Value="20">Belarus</asp:ListItem>
                                                        <asp:ListItem Value="21">Belgium</asp:ListItem>
                                                        <asp:ListItem Value="22">Belize</asp:ListItem>
                                                        <asp:ListItem Value="23">Benin</asp:ListItem>
                                                        <asp:ListItem Value="24">Bermuda</asp:ListItem>
                                                        <asp:ListItem Value="25">Bhutan</asp:ListItem>
                                                        <asp:ListItem Value="26">Bolivia</asp:ListItem>
                                                        <asp:ListItem Value="27">Caribbean Netherlands</asp:ListItem>
                                                        <asp:ListItem Value="28">Bosnia</asp:ListItem>
                                                        <asp:ListItem Value="29">Botswana</asp:ListItem>
                                                        <asp:ListItem Value="30">Bouvet Island</asp:ListItem>
                                                        <asp:ListItem Value="31">Brazil</asp:ListItem>
                                                        <asp:ListItem Value="32">British Indian Ocean Territory</asp:ListItem>
                                                        <asp:ListItem Value="33">Brunei</asp:ListItem>
                                                        <asp:ListItem Value="34">Bulgaria</asp:ListItem>
                                                        <asp:ListItem Value="35">Burkina Faso</asp:ListItem>
                                                        <asp:ListItem Value="36">Burundi</asp:ListItem>
                                                        <asp:ListItem Value="37">Cambodia</asp:ListItem>
                                                        <asp:ListItem Value="38">Cameroon</asp:ListItem>
                                                        <asp:ListItem Value="39">Canada</asp:ListItem>
                                                        <asp:ListItem Value="40">Cape Verde</asp:ListItem>
                                                        <asp:ListItem Value="41">Cayman Islands</asp:ListItem>
                                                        <asp:ListItem Value="42">Central African Republic</asp:ListItem>
                                                        <asp:ListItem Value="43">Chad</asp:ListItem>
                                                        <asp:ListItem Value="44">Chile</asp:ListItem>
                                                        <asp:ListItem Value="45">China</asp:ListItem>
                                                        <asp:ListItem Value="46">Christmas Island</asp:ListItem>
                                                        <asp:ListItem Value="47">Cocos (Keeling) Islands</asp:ListItem>
                                                        <asp:ListItem Value="48">Colombia</asp:ListItem>
                                                        <asp:ListItem Value="49">Comoros</asp:ListItem>
                                                        <asp:ListItem Value="50">Congo-Brazzaville</asp:ListItem>
                                                        <asp:ListItem Value="51">Congo-Kinshasa</asp:ListItem>
                                                        <asp:ListItem Value="52">Cook Islands</asp:ListItem>
                                                        <asp:ListItem Value="53">Costa Rica</asp:ListItem>
                                                        <asp:ListItem Value="54">Croatia</asp:ListItem>
                                                        <asp:ListItem Value="55">Cuba</asp:ListItem>
                                                        <asp:ListItem Value="56">Curaçao</asp:ListItem>
                                                        <asp:ListItem Value="57">Cyprus</asp:ListItem>
                                                        <asp:ListItem Value="58">Czech Republic</asp:ListItem>
                                                        <asp:ListItem Value="59">Côted’ Ivoire</asp:ListItem>
                                                        <asp:ListItem Value="60">Denmark</asp:ListItem>
                                                        <asp:ListItem Value="61">Djibouti</asp:ListItem>
                                                        <asp:ListItem Value="62">Dominica</asp:ListItem>
                                                        <asp:ListItem Value="63">Dominican Republic</asp:ListItem>
                                                        <asp:ListItem Value="64">Ecuador</asp:ListItem>
                                                        <asp:ListItem Value="65">Egypt</asp:ListItem>
                                                        <asp:ListItem Value="66">ElSalvador</asp:ListItem>
                                                        <asp:ListItem Value="67">Equatorial Guinea</asp:ListItem>
                                                        <asp:ListItem Value="68">Eritrea</asp:ListItem>
                                                        <asp:ListItem Value="69">Estonia</asp:ListItem>
                                                        <asp:ListItem Value="70">Ethiopia</asp:ListItem>
                                                        <asp:ListItem Value="71">Falkland Islands</asp:ListItem>
                                                        <asp:ListItem Value="72">Faroe Islands</asp:ListItem>
                                                        <asp:ListItem Value="73">Fiji</asp:ListItem>
                                                        <asp:ListItem Value="74">Finland</asp:ListItem>
                                                        <asp:ListItem Value="75">France</asp:ListItem>
                                                        <asp:ListItem Value="76">French Guiana</asp:ListItem>
                                                        <asp:ListItem Value="77">French Polynesia</asp:ListItem>
                                                        <asp:ListItem Value="78">French Southern Territories</asp:ListItem>
                                                        <asp:ListItem Value="79">Gabon</asp:ListItem>
                                                        <asp:ListItem Value="80">Gambia</asp:ListItem>
                                                        <asp:ListItem Value="81">Georgia</asp:ListItem>
                                                        <asp:ListItem Value="82">Germany</asp:ListItem>
                                                        <asp:ListItem Value="83">Ghana</asp:ListItem>
                                                        <asp:ListItem Value="84">Gibraltar</asp:ListItem>
                                                        <asp:ListItem Value="85">Greece</asp:ListItem>
                                                        <asp:ListItem Value="86">Greenland</asp:ListItem>
                                                        <asp:ListItem Value="87">Grenada</asp:ListItem>
                                                        <asp:ListItem Value="88">Guadeloupe</asp:ListItem>
                                                        <asp:ListItem Value="89">Guam</asp:ListItem>
                                                        <asp:ListItem Value="90">Guatemala</asp:ListItem>
                                                        <asp:ListItem Value="91">Guernsey</asp:ListItem>
                                                        <asp:ListItem Value="92">Guinea</asp:ListItem>
                                                        <asp:ListItem Value="93">Guinea-Bissau</asp:ListItem>
                                                        <asp:ListItem Value="94">Guyana</asp:ListItem>
                                                        <asp:ListItem Value="95">Haiti</asp:ListItem>
                                                        <asp:ListItem Value="96">Heard & McDonald Islands</asp:ListItem>
                                                        <asp:ListItem Value="97">Vatican City</asp:ListItem>
                                                        <asp:ListItem Value="98">Honduras</asp:ListItem>
                                                        <asp:ListItem Value="99">HongKong</asp:ListItem>
                                                        <asp:ListItem Value="100">Hungary</asp:ListItem>
                                                        <asp:ListItem Value="101">Iceland</asp:ListItem>
                                                        <asp:ListItem Value="102">India</asp:ListItem>
                                                        <asp:ListItem Value="103">Indonesia</asp:ListItem>
                                                        <asp:ListItem Value="104">Iran</asp:ListItem>
                                                        <asp:ListItem Value="105">Iraq</asp:ListItem>
                                                        <asp:ListItem Value="106">Ireland</asp:ListItem>
                                                        <asp:ListItem Value="107">IsleofMan</asp:ListItem>
                                                        <asp:ListItem Value="108">Israel</asp:ListItem>
                                                        <asp:ListItem Value="109">Italy</asp:ListItem>
                                                        <asp:ListItem Value="110">Jamaica</asp:ListItem>
                                                        <asp:ListItem Value="111">Japan</asp:ListItem>
                                                        <asp:ListItem Value="112">Jersey</asp:ListItem>
                                                        <asp:ListItem Value="113">Jordan</asp:ListItem>
                                                        <asp:ListItem Value="114">Kazakhstan</asp:ListItem>
                                                        <asp:ListItem Value="115">Kenya</asp:ListItem>
                                                        <asp:ListItem Value="116">Kiribati</asp:ListItem>
                                                        <asp:ListItem Value="117">North Korea</asp:ListItem>
                                                        <asp:ListItem Value="118">South Korea</asp:ListItem>
                                                        <asp:ListItem Value="119">Kuwait</asp:ListItem>
                                                        <asp:ListItem Value="120">Kyrgyzstan</asp:ListItem>
                                                        <asp:ListItem Value="121">Laos</asp:ListItem>
                                                        <asp:ListItem Value="122">Latvia</asp:ListItem>
                                                        <asp:ListItem Value="123">Lebanon</asp:ListItem>
                                                        <asp:ListItem Value="124">Lesotho</asp:ListItem>
                                                        <asp:ListItem Value="125">Liberia</asp:ListItem>
                                                        <asp:ListItem Value="126">Libya</asp:ListItem>
                                                        <asp:ListItem Value="127">Liechtenstein</asp:ListItem>
                                                        <asp:ListItem Value="128">Lithuania</asp:ListItem>
                                                        <asp:ListItem Value="129">Luxembourg</asp:ListItem>
                                                        <asp:ListItem Value="130">Macau</asp:ListItem>
                                                        <asp:ListItem Value="131">Macedonia</asp:ListItem>
                                                        <asp:ListItem Value="132">Madagascar</asp:ListItem>
                                                        <asp:ListItem Value="133">Malawi</asp:ListItem>
                                                        <asp:ListItem Value="134">Malaysia</asp:ListItem>
                                                        <asp:ListItem Value="135">Maldives</asp:ListItem>
                                                        <asp:ListItem Value="136">Mali</asp:ListItem>
                                                        <asp:ListItem Value="137">Malta</asp:ListItem>
                                                        <asp:ListItem Value="138">Marshall Islands</asp:ListItem>
                                                        <asp:ListItem Value="139">Martinique</asp:ListItem>
                                                        <asp:ListItem Value="140">Mauritania</asp:ListItem>
                                                        <asp:ListItem Value="141">Mauritius</asp:ListItem>
                                                        <asp:ListItem Value="142">Mayotte</asp:ListItem>
                                                        <asp:ListItem Value="143">Mexico</asp:ListItem>
                                                        <asp:ListItem Value="144">Micronesia</asp:ListItem>
                                                        <asp:ListItem Value="145">Moldova</asp:ListItem>
                                                        <asp:ListItem Value="146">Monaco</asp:ListItem>
                                                        <asp:ListItem Value="147">Mongolia</asp:ListItem>
                                                        <asp:ListItem Value="148">Montenegro</asp:ListItem>
                                                        <asp:ListItem Value="149">Montserrat</asp:ListItem>
                                                        <asp:ListItem Value="150">Morocco</asp:ListItem>
                                                        <asp:ListItem Value="151">Mozambique</asp:ListItem>
                                                        <asp:ListItem Value="152">Myanmar</asp:ListItem>
                                                        <asp:ListItem Value="153">Namibia</asp:ListItem>
                                                        <asp:ListItem Value="154">Nauru</asp:ListItem>
                                                        <asp:ListItem Value="155">Nepal</asp:ListItem>
                                                        <asp:ListItem Value="156">Netherlands</asp:ListItem>
                                                        <asp:ListItem Value="157">New Caledonia</asp:ListItem>
                                                        <asp:ListItem Value="158">New Zealand</asp:ListItem>
                                                        <asp:ListItem Value="159">Nicaragua</asp:ListItem>
                                                        <asp:ListItem Value="160">Niger</asp:ListItem>
                                                        <asp:ListItem Value="161">Nigeria</asp:ListItem>
                                                        <asp:ListItem Value="162">Niue</asp:ListItem>
                                                        <asp:ListItem Value="163">Norfolk Island</asp:ListItem>
                                                        <asp:ListItem Value="164">Northern Mariana Islands</asp:ListItem>
                                                        <asp:ListItem Value="165">Norway</asp:ListItem>
                                                        <asp:ListItem Value="166">Oman</asp:ListItem>
                                                        <asp:ListItem Value="167">Pakistan</asp:ListItem>
                                                        <asp:ListItem Value="168">Palau</asp:ListItem>
                                                        <asp:ListItem Value="169">Palestine</asp:ListItem>
                                                        <asp:ListItem Value="170">Panama</asp:ListItem>
                                                        <asp:ListItem Value="171">Papua New Guinea</asp:ListItem>
                                                        <asp:ListItem Value="172">Paraguay</asp:ListItem>
                                                        <asp:ListItem Value="173">Peru</asp:ListItem>
                                                        <asp:ListItem Value="174">Philippines</asp:ListItem>
                                                        <asp:ListItem Value="175">Pitcairn Islands</asp:ListItem>
                                                        <asp:ListItem Value="176">Poland</asp:ListItem>
                                                        <asp:ListItem Value="177">Portugal</asp:ListItem>
                                                        <asp:ListItem Value="178">Puerto Rico</asp:ListItem>
                                                        <asp:ListItem Value="179">Qatar</asp:ListItem>
                                                        <asp:ListItem Value="180">Romania</asp:ListItem>
                                                        <asp:ListItem Value="181">Russia</asp:ListItem>
                                                        <asp:ListItem Value="182">Rwanda</asp:ListItem>
                                                        <asp:ListItem Value="183">Réunion</asp:ListItem>
                                                        <asp:ListItem Value="184">St. Barthélemy</asp:ListItem>
                                                        <asp:ListItem Value="185">St. Helena</asp:ListItem>
                                                        <asp:ListItem Value="186">St. Kitts & Nevis</asp:ListItem>
                                                        <asp:ListItem Value="187">St. Lucia</asp:ListItem>
                                                        <asp:ListItem Value="188">St. Martin</asp:ListItem>
                                                        <asp:ListItem Value="189">St. Pierre & Miquelon</asp:ListItem>
                                                        <asp:ListItem Value="190">St. Vincent & Grenadines</asp:ListItem>
                                                        <asp:ListItem Value="191">Samoa</asp:ListItem>
                                                        <asp:ListItem Value="192">SanMarino</asp:ListItem>
                                                        <asp:ListItem Value="193">São Tomé Príncipe</asp:ListItem>
                                                        <asp:ListItem Value="194">Saudi Arabia</asp:ListItem>
                                                        <asp:ListItem Value="195">Senegal</asp:ListItem>
                                                        <asp:ListItem Value="196">Serbia</asp:ListItem>
                                                        <asp:ListItem Value="197">Seychelles</asp:ListItem>
                                                        <asp:ListItem Value="198">Sierra Leone</asp:ListItem>
                                                        <asp:ListItem Value="199">Singapore</asp:ListItem>
                                                        <asp:ListItem Value="200">Sint Maarten</asp:ListItem>
                                                        <asp:ListItem Value="201">Slovakia</asp:ListItem>
                                                        <asp:ListItem Value="202">Slovenia</asp:ListItem>
                                                        <asp:ListItem Value="203">Solomon Islands</asp:ListItem>
                                                        <asp:ListItem Value="204">Somalia</asp:ListItem>
                                                        <asp:ListItem Value="205">South Africa</asp:ListItem>
                                                        <asp:ListItem Value="206">South Georgia & South Sandwich Islands</asp:ListItem>
                                                        <asp:ListItem Value="207">South Sudan</asp:ListItem>
                                                        <asp:ListItem Value="208">Spain</asp:ListItem>
                                                        <asp:ListItem Value="209">Sri Lanka</asp:ListItem>
                                                        <asp:ListItem Value="210">Sudan</asp:ListItem>
                                                        <asp:ListItem Value="211">Suriname</asp:ListItem>
                                                        <asp:ListItem Value="212">Svalbard & Jan Mayen</asp:ListItem>
                                                        <asp:ListItem Value="213">Swaziland</asp:ListItem>
                                                        <asp:ListItem Value="214">Sweden</asp:ListItem>
                                                        <asp:ListItem Value="215">Switzerland</asp:ListItem>
                                                        <asp:ListItem Value="216">Syria</asp:ListItem>
                                                        <asp:ListItem Value="217">Taiwan</asp:ListItem>
                                                        <asp:ListItem Value="218">Tajikistan</asp:ListItem>
                                                        <asp:ListItem Value="219">Tanzania</asp:ListItem>
                                                        <asp:ListItem Value="220">Thailand</asp:ListItem>
                                                        <asp:ListItem Value="221">Timor-Leste</asp:ListItem>
                                                        <asp:ListItem Value="222">Togo</asp:ListItem>
                                                        <asp:ListItem Value="223">Tokelau</asp:ListItem>
                                                        <asp:ListItem Value="224">Tonga</asp:ListItem>
                                                        <asp:ListItem Value="225">Trinidad & Tobago</asp:ListItem>
                                                        <asp:ListItem Value="226">Tunisia</asp:ListItem>
                                                        <asp:ListItem Value="227">Turkey</asp:ListItem>
                                                        <asp:ListItem Value="228">Turkmenistan</asp:ListItem>
                                                        <asp:ListItem Value="229">Turks & Caicos Islands</asp:ListItem>
                                                        <asp:ListItem Value="230">Tuvalu</asp:ListItem>
                                                        <asp:ListItem Value="231">Uganda</asp:ListItem>
                                                        <asp:ListItem Value="232">Ukraine</asp:ListItem>
                                                        <asp:ListItem Value="233">United Arab Emirates</asp:ListItem>
                                                        <asp:ListItem Value="234">UK</asp:ListItem>
                                                        <asp:ListItem Value="235">US</asp:ListItem>
                                                        <asp:ListItem Value="236">U.S. Outlying Islands</asp:ListItem>
                                                        <asp:ListItem Value="237">Uruguay</asp:ListItem>
                                                        <asp:ListItem Value="238">Uzbekistan</asp:ListItem>
                                                        <asp:ListItem Value="239">Vanuatu</asp:ListItem>
                                                        <asp:ListItem Value="240">Venezuela</asp:ListItem>
                                                        <asp:ListItem Value="241">Vietnam</asp:ListItem>
                                                        <asp:ListItem Value="242">British Virgin Islands</asp:ListItem>
                                                        <asp:ListItem Value="243">U.S. Virgin Islands</asp:ListItem>
                                                        <asp:ListItem Value="244">Wallis & Futuna</asp:ListItem>
                                                        <asp:ListItem Value="245">Western Sahara</asp:ListItem>
                                                        <asp:ListItem Value="246">Yemen</asp:ListItem>
                                                        <asp:ListItem Value="247">Zambia</asp:ListItem>
                                                        <asp:ListItem Value="248">Zimbabwe</asp:ListItem>
                                                        <asp:ListItem Value="249">Åland Islands</asp:ListItem>
                                                    </asp:DropDownList>
                                                    
                                                </div>
                                            </div>
                                        </div><!-- End Row -->

                                        <hr class="line" />

                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Upload Photo</label>
                                                <asp:FileUpload ID="FileUpload_Photo"  runat="server" TabIndex="30" />
                                                <asp:Button type="button" ID="btnUpload_Photo" class="btn btn-warning" runat="server" Text="Upload Photo" OnClick="btnUpload_Photo_Click" TabIndex="31" UseSubmitBehavior="false"/>
                                                <br />
                                                <asp:Label ID="lblMessage_Photo" runat="server" Text="" Font-Names = "Arial"></asp:Label>
                                            </div>
                                            <div class="col-md-6">
                                                <label>Upload Signature</label>
                                                <asp:FileUpload ID="FileUpload_Sign" runat="server" TabIndex="32" />
                                                <asp:Button type="button" ID="btnUpload_Sign" class="btn btn-warning" runat="server" Text="Upload Signature" OnClick="btnUpload_Sign_Click" TabIndex="33" UseSubmitBehavior="false"/>
                                                <br />
                                                <asp:Label ID="lblMessage_Sign" runat="server" Text="" Font-Names = "Arial"></asp:Label>
                                            </div>
                                        </div>
                                        
                                        <hr/>

                                         <div class="form-group text-center">
                                            <asp:Button CssClass="btn btn-success" ID="btnSaveGeneralDetail" runat="server" Text="Save and Preview"
                                            OnClick="btnGeneralDetailsSubmit" TabIndex="34"/>
                                        </div>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>

                            

                        </div><!-- End Panel-Body -->
                </div> <!-- End Panel panel-info -->

                    
                <div class="card card-profile" ID="cardPersonalDetails_Preview" runat="server" Visible="false">
                <div class="card-avatar">
                    <asp:Image class="img" id="photoPreview" runat="server" ></asp:Image>
                </div>
                <div class="content">
                    <div class="row">
                        <div class="col-md-2 col-md-offset-5">
                        <asp:Image class="img" id="signPreview" runat="server" ></asp:Image>
                        </div>
                    </div>
                    </div>
                    <div class="card-title"></div>
                    <div class="card-content" style="text-align:left;">
                        <asp:Table ID="tblPersonalDetails" CssClass="table" runat="server">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <div class="row">
                                            <div class="col-lg-5">
                                                <div class="form-group">
                                                    <asp:Label runat="server">Name : </asp:Label>
                                                    <strong><asp:Label ID="lblFname" runat="server"></asp:Label></strong>
                                                </div>
                                            </div>
                                            <div class="col-lg-3">
                                                <div class="form-group">
                                                    <asp:Label runat="server">Gender : </asp:Label>
                                                    <strong><asp:Label ID="lblGender" runat="server"></asp:Label></strong>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label runat="server">Date of Birth : </asp:Label>
                                                    <strong><asp:Label ID="lblDob" runat="server"></asp:Label></strong>
                                                </div>
                                            </div>
                                        </div>
                                        <hr />
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label runat="server">Category : </asp:Label>
                                                    <strong><asp:Label ID="lblCategory" runat="server"></asp:Label></strong>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label runat="server">PWD : </asp:Label>
                                                    <strong><asp:Label ID="lblPwd" runat="server"></asp:Label></strong>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label runat="server">Ex-Serviceman : </asp:Label>
                                                    <strong><asp:Label ID="lblExServiceman" runat="server"></asp:Label></strong>
                                                </div>
                                            </div>
                                        </div>
                                        <hr />
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label runat="server">Nationality : </asp:Label>
                                                    <strong><asp:Label ID="lblNation" runat="server"></asp:Label></strong>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label runat="server">Marital Status : </asp:Label>
                                                    <strong><asp:Label ID="lblMstatus" runat="server"></asp:Label></strong>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label runat="server">Minority : </asp:Label>
                                                    <strong><asp:Label ID="lblMinority" runat="server"></asp:Label></strong>
                                                </div>
                                            </div>
                                        </div>
                                        <hr />
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <asp:Label runat="server">Father's Name : </asp:Label>
                                                    <strong><asp:Label ID="lblFatherName" runat="server"></asp:Label></strong>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <asp:Label runat="server">Mother's Name : </asp:Label>
                                                    <strong><asp:Label ID="lblMotherName" runat="server"></asp:Label></strong>
                                                </div>
                                            </div>
                                        </div>
                                        <hr />
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <asp:Label runat="server">Email : </asp:Label>
                                                    <strong><asp:Label ID="lblEmail" runat="server"></asp:Label></strong>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <asp:Label runat="server">Alternate Email : </asp:Label>
                                                    <strong><asp:Label ID="lblAltEmail" runat="server"></asp:Label></strong>
                                                </div>
                                            </div>
                                        </div>
                                        <hr />
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label runat="server">Phone : </asp:Label>
                                                    <strong><asp:Label ID="lblPhoneNo" runat="server"></asp:Label></strong>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label runat="server">Mobile No. : </asp:Label>
                                                    <strong><asp:Label ID="lblMobileNo" runat="server"></asp:Label></strong>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:label runat="server">Applicant's Aadhar Number. :</asp:label>
                                                    <strong><asp:Label runat="server" id="lblAadharNo"></asp:Label></strong>
                                                    
                                                </div>
                                            </div>
                                        </div>
                                        <hr />
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <asp:Label runat="server">Address of Correspondence</asp:Label>
                                            </div>
                                            <div class="col-lg-6">
                                                <asp:Label runat="server">Permanent Address</asp:Label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <strong><asp:Label ID="lblCAdd1" runat="server"></asp:Label></strong><br />
                                                <strong><asp:Label ID="lblCAdd2" runat="server"></asp:Label></strong><br />
                                                <strong><asp:Label ID="lblCCityState" runat="server"></asp:Label></strong><br />
                                                <strong><asp:Label ID="lblCPinCountry" runat="server"></asp:Label></strong>
                                            </div>
                                            <div class="col-lg-6">
                                                <strong><asp:Label ID="lblPAdd1" runat="server"></asp:Label></strong><br />
                                                <strong><asp:Label ID="lblPAdd2" runat="server"></asp:Label></strong><br />
                                                <strong><asp:Label ID="lblPCityState" runat="server"></asp:Label></strong><br />
                                                <strong><asp:Label ID="lblPPinCountry" runat="server"></asp:Label></strong>
                                            </div>
                                        </div>
                                        <hr/>
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <asp:label runat="server">Photo Uploaded : </asp:label>
                                                <asp:HyperLink ID="HyperLinkPhoto" runat="server"><strong><asp:Label runat="server" ID="FileUpload_Photo_Loc"></asp:Label></strong></asp:HyperLink>
                                            </div>
                                            <div class="col-lg-6">
                                                <asp:label runat="server">Signature Uploaded : </asp:label>
                                                <asp:HyperLink ID="HyperLinkSign" runat="server"><strong><asp:Label runat="server" ID="FileUpload_Sign_Loc"></asp:Label></strong></asp:HyperLink>   
                                            </div>
                                        </div>
                                        <hr class="line" />
                                        <div class="form-group text-center">
                                            <asp:Button CssClass="btn btn-primary" ID="btnPersonalDetailsEdit" runat="server" Text="Edit Details"
                                                OnClick="btnPersonalDetailsEdit_Click" TabIndex="29"/>&nbsp &nbsp
                                            <asp:Button CssClass="btn btn-success" ID="btnPersonalDetailsNext" runat="server" Text="Proceed"
                                                OnClick="btnPersonalDetailsNext_Click" TabIndex="29"/>
                                        </div>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                    </div>             
                </div>
                </div>
                </div>
            <script>
                $(".datePicker").dateDropper();
            </script> 
        </form>
    <script>
        $("#GeneralDetails").addClass("active");
    </script>
    <script>
        $("#personalDetails").validate({
        });
    </script>
    <script>
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }
    </script>
     <script type="text/javascript">
         function filterDigits(eventInstance) {
             eventInstance = eventInstance || window.event;
             key = eventInstance.keyCode || eventInstance.which;
             if ((47 < key) && (key < 58) || key == 8) {
                 return true;
             } else {
                 alert("Digits Only");
                 if (eventInstance.preventDefault) eventInstance.preventDefault();
                 eventInstance.returnValue = false;
                 return false;
             } //if
         } //filterDigits
         function filterAlphabet(eventInstance) {
             eventInstance = eventInstance || window.event;
             key = eventInstance.keyCode || eventInstance.which;
             if ((65 <= key) && (key <= 90) || key == 8 || (key >= 97) && (key <= 122) || key == 32) {
                 return true;
             } else {
                 alert("Alphabets Only");
                 if (eventInstance.preventDefault) eventInstance.preventDefault();
                 eventInstance.returnValue = false;
                 return false;
             } //if
         } //filterDigits
         function filterAlphaNumeric(eventInstance) {
             eventInstance = eventInstance || window.event;
             key = eventInstance.keyCode || eventInstance.which;
             if ((48 <= key) && (key <= 57) || (65 <= key) && (key <= 90) || key == 8 || (key >= 97) && (key <= 122) || key == 32) {
                 return true;
             } else {
                 alert("Alphabets & Digits Only");
                 if (eventInstance.preventDefault) eventInstance.preventDefault();
                 eventInstance.returnValue = false;
                 return false;
             } //if
         } //filterDigits
         function filterAlphaNumericExt(eventInstance) {
             eventInstance = eventInstance || window.event;
             key = eventInstance.keyCode || eventInstance.which;
             if ((48 <= key) && (key <= 57) || (65 <= key) && (key <= 90) || key == 8 || (key >= 97) && (key <= 122) || key == 32 || key == 44 || key == 46) {
                 return true;
             } else {
                 if (eventInstance.preventDefault) eventInstance.preventDefault();
                 eventInstance.returnValue = false;
                 return false;
             } //if
         } //filterDigits
    </script>
</asp:Content>