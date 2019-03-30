<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/FormsMasterPage.master" AutoEventWireup="true" CodeFile="GeneralDetails.aspx.cs" Inherits="GeneralDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!-- include summernote css/js-->
    <link href="assets/css/datedropper.css" rel="stylesheet">
    <link href="assets/css/datedropper_style.css" rel="stylesheet">
    <script src="assets/js/datedropper.js" type="text/javascript"></script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <form role="form" id="personalDetails" runat="server" style="overflow-y: scroll;">
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
                                                        <asp:ListItem Value="Female">Female</asp:ListItem>
                                                        <asp:ListItem Value="Male">Male</asp:ListItem>
                                                        <asp:ListItem Value="Other">Other</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-lg-3">
                                                <div class="form-group">
                                                    <label>Date of Birth</label>
                                                    <asp:TextBox type="text" ID="dob" class="form-control datepicker" runat="server"> </asp:TextBox>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Category</label>
                                                    <asp:DropDownList ID="categoryList" runat="server" required="true"  class="form-control" TabIndex="4">
                                                        <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                                                        <asp:ListItem Value="UR">UR</asp:ListItem>
                                                        <asp:ListItem Value="OBC">OBC</asp:ListItem>
                                                        <asp:ListItem Value="SC">SC</asp:ListItem>
                                                        <asp:ListItem Value="ST">ST</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>PWD</label>
                                                    <asp:DropDownList ID="pwdList" runat="server" required="true" class="form-control" TabIndex="5">
                                                        <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                                                        <asp:ListItem Value="No">No</asp:ListItem>
                                                        <asp:ListItem Value="Yes">Yes</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Ex-Serviceman</label>
                                                    <asp:DropDownList ID="exServiemanList" runat="server" required="true"  class="form-control" TabIndex="6">
                                                        <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                                                        <asp:ListItem Value="No">No</asp:ListItem>
                                                        <asp:ListItem Value="Yes">Yes</asp:ListItem>
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
                                                        <asp:ListItem Value="Indian">Indian</asp:ListItem>
                                                        <asp:ListItem Value="Foreign National">Foreign National</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Marital Status</label>
                                                    <asp:DropDownList ID="maritalStatus" runat="server" required="true" class="form-control" TabIndex="8">
                                                        <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                                                        <asp:ListItem Value="Married">Married</asp:ListItem>
                                                        <asp:ListItem Value="Unmarried">Unmarried</asp:ListItem>
                                                        <asp:ListItem Value="Others">Others</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Minority</label>
                                                    <asp:DropDownList ID="minorityList" runat="server" required="true"  class="form-control" TabIndex="9">
                                                        <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                                                        <asp:ListItem Value="No">No</asp:ListItem>
                                                        <asp:ListItem Value="Yes">Yes</asp:ListItem>
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
                                                    <asp:Label runat="server" tabindex="12" id="email" class="form-control"> </asp:Label>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <label>Alternate Email</label>
                                                    <asp:TextBox type="email" runat="server" id="altEmail"  class="form-control" 
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
                                                    
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <label>Mobile No.</label>
                                                    <asp:Label ID="mobileNumber" CssClass="form-control" runat="server" tabindex="15"> </asp:label>
                                                    
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
                                                        <asp:ListItem Value="Outside India">Outside India</asp:ListItem>
                                                        <asp:ListItem Value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</asp:ListItem>
                                                        <asp:ListItem Value="Andhra Pradesh">Andhra Pradesh</asp:ListItem>
                                                        <asp:ListItem Value="Arunachal Pradesh">Arunachal Pradesh</asp:ListItem>
                                                        <asp:ListItem Value="Assam">Assam</asp:ListItem>
                                                        <asp:ListItem Value="Bihar">Bihar</asp:ListItem>
                                                        <asp:ListItem Value="Chandigarh">Chandigarh</asp:ListItem>
                                                        <asp:ListItem Value="Chhattisgarh">Chhattisgarh</asp:ListItem>
                                                        <asp:ListItem Value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</asp:ListItem>
                                                        <asp:ListItem Value="Daman and Diu">Daman and Diu</asp:ListItem>
                                                        <asp:ListItem Value="Delhi">Delhi</asp:ListItem>
                                                        <asp:ListItem Value="Goa">Goa</asp:ListItem>
                                                        <asp:ListItem Value="Gujarat">Gujarat</asp:ListItem>
                                                        <asp:ListItem Value="Haryana">Haryana</asp:ListItem>
                                                        <asp:ListItem Value="Himachal Pradesh">Himachal Pradesh</asp:ListItem>
                                                        <asp:ListItem Value="Jammu and Kashmir">Jammu and Kashmir</asp:ListItem>
                                                        <asp:ListItem Value="Jharkhand">Jharkhand</asp:ListItem>
                                                        <asp:ListItem Value="Karnataka">Karnataka</asp:ListItem>
                                                        <asp:ListItem Value="Kerala">Kerala</asp:ListItem>
                                                        <asp:ListItem Value="Lakshadweep">Lakshadweep</asp:ListItem>
                                                        <asp:ListItem Value="Madhya Pradesh">Madhya Pradesh</asp:ListItem>
                                                        <asp:ListItem Value="Maharashtra">Maharashtra</asp:ListItem>
                                                        <asp:ListItem Value="Manipur">Manipur</asp:ListItem>
                                                        <asp:ListItem Value="Meghalaya">Meghalaya</asp:ListItem>
                                                        <asp:ListItem Value="Mizoram">Mizoram</asp:ListItem>
                                                        <asp:ListItem Value="Nagaland">Nagaland</asp:ListItem>
                                                        <asp:ListItem Value="Odisha">Odisha</asp:ListItem>
                                                        <asp:ListItem Value="Puducherry">Puducherry</asp:ListItem>
                                                        <asp:ListItem Value="Punjab">Punjab</asp:ListItem>
                                                        <asp:ListItem Value="Rajasthan">Rajasthan</asp:ListItem>
                                                        <asp:ListItem Value="Sikkim">Sikkim</asp:ListItem>
                                                        <asp:ListItem Value="Tamil Nadu">Tamil Nadu</asp:ListItem>
                                                        <asp:ListItem Value="Telangana">Telangana</asp:ListItem>
                                                        <asp:ListItem Value="Tripura">Tripura</asp:ListItem>
                                                        <asp:ListItem Value="Uttar Pradesh">Uttar Pradesh</asp:ListItem>
                                                        <asp:ListItem Value="Uttarakhand">Uttarakhand</asp:ListItem>
                                                        <asp:ListItem Value="West Bengal">West Bengal</asp:ListItem>
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
                                                        <asp:ListItem Value="Outside India">Outside India</asp:ListItem>
                                                        <asp:ListItem Value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</asp:ListItem>
                                                        <asp:ListItem Value="Andhra Pradesh">Andhra Pradesh</asp:ListItem>
                                                        <asp:ListItem Value="Arunachal Pradesh">Arunachal Pradesh</asp:ListItem>
                                                        <asp:ListItem Value="Assam">Assam</asp:ListItem>
                                                        <asp:ListItem Value="Bihar">Bihar</asp:ListItem>
                                                        <asp:ListItem Value="Chandigarh">Chandigarh</asp:ListItem>
                                                        <asp:ListItem Value="Chhattisgarh">Chhattisgarh</asp:ListItem>
                                                        <asp:ListItem Value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</asp:ListItem>
                                                        <asp:ListItem Value="Daman and Diu">Daman and Diu</asp:ListItem>
                                                        <asp:ListItem Value="Delhi">Delhi</asp:ListItem>
                                                        <asp:ListItem Value="Goa">Goa</asp:ListItem>
                                                        <asp:ListItem Value="Gujarat">Gujarat</asp:ListItem>
                                                        <asp:ListItem Value="Haryana">Haryana</asp:ListItem>
                                                        <asp:ListItem Value="Himachal Pradesh">Himachal Pradesh</asp:ListItem>
                                                        <asp:ListItem Value="Jammu and Kashmir">Jammu and Kashmir</asp:ListItem>
                                                        <asp:ListItem Value="Jharkhand">Jharkhand</asp:ListItem>
                                                        <asp:ListItem Value="Karnataka">Karnataka</asp:ListItem>
                                                        <asp:ListItem Value="Kerala">Kerala</asp:ListItem>
                                                        <asp:ListItem Value="Lakshadweep">Lakshadweep</asp:ListItem>
                                                        <asp:ListItem Value="Madhya Pradesh">Madhya Pradesh</asp:ListItem>
                                                        <asp:ListItem Value="Maharashtra">Maharashtra</asp:ListItem>
                                                        <asp:ListItem Value="Manipur">Manipur</asp:ListItem>
                                                        <asp:ListItem Value="Meghalaya">Meghalaya</asp:ListItem>
                                                        <asp:ListItem Value="Mizoram">Mizoram</asp:ListItem>
                                                        <asp:ListItem Value="Nagaland">Nagaland</asp:ListItem>
                                                        <asp:ListItem Value="Odisha">Odisha</asp:ListItem>
                                                        <asp:ListItem Value="Puducherry">Puducherry</asp:ListItem>
                                                        <asp:ListItem Value="Punjab">Punjab</asp:ListItem>
                                                        <asp:ListItem Value="Rajasthan">Rajasthan</asp:ListItem>
                                                        <asp:ListItem Value="Sikkim">Sikkim</asp:ListItem>
                                                        <asp:ListItem Value="Tamil Nadu">Tamil Nadu</asp:ListItem>
                                                        <asp:ListItem Value="Telangana">Telangana</asp:ListItem>
                                                        <asp:ListItem Value="Tripura">Tripura</asp:ListItem>
                                                        <asp:ListItem Value="Uttar Pradesh">Uttar Pradesh</asp:ListItem>
                                                        <asp:ListItem Value="Uttarakhand">Uttarakhand</asp:ListItem>
                                                        <asp:ListItem Value="West Bengal">West Bengal</asp:ListItem>
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
                                                        <asp:ListItem Value="Afghanistan">Afghanistan</asp:ListItem>
                                                        <asp:ListItem Value="Albania">Albania</asp:ListItem>
                                                        <asp:ListItem Value="Algeria">Algeria</asp:ListItem>
                                                        <asp:ListItem Value="AmericanSamoa">AmericanSamoa</asp:ListItem>
                                                        <asp:ListItem Value="Andorra">Andorra</asp:ListItem>
                                                        <asp:ListItem Value="Angola">Angola</asp:ListItem>
                                                        <asp:ListItem Value="Anguilla">Anguilla</asp:ListItem>
                                                        <asp:ListItem Value="Antarctica">Antarctica</asp:ListItem>
                                                        <asp:ListItem Value="Antigua & Barbuda">Antigua & Barbuda</asp:ListItem>
                                                        <asp:ListItem Value="Argentina">Argentina</asp:ListItem>
                                                        <asp:ListItem Value="Armenia">Armenia</asp:ListItem>
                                                        <asp:ListItem Value="Aruba">Aruba</asp:ListItem>
                                                        <asp:ListItem Value="Australia">Australia</asp:ListItem>
                                                        <asp:ListItem Value="Austria">Austria</asp:ListItem>
                                                        <asp:ListItem Value="Azerbaijan">Azerbaijan</asp:ListItem>
                                                        <asp:ListItem Value="Bahamas">Bahamas</asp:ListItem>
                                                        <asp:ListItem Value="Bahrain">Bahrain</asp:ListItem>
                                                        <asp:ListItem Value="Bangladesh">Bangladesh</asp:ListItem>
                                                        <asp:ListItem Value="Barbados">Barbados</asp:ListItem>
                                                        <asp:ListItem Value="Belarus">Belarus</asp:ListItem>
                                                        <asp:ListItem Value="Belgium">Belgium</asp:ListItem>
                                                        <asp:ListItem Value="Belize">Belize</asp:ListItem>
                                                        <asp:ListItem Value="Benin">Benin</asp:ListItem>
                                                        <asp:ListItem Value="Bermuda">Bermuda</asp:ListItem>
                                                        <asp:ListItem Value="Bhutan">Bhutan</asp:ListItem>
                                                        <asp:ListItem Value="Bolivia">Bolivia</asp:ListItem>
                                                        <asp:ListItem Value="Caribbean Netherlands">Caribbean Netherlands</asp:ListItem>
                                                        <asp:ListItem Value="Bosnia">Bosnia</asp:ListItem>
                                                        <asp:ListItem Value="Botswana">Botswana</asp:ListItem>
                                                        <asp:ListItem Value="Bouvet Island">Bouvet Island</asp:ListItem>
                                                        <asp:ListItem Value="Brazil">Brazil</asp:ListItem>
                                                        <asp:ListItem Value="British Indian Ocean Territory">British Indian Ocean Territory</asp:ListItem>
                                                        <asp:ListItem Value="Brunei">Brunei</asp:ListItem>
                                                        <asp:ListItem Value="Bulgaria">Bulgaria</asp:ListItem>
                                                        <asp:ListItem Value="Burkina Faso">Burkina Faso</asp:ListItem>
                                                        <asp:ListItem Value="Burundi">Burundi</asp:ListItem>
                                                        <asp:ListItem Value="Cambodia">Cambodia</asp:ListItem>
                                                        <asp:ListItem Value="Cameroon">Cameroon</asp:ListItem>
                                                        <asp:ListItem Value="Canada">Canada</asp:ListItem>
                                                        <asp:ListItem Value="Cape Verde">Cape Verde</asp:ListItem>
                                                        <asp:ListItem Value="Cayman Islands">Cayman Islands</asp:ListItem>
                                                        <asp:ListItem Value="Central African Republic">Central African Republic</asp:ListItem>
                                                        <asp:ListItem Value="Chad">Chad</asp:ListItem>
                                                        <asp:ListItem Value="Chile">Chile</asp:ListItem>
                                                        <asp:ListItem Value="China">China</asp:ListItem>
                                                        <asp:ListItem Value="Christmas Island">Christmas Island</asp:ListItem>
                                                        <asp:ListItem Value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</asp:ListItem>
                                                        <asp:ListItem Value="Colombia">Colombia</asp:ListItem>
                                                        <asp:ListItem Value="Comoros">Comoros</asp:ListItem>
                                                        <asp:ListItem Value="Congo-Brazzaville">Congo-Brazzaville</asp:ListItem>
                                                        <asp:ListItem Value="Congo-Kinshasa">Congo-Kinshasa</asp:ListItem>
                                                        <asp:ListItem Value="Cook Islands">Cook Islands</asp:ListItem>
                                                        <asp:ListItem Value="Costa Rica">Costa Rica</asp:ListItem>
                                                        <asp:ListItem Value="Croatia">Croatia</asp:ListItem>
                                                        <asp:ListItem Value="Cuba">Cuba</asp:ListItem>
                                                        <asp:ListItem Value="Curaçao">Curaçao</asp:ListItem>
                                                        <asp:ListItem Value="Cyprus">Cyprus</asp:ListItem>
                                                        <asp:ListItem Value="Czech Republic">Czech Republic</asp:ListItem>
                                                        <asp:ListItem Value="Côted’ Ivoire">Côted’ Ivoire</asp:ListItem>
                                                        <asp:ListItem Value="Denmark">Denmark</asp:ListItem>
                                                        <asp:ListItem Value="Djibouti">Djibouti</asp:ListItem>
                                                        <asp:ListItem Value="Dominica">Dominica</asp:ListItem>
                                                        <asp:ListItem Value="Dominican Republic">Dominican Republic</asp:ListItem>
                                                        <asp:ListItem Value="Ecuador">Ecuador</asp:ListItem>
                                                        <asp:ListItem Value="Egypt">Egypt</asp:ListItem>
                                                        <asp:ListItem Value="ElSalvador">ElSalvador</asp:ListItem>
                                                        <asp:ListItem Value="Equatorial Guinea">Equatorial Guinea</asp:ListItem>
                                                        <asp:ListItem Value="Eritrea">Eritrea</asp:ListItem>
                                                        <asp:ListItem Value="Estonia">Estonia</asp:ListItem>
                                                        <asp:ListItem Value="Ethiopia">Ethiopia</asp:ListItem>
                                                        <asp:ListItem Value="Falkland Islands">Falkland Islands</asp:ListItem>
                                                        <asp:ListItem Value="Faroe Islands">Faroe Islands</asp:ListItem>
                                                        <asp:ListItem Value="Fiji">Fiji</asp:ListItem>
                                                        <asp:ListItem Value="Finland">Finland</asp:ListItem>
                                                        <asp:ListItem Value="France">France</asp:ListItem>
                                                        <asp:ListItem Value="French Guiana">French Guiana</asp:ListItem>
                                                        <asp:ListItem Value="French Polynesia">French Polynesia</asp:ListItem>
                                                        <asp:ListItem Value="French Southern Territories">French Southern Territories</asp:ListItem>
                                                        <asp:ListItem Value="Gabon">Gabon</asp:ListItem>
                                                        <asp:ListItem Value="Gambia">Gambia</asp:ListItem>
                                                        <asp:ListItem Value="Georgia">Georgia</asp:ListItem>
                                                        <asp:ListItem Value="Germany">Germany</asp:ListItem>
                                                        <asp:ListItem Value="Ghana">Ghana</asp:ListItem>
                                                        <asp:ListItem Value="Gibraltar">Gibraltar</asp:ListItem>
                                                        <asp:ListItem Value="Greece">Greece</asp:ListItem>
                                                        <asp:ListItem Value="Greenland">Greenland</asp:ListItem>
                                                        <asp:ListItem Value="Grenada">Grenada</asp:ListItem>
                                                        <asp:ListItem Value="Guadeloupe">Guadeloupe</asp:ListItem>
                                                        <asp:ListItem Value="Guam">Guam</asp:ListItem>
                                                        <asp:ListItem Value="Guatemala">Guatemala</asp:ListItem>
                                                        <asp:ListItem Value="Guernsey">Guernsey</asp:ListItem>
                                                        <asp:ListItem Value="Guinea">Guinea</asp:ListItem>
                                                        <asp:ListItem Value="Guinea-Bissau">Guinea-Bissau</asp:ListItem>
                                                        <asp:ListItem Value="Guyana">Guyana</asp:ListItem>
                                                        <asp:ListItem Value="Haiti">Haiti</asp:ListItem>
                                                        <asp:ListItem Value="Heard & McDonald Islands">Heard & McDonald Islands</asp:ListItem>
                                                        <asp:ListItem Value="Vatican City">Vatican City</asp:ListItem>
                                                        <asp:ListItem Value="Honduras">Honduras</asp:ListItem>
                                                        <asp:ListItem Value="HongKong">HongKong</asp:ListItem>
                                                        <asp:ListItem Value="Hungary">Hungary</asp:ListItem>
                                                        <asp:ListItem Value="Iceland">Iceland</asp:ListItem>
                                                        <asp:ListItem Value="India">India</asp:ListItem>
                                                        <asp:ListItem Value="Indonesia">Indonesia</asp:ListItem>
                                                        <asp:ListItem Value="Iran">Iran</asp:ListItem>
                                                        <asp:ListItem Value="Iraq">Iraq</asp:ListItem>
                                                        <asp:ListItem Value="Ireland">Ireland</asp:ListItem>
                                                        <asp:ListItem Value="IsleofMan">IsleofMan</asp:ListItem>
                                                        <asp:ListItem Value="Israel">Israel</asp:ListItem>
                                                        <asp:ListItem Value="Italy">Italy</asp:ListItem>
                                                        <asp:ListItem Value="Jamaica">Jamaica</asp:ListItem>
                                                        <asp:ListItem Value="Japan">Japan</asp:ListItem>
                                                        <asp:ListItem Value="Jersey">Jersey</asp:ListItem>
                                                        <asp:ListItem Value="Jordan">Jordan</asp:ListItem>
                                                        <asp:ListItem Value="Kazakhstan">Kazakhstan</asp:ListItem>
                                                        <asp:ListItem Value="Kenya">Kenya</asp:ListItem>
                                                        <asp:ListItem Value="Kiribati">Kiribati</asp:ListItem>
                                                        <asp:ListItem Value="North Korea">North Korea</asp:ListItem>
                                                        <asp:ListItem Value="South Korea">South Korea</asp:ListItem>
                                                        <asp:ListItem Value="Kuwait">Kuwait</asp:ListItem>
                                                        <asp:ListItem Value="Kyrgyzstan">Kyrgyzstan</asp:ListItem>
                                                        <asp:ListItem Value="Laos">Laos</asp:ListItem>
                                                        <asp:ListItem Value="Latvia">Latvia</asp:ListItem>
                                                        <asp:ListItem Value="Lebanon">Lebanon</asp:ListItem>
                                                        <asp:ListItem Value="Lesotho">Lesotho</asp:ListItem>
                                                        <asp:ListItem Value="Liberia">Liberia</asp:ListItem>
                                                        <asp:ListItem Value="Libya">Libya</asp:ListItem>
                                                        <asp:ListItem Value="Liechtenstein">Liechtenstein</asp:ListItem>
                                                        <asp:ListItem Value="Lithuania">Lithuania</asp:ListItem>
                                                        <asp:ListItem Value="Luxembourg">Luxembourg</asp:ListItem>
                                                        <asp:ListItem Value="Macau">Macau</asp:ListItem>
                                                        <asp:ListItem Value="Macedonia">Macedonia</asp:ListItem>
                                                        <asp:ListItem Value="Madagascar">Madagascar</asp:ListItem>
                                                        <asp:ListItem Value="Malawi">Malawi</asp:ListItem>
                                                        <asp:ListItem Value="Malaysia">Malaysia</asp:ListItem>
                                                        <asp:ListItem Value="Maldives">Maldives</asp:ListItem>
                                                        <asp:ListItem Value="Mali">Mali</asp:ListItem>
                                                        <asp:ListItem Value="Malta">Malta</asp:ListItem>
                                                        <asp:ListItem Value="Marshall Islands">Marshall Islands</asp:ListItem>
                                                        <asp:ListItem Value="Martinique">Martinique</asp:ListItem>
                                                        <asp:ListItem Value="Mauritania">Mauritania</asp:ListItem>
                                                        <asp:ListItem Value="Mauritius">Mauritius</asp:ListItem>
                                                        <asp:ListItem Value="Mayotte">Mayotte</asp:ListItem>
                                                        <asp:ListItem Value="Mexico">Mexico</asp:ListItem>
                                                        <asp:ListItem Value="Micronesia">Micronesia</asp:ListItem>
                                                        <asp:ListItem Value="Moldova">Moldova</asp:ListItem>
                                                        <asp:ListItem Value="Monaco">Monaco</asp:ListItem>
                                                        <asp:ListItem Value="Mongolia">Mongolia</asp:ListItem>
                                                        <asp:ListItem Value="Montenegro">Montenegro</asp:ListItem>
                                                        <asp:ListItem Value="Montserrat">Montserrat</asp:ListItem>
                                                        <asp:ListItem Value="Morocco">Morocco</asp:ListItem>
                                                        <asp:ListItem Value="Mozambique">Mozambique</asp:ListItem>
                                                        <asp:ListItem Value="Myanmar">Myanmar</asp:ListItem>
                                                        <asp:ListItem Value="Namibia">Namibia</asp:ListItem>
                                                        <asp:ListItem Value="Nauru">Nauru</asp:ListItem>
                                                        <asp:ListItem Value="Nepal">Nepal</asp:ListItem>
                                                        <asp:ListItem Value="Netherlands">Netherlands</asp:ListItem>
                                                        <asp:ListItem Value="New Caledonia">New Caledonia</asp:ListItem>
                                                        <asp:ListItem Value="New Zealand">New Zealand</asp:ListItem>
                                                        <asp:ListItem Value="Nicaragua">Nicaragua</asp:ListItem>
                                                        <asp:ListItem Value="Niger">Niger</asp:ListItem>
                                                        <asp:ListItem Value="Nigeria">Nigeria</asp:ListItem>
                                                        <asp:ListItem Value="Niue">Niue</asp:ListItem>
                                                        <asp:ListItem Value="Norfolk Island">Norfolk Island</asp:ListItem>
                                                        <asp:ListItem Value="Northern Mariana Islands">Northern Mariana Islands</asp:ListItem>
                                                        <asp:ListItem Value="Norway">Norway</asp:ListItem>
                                                        <asp:ListItem Value="Oman">Oman</asp:ListItem>
                                                        <asp:ListItem Value="Pakistan">Pakistan</asp:ListItem>
                                                        <asp:ListItem Value="Palau">Palau</asp:ListItem>
                                                        <asp:ListItem Value="Palestine">Palestine</asp:ListItem>
                                                        <asp:ListItem Value="Panama">Panama</asp:ListItem>
                                                        <asp:ListItem Value="Papua New Guinea">Papua New Guinea</asp:ListItem>
                                                        <asp:ListItem Value="Paraguay">Paraguay</asp:ListItem>
                                                        <asp:ListItem Value="Peru">Peru</asp:ListItem>
                                                        <asp:ListItem Value="Philippines">Philippines</asp:ListItem>
                                                        <asp:ListItem Value="Pitcairn Island">Pitcairn Islands</asp:ListItem>
                                                        <asp:ListItem Value="Poland">Poland</asp:ListItem>
                                                        <asp:ListItem Value="Portugal">Portugal</asp:ListItem>
                                                        <asp:ListItem Value="Puerto Rico">Puerto Rico</asp:ListItem>
                                                        <asp:ListItem Value="Qatar">Qatar</asp:ListItem>
                                                        <asp:ListItem Value="Romania">Romania</asp:ListItem>
                                                        <asp:ListItem Value="Russia">Russia</asp:ListItem>
                                                        <asp:ListItem Value="Rwanda">Rwanda</asp:ListItem>
                                                        <asp:ListItem Value="Réunion">Réunion</asp:ListItem>
                                                        <asp:ListItem Value="St. Barthélemy">St. Barthélemy</asp:ListItem>
                                                        <asp:ListItem Value="St. Helena">St. Helena</asp:ListItem>
                                                        <asp:ListItem Value="St. Kitts & Nevis">St. Kitts & Nevis</asp:ListItem>
                                                        <asp:ListItem Value="St. Lucia">St. Lucia</asp:ListItem>
                                                        <asp:ListItem Value="St. Martin">St. Martin</asp:ListItem>
                                                        <asp:ListItem Value="St. Pierre & Miquelon">St. Pierre & Miquelon</asp:ListItem>
                                                        <asp:ListItem Value="St. Vincent & Grenadines">St. Vincent & Grenadines</asp:ListItem>
                                                        <asp:ListItem Value="Samoa">Samoa</asp:ListItem>
                                                        <asp:ListItem Value="SanMarino">SanMarino</asp:ListItem>
                                                        <asp:ListItem Value="São Tomé Príncipe">São Tomé Príncipe</asp:ListItem>
                                                        <asp:ListItem Value="Saudi Arabia">Saudi Arabia</asp:ListItem>
                                                        <asp:ListItem Value="Senegal">Senegal</asp:ListItem>
                                                        <asp:ListItem Value="Serbia">Serbia</asp:ListItem>
                                                        <asp:ListItem Value="Seychelles">Seychelles</asp:ListItem>
                                                        <asp:ListItem Value="Sierra Leone">Sierra Leone</asp:ListItem>
                                                        <asp:ListItem Value="Singapore">Singapore</asp:ListItem>
                                                        <asp:ListItem Value="Sint Maarten">Sint Maarten</asp:ListItem>
                                                        <asp:ListItem Value="Slovakia">Slovakia</asp:ListItem>
                                                        <asp:ListItem Value="Slovenia">Slovenia</asp:ListItem>
                                                        <asp:ListItem Value="Solomon Islands">Solomon Islands</asp:ListItem>
                                                        <asp:ListItem Value="Somalia">Somalia</asp:ListItem>
                                                        <asp:ListItem Value="South Africa">South Africa</asp:ListItem>
                                                        <asp:ListItem Value="South Georgia & South Sandwich Islands">South Georgia & South Sandwich Islands</asp:ListItem>
                                                        <asp:ListItem Value="South Sudan">South Sudan</asp:ListItem>
                                                        <asp:ListItem Value="Spain">Spain</asp:ListItem>
                                                        <asp:ListItem Value="Sri Lanka">Sri Lanka</asp:ListItem>
                                                        <asp:ListItem Value="Sudan">Sudan</asp:ListItem>
                                                        <asp:ListItem Value="Suriname">Suriname</asp:ListItem>
                                                        <asp:ListItem Value="Svalbard & Jan Mayen">Svalbard & Jan Mayen</asp:ListItem>
                                                        <asp:ListItem Value="Swaziland">Swaziland</asp:ListItem>
                                                        <asp:ListItem Value="Sweden">Sweden</asp:ListItem>
                                                        <asp:ListItem Value="Switzerland">Switzerland</asp:ListItem>
                                                        <asp:ListItem Value="Syria">Syria</asp:ListItem>
                                                        <asp:ListItem Value="Taiwan">Taiwan</asp:ListItem>
                                                        <asp:ListItem Value="Tajikistan">Tajikistan</asp:ListItem>
                                                        <asp:ListItem Value="Tanzania">Tanzania</asp:ListItem>
                                                        <asp:ListItem Value="Thailand">Thailand</asp:ListItem>
                                                        <asp:ListItem Value="Timor-Leste">Timor-Leste</asp:ListItem>
                                                        <asp:ListItem Value="Togo">Togo</asp:ListItem>
                                                        <asp:ListItem Value="Tokelau">Tokelau</asp:ListItem>
                                                        <asp:ListItem Value="Tonga">Tonga</asp:ListItem>
                                                        <asp:ListItem Value="Trinidad & Tobago">Trinidad & Tobago</asp:ListItem>
                                                        <asp:ListItem Value="Tunisia">Tunisia</asp:ListItem>
                                                        <asp:ListItem Value="Turkey">Turkey</asp:ListItem>
                                                        <asp:ListItem Value="Turkmenistan">Turkmenistan</asp:ListItem>
                                                        <asp:ListItem Value="Turks & Caicos Islands">Turks & Caicos Islands</asp:ListItem>
                                                        <asp:ListItem Value="Tuvalu">Tuvalu</asp:ListItem>
                                                        <asp:ListItem Value="Uganda">Uganda</asp:ListItem>
                                                        <asp:ListItem Value="Ukraine">Ukraine</asp:ListItem>
                                                        <asp:ListItem Value="United Arab Emirate">United Arab Emirates</asp:ListItem>
                                                        <asp:ListItem Value="UK">UK</asp:ListItem>
                                                        <asp:ListItem Value="US">US</asp:ListItem>
                                                        <asp:ListItem Value="U.S. Outlying Islands">U.S. Outlying Islands</asp:ListItem>
                                                        <asp:ListItem Value="Uruguay">Uruguay</asp:ListItem>
                                                        <asp:ListItem Value="Uzbekistan">Uzbekistan</asp:ListItem>
                                                        <asp:ListItem Value="Vanuatu">Vanuatu</asp:ListItem>
                                                        <asp:ListItem Value="Venezuela">Venezuela</asp:ListItem>
                                                        <asp:ListItem Value="Vietnam">Vietnam</asp:ListItem>
                                                        <asp:ListItem Value="British Virgin Islands">British Virgin Islands</asp:ListItem>
                                                        <asp:ListItem Value="U.S. Virgin Islands">U.S. Virgin Islands</asp:ListItem>
                                                        <asp:ListItem Value="Wallis & Futuna">Wallis & Futuna</asp:ListItem>
                                                        <asp:ListItem Value="Western Sahara">Western Sahara</asp:ListItem>
                                                        <asp:ListItem Value="Yemen">Yemen</asp:ListItem>
                                                        <asp:ListItem Value="Zambia">Zambia</asp:ListItem>
                                                        <asp:ListItem Value="Zimbabwe">Zimbabwe</asp:ListItem>
                                                        <asp:ListItem Value="Åland Islands">Åland Islands</asp:ListItem>
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
                                                        <asp:ListItem Value="Afghanistan">Afghanistan</asp:ListItem>
                                                        <asp:ListItem Value="Albania">Albania</asp:ListItem>
                                                        <asp:ListItem Value="Algeria">Algeria</asp:ListItem>
                                                        <asp:ListItem Value="AmericanSamoa">AmericanSamoa</asp:ListItem>
                                                        <asp:ListItem Value="Andorra">Andorra</asp:ListItem>
                                                        <asp:ListItem Value="Angola">Angola</asp:ListItem>
                                                        <asp:ListItem Value="Anguilla">Anguilla</asp:ListItem>
                                                        <asp:ListItem Value="Antarctica">Antarctica</asp:ListItem>
                                                        <asp:ListItem Value="Antigua & Barbuda">Antigua & Barbuda</asp:ListItem>
                                                        <asp:ListItem Value="Argentina">Argentina</asp:ListItem>
                                                        <asp:ListItem Value="Armenia">Armenia</asp:ListItem>
                                                        <asp:ListItem Value="Aruba">Aruba</asp:ListItem>
                                                        <asp:ListItem Value="Australia">Australia</asp:ListItem>
                                                        <asp:ListItem Value="Austria">Austria</asp:ListItem>
                                                        <asp:ListItem Value="Azerbaijan">Azerbaijan</asp:ListItem>
                                                        <asp:ListItem Value="Bahamas">Bahamas</asp:ListItem>
                                                        <asp:ListItem Value="Bahrain">Bahrain</asp:ListItem>
                                                        <asp:ListItem Value="Bangladesh">Bangladesh</asp:ListItem>
                                                        <asp:ListItem Value="Barbados">Barbados</asp:ListItem>
                                                        <asp:ListItem Value="Belarus">Belarus</asp:ListItem>
                                                        <asp:ListItem Value="Belgium">Belgium</asp:ListItem>
                                                        <asp:ListItem Value="Belize">Belize</asp:ListItem>
                                                        <asp:ListItem Value="Benin">Benin</asp:ListItem>
                                                        <asp:ListItem Value="Bermuda">Bermuda</asp:ListItem>
                                                        <asp:ListItem Value="Bhutan">Bhutan</asp:ListItem>
                                                        <asp:ListItem Value="Bolivia">Bolivia</asp:ListItem>
                                                        <asp:ListItem Value="Caribbean Netherlands">Caribbean Netherlands</asp:ListItem>
                                                        <asp:ListItem Value="Bosnia">Bosnia</asp:ListItem>
                                                        <asp:ListItem Value="Botswana">Botswana</asp:ListItem>
                                                        <asp:ListItem Value="Bouvet Island">Bouvet Island</asp:ListItem>
                                                        <asp:ListItem Value="Brazil">Brazil</asp:ListItem>
                                                        <asp:ListItem Value="British Indian Ocean Territory">British Indian Ocean Territory</asp:ListItem>
                                                        <asp:ListItem Value="Brunei">Brunei</asp:ListItem>
                                                        <asp:ListItem Value="Bulgaria">Bulgaria</asp:ListItem>
                                                        <asp:ListItem Value="Burkina Faso">Burkina Faso</asp:ListItem>
                                                        <asp:ListItem Value="Burundi">Burundi</asp:ListItem>
                                                        <asp:ListItem Value="Cambodia">Cambodia</asp:ListItem>
                                                        <asp:ListItem Value="Cameroon">Cameroon</asp:ListItem>
                                                        <asp:ListItem Value="Canada">Canada</asp:ListItem>
                                                        <asp:ListItem Value="Cape Verde">Cape Verde</asp:ListItem>
                                                        <asp:ListItem Value="Cayman Islands">Cayman Islands</asp:ListItem>
                                                        <asp:ListItem Value="Central African Republic">Central African Republic</asp:ListItem>
                                                        <asp:ListItem Value="Chad">Chad</asp:ListItem>
                                                        <asp:ListItem Value="Chile">Chile</asp:ListItem>
                                                        <asp:ListItem Value="China">China</asp:ListItem>
                                                        <asp:ListItem Value="Christmas Island">Christmas Island</asp:ListItem>
                                                        <asp:ListItem Value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</asp:ListItem>
                                                        <asp:ListItem Value="Colombia">Colombia</asp:ListItem>
                                                        <asp:ListItem Value="Comoros">Comoros</asp:ListItem>
                                                        <asp:ListItem Value="Congo-Brazzaville">Congo-Brazzaville</asp:ListItem>
                                                        <asp:ListItem Value="Congo-Kinshasa">Congo-Kinshasa</asp:ListItem>
                                                        <asp:ListItem Value="Cook Islands">Cook Islands</asp:ListItem>
                                                        <asp:ListItem Value="Costa Rica">Costa Rica</asp:ListItem>
                                                        <asp:ListItem Value="Croatia">Croatia</asp:ListItem>
                                                        <asp:ListItem Value="Cuba">Cuba</asp:ListItem>
                                                        <asp:ListItem Value="Curaçao">Curaçao</asp:ListItem>
                                                        <asp:ListItem Value="Cyprus">Cyprus</asp:ListItem>
                                                        <asp:ListItem Value="Czech Republic">Czech Republic</asp:ListItem>
                                                        <asp:ListItem Value="Côted’ Ivoire">Côted’ Ivoire</asp:ListItem>
                                                        <asp:ListItem Value="Denmark">Denmark</asp:ListItem>
                                                        <asp:ListItem Value="Djibouti">Djibouti</asp:ListItem>
                                                        <asp:ListItem Value="Dominica">Dominica</asp:ListItem>
                                                        <asp:ListItem Value="Dominican Republic">Dominican Republic</asp:ListItem>
                                                        <asp:ListItem Value="Ecuador">Ecuador</asp:ListItem>
                                                        <asp:ListItem Value="Egypt">Egypt</asp:ListItem>
                                                        <asp:ListItem Value="ElSalvador">ElSalvador</asp:ListItem>
                                                        <asp:ListItem Value="Equatorial Guinea">Equatorial Guinea</asp:ListItem>
                                                        <asp:ListItem Value="Eritrea">Eritrea</asp:ListItem>
                                                        <asp:ListItem Value="Estonia">Estonia</asp:ListItem>
                                                        <asp:ListItem Value="Ethiopia">Ethiopia</asp:ListItem>
                                                        <asp:ListItem Value="Falkland Islands">Falkland Islands</asp:ListItem>
                                                        <asp:ListItem Value="Faroe Islands">Faroe Islands</asp:ListItem>
                                                        <asp:ListItem Value="Fiji">Fiji</asp:ListItem>
                                                        <asp:ListItem Value="Finland">Finland</asp:ListItem>
                                                        <asp:ListItem Value="France">France</asp:ListItem>
                                                        <asp:ListItem Value="French Guiana">French Guiana</asp:ListItem>
                                                        <asp:ListItem Value="French Polynesia">French Polynesia</asp:ListItem>
                                                        <asp:ListItem Value="French Southern Territories">French Southern Territories</asp:ListItem>
                                                        <asp:ListItem Value="Gabon">Gabon</asp:ListItem>
                                                        <asp:ListItem Value="Gambia">Gambia</asp:ListItem>
                                                        <asp:ListItem Value="Georgia">Georgia</asp:ListItem>
                                                        <asp:ListItem Value="Germany">Germany</asp:ListItem>
                                                        <asp:ListItem Value="Ghana">Ghana</asp:ListItem>
                                                        <asp:ListItem Value="Gibraltar">Gibraltar</asp:ListItem>
                                                        <asp:ListItem Value="Greece">Greece</asp:ListItem>
                                                        <asp:ListItem Value="Greenland">Greenland</asp:ListItem>
                                                        <asp:ListItem Value="Grenada">Grenada</asp:ListItem>
                                                        <asp:ListItem Value="Guadeloupe">Guadeloupe</asp:ListItem>
                                                        <asp:ListItem Value="Guam">Guam</asp:ListItem>
                                                        <asp:ListItem Value="Guatemala">Guatemala</asp:ListItem>
                                                        <asp:ListItem Value="Guernsey">Guernsey</asp:ListItem>
                                                        <asp:ListItem Value="Guinea">Guinea</asp:ListItem>
                                                        <asp:ListItem Value="Guinea-Bissau">Guinea-Bissau</asp:ListItem>
                                                        <asp:ListItem Value="Guyana">Guyana</asp:ListItem>
                                                        <asp:ListItem Value="Haiti">Haiti</asp:ListItem>
                                                        <asp:ListItem Value="Heard & McDonald Islands">Heard & McDonald Islands</asp:ListItem>
                                                        <asp:ListItem Value="Vatican City">Vatican City</asp:ListItem>
                                                        <asp:ListItem Value="Honduras">Honduras</asp:ListItem>
                                                        <asp:ListItem Value="HongKong">HongKong</asp:ListItem>
                                                        <asp:ListItem Value="Hungary">Hungary</asp:ListItem>
                                                        <asp:ListItem Value="Iceland">Iceland</asp:ListItem>
                                                        <asp:ListItem Value="India">India</asp:ListItem>
                                                        <asp:ListItem Value="Indonesia">Indonesia</asp:ListItem>
                                                        <asp:ListItem Value="Iran">Iran</asp:ListItem>
                                                        <asp:ListItem Value="Iraq">Iraq</asp:ListItem>
                                                        <asp:ListItem Value="Ireland">Ireland</asp:ListItem>
                                                        <asp:ListItem Value="IsleofMan">IsleofMan</asp:ListItem>
                                                        <asp:ListItem Value="Israel">Israel</asp:ListItem>
                                                        <asp:ListItem Value="Italy">Italy</asp:ListItem>
                                                        <asp:ListItem Value="Jamaica">Jamaica</asp:ListItem>
                                                        <asp:ListItem Value="Japan">Japan</asp:ListItem>
                                                        <asp:ListItem Value="Jersey">Jersey</asp:ListItem>
                                                        <asp:ListItem Value="Jordan">Jordan</asp:ListItem>
                                                        <asp:ListItem Value="Kazakhstan">Kazakhstan</asp:ListItem>
                                                        <asp:ListItem Value="Kenya">Kenya</asp:ListItem>
                                                        <asp:ListItem Value="Kiribati">Kiribati</asp:ListItem>
                                                        <asp:ListItem Value="North Korea">North Korea</asp:ListItem>
                                                        <asp:ListItem Value="South Korea">South Korea</asp:ListItem>
                                                        <asp:ListItem Value="Kuwait">Kuwait</asp:ListItem>
                                                        <asp:ListItem Value="Kyrgyzstan">Kyrgyzstan</asp:ListItem>
                                                        <asp:ListItem Value="Laos">Laos</asp:ListItem>
                                                        <asp:ListItem Value="Latvia">Latvia</asp:ListItem>
                                                        <asp:ListItem Value="Lebanon">Lebanon</asp:ListItem>
                                                        <asp:ListItem Value="Lesotho">Lesotho</asp:ListItem>
                                                        <asp:ListItem Value="Liberia">Liberia</asp:ListItem>
                                                        <asp:ListItem Value="Libya">Libya</asp:ListItem>
                                                        <asp:ListItem Value="Liechtenstein">Liechtenstein</asp:ListItem>
                                                        <asp:ListItem Value="Lithuania">Lithuania</asp:ListItem>
                                                        <asp:ListItem Value="Luxembourg">Luxembourg</asp:ListItem>
                                                        <asp:ListItem Value="Macau">Macau</asp:ListItem>
                                                        <asp:ListItem Value="Macedonia">Macedonia</asp:ListItem>
                                                        <asp:ListItem Value="Madagascar">Madagascar</asp:ListItem>
                                                        <asp:ListItem Value="Malawi">Malawi</asp:ListItem>
                                                        <asp:ListItem Value="Malaysia">Malaysia</asp:ListItem>
                                                        <asp:ListItem Value="Maldives">Maldives</asp:ListItem>
                                                        <asp:ListItem Value="Mali">Mali</asp:ListItem>
                                                        <asp:ListItem Value="Malta">Malta</asp:ListItem>
                                                        <asp:ListItem Value="Marshall Islands">Marshall Islands</asp:ListItem>
                                                        <asp:ListItem Value="Martinique">Martinique</asp:ListItem>
                                                        <asp:ListItem Value="Mauritania">Mauritania</asp:ListItem>
                                                        <asp:ListItem Value="Mauritius">Mauritius</asp:ListItem>
                                                        <asp:ListItem Value="Mayotte">Mayotte</asp:ListItem>
                                                        <asp:ListItem Value="Mexico">Mexico</asp:ListItem>
                                                        <asp:ListItem Value="Micronesia">Micronesia</asp:ListItem>
                                                        <asp:ListItem Value="Moldova">Moldova</asp:ListItem>
                                                        <asp:ListItem Value="Monaco">Monaco</asp:ListItem>
                                                        <asp:ListItem Value="Mongolia">Mongolia</asp:ListItem>
                                                        <asp:ListItem Value="Montenegro">Montenegro</asp:ListItem>
                                                        <asp:ListItem Value="Montserrat">Montserrat</asp:ListItem>
                                                        <asp:ListItem Value="Morocco">Morocco</asp:ListItem>
                                                        <asp:ListItem Value="Mozambique">Mozambique</asp:ListItem>
                                                        <asp:ListItem Value="Myanmar">Myanmar</asp:ListItem>
                                                        <asp:ListItem Value="Namibia">Namibia</asp:ListItem>
                                                        <asp:ListItem Value="Nauru">Nauru</asp:ListItem>
                                                        <asp:ListItem Value="Nepal">Nepal</asp:ListItem>
                                                        <asp:ListItem Value="Netherlands">Netherlands</asp:ListItem>
                                                        <asp:ListItem Value="New Caledonia">New Caledonia</asp:ListItem>
                                                        <asp:ListItem Value="New Zealand">New Zealand</asp:ListItem>
                                                        <asp:ListItem Value="Nicaragua">Nicaragua</asp:ListItem>
                                                        <asp:ListItem Value="Niger">Niger</asp:ListItem>
                                                        <asp:ListItem Value="Nigeria">Nigeria</asp:ListItem>
                                                        <asp:ListItem Value="Niue">Niue</asp:ListItem>
                                                        <asp:ListItem Value="Norfolk Island">Norfolk Island</asp:ListItem>
                                                        <asp:ListItem Value="Northern Mariana Islands">Northern Mariana Islands</asp:ListItem>
                                                        <asp:ListItem Value="Norway">Norway</asp:ListItem>
                                                        <asp:ListItem Value="Oman">Oman</asp:ListItem>
                                                        <asp:ListItem Value="Pakistan">Pakistan</asp:ListItem>
                                                        <asp:ListItem Value="Palau">Palau</asp:ListItem>
                                                        <asp:ListItem Value="Palestine">Palestine</asp:ListItem>
                                                        <asp:ListItem Value="Panama">Panama</asp:ListItem>
                                                        <asp:ListItem Value="Papua New Guinea">Papua New Guinea</asp:ListItem>
                                                        <asp:ListItem Value="Paraguay">Paraguay</asp:ListItem>
                                                        <asp:ListItem Value="Peru">Peru</asp:ListItem>
                                                        <asp:ListItem Value="Philippines">Philippines</asp:ListItem>
                                                        <asp:ListItem Value="Pitcairn Island">Pitcairn Islands</asp:ListItem>
                                                        <asp:ListItem Value="Poland">Poland</asp:ListItem>
                                                        <asp:ListItem Value="Portugal">Portugal</asp:ListItem>
                                                        <asp:ListItem Value="Puerto Rico">Puerto Rico</asp:ListItem>
                                                        <asp:ListItem Value="Qatar">Qatar</asp:ListItem>
                                                        <asp:ListItem Value="Romania">Romania</asp:ListItem>
                                                        <asp:ListItem Value="Russia">Russia</asp:ListItem>
                                                        <asp:ListItem Value="Rwanda">Rwanda</asp:ListItem>
                                                        <asp:ListItem Value="Réunion">Réunion</asp:ListItem>
                                                        <asp:ListItem Value="St. Barthélemy">St. Barthélemy</asp:ListItem>
                                                        <asp:ListItem Value="St. Helena">St. Helena</asp:ListItem>
                                                        <asp:ListItem Value="St. Kitts & Nevis">St. Kitts & Nevis</asp:ListItem>
                                                        <asp:ListItem Value="St. Lucia">St. Lucia</asp:ListItem>
                                                        <asp:ListItem Value="St. Martin">St. Martin</asp:ListItem>
                                                        <asp:ListItem Value="St. Pierre & Miquelon">St. Pierre & Miquelon</asp:ListItem>
                                                        <asp:ListItem Value="St. Vincent & Grenadines">St. Vincent & Grenadines</asp:ListItem>
                                                        <asp:ListItem Value="Samoa">Samoa</asp:ListItem>
                                                        <asp:ListItem Value="SanMarino">SanMarino</asp:ListItem>
                                                        <asp:ListItem Value="São Tomé Príncipe">São Tomé Príncipe</asp:ListItem>
                                                        <asp:ListItem Value="Saudi Arabia">Saudi Arabia</asp:ListItem>
                                                        <asp:ListItem Value="Senegal">Senegal</asp:ListItem>
                                                        <asp:ListItem Value="Serbia">Serbia</asp:ListItem>
                                                        <asp:ListItem Value="Seychelles">Seychelles</asp:ListItem>
                                                        <asp:ListItem Value="Sierra Leone">Sierra Leone</asp:ListItem>
                                                        <asp:ListItem Value="Singapore">Singapore</asp:ListItem>
                                                        <asp:ListItem Value="Sint Maarten">Sint Maarten</asp:ListItem>
                                                        <asp:ListItem Value="Slovakia">Slovakia</asp:ListItem>
                                                        <asp:ListItem Value="Slovenia">Slovenia</asp:ListItem>
                                                        <asp:ListItem Value="Solomon Islands">Solomon Islands</asp:ListItem>
                                                        <asp:ListItem Value="Somalia">Somalia</asp:ListItem>
                                                        <asp:ListItem Value="South Africa">South Africa</asp:ListItem>
                                                        <asp:ListItem Value="South Georgia & South Sandwich Islands">South Georgia & South Sandwich Islands</asp:ListItem>
                                                        <asp:ListItem Value="South Sudan">South Sudan</asp:ListItem>
                                                        <asp:ListItem Value="Spain">Spain</asp:ListItem>
                                                        <asp:ListItem Value="Sri Lanka">Sri Lanka</asp:ListItem>
                                                        <asp:ListItem Value="Sudan">Sudan</asp:ListItem>
                                                        <asp:ListItem Value="Suriname">Suriname</asp:ListItem>
                                                        <asp:ListItem Value="Svalbard & Jan Mayen">Svalbard & Jan Mayen</asp:ListItem>
                                                        <asp:ListItem Value="Swaziland">Swaziland</asp:ListItem>
                                                        <asp:ListItem Value="Sweden">Sweden</asp:ListItem>
                                                        <asp:ListItem Value="Switzerland">Switzerland</asp:ListItem>
                                                        <asp:ListItem Value="Syria">Syria</asp:ListItem>
                                                        <asp:ListItem Value="Taiwan">Taiwan</asp:ListItem>
                                                        <asp:ListItem Value="Tajikistan">Tajikistan</asp:ListItem>
                                                        <asp:ListItem Value="Tanzania">Tanzania</asp:ListItem>
                                                        <asp:ListItem Value="Thailand">Thailand</asp:ListItem>
                                                        <asp:ListItem Value="Timor-Leste">Timor-Leste</asp:ListItem>
                                                        <asp:ListItem Value="Togo">Togo</asp:ListItem>
                                                        <asp:ListItem Value="Tokelau">Tokelau</asp:ListItem>
                                                        <asp:ListItem Value="Tonga">Tonga</asp:ListItem>
                                                        <asp:ListItem Value="Trinidad & Tobago">Trinidad & Tobago</asp:ListItem>
                                                        <asp:ListItem Value="Tunisia">Tunisia</asp:ListItem>
                                                        <asp:ListItem Value="Turkey">Turkey</asp:ListItem>
                                                        <asp:ListItem Value="Turkmenistan">Turkmenistan</asp:ListItem>
                                                        <asp:ListItem Value="Turks & Caicos Islands">Turks & Caicos Islands</asp:ListItem>
                                                        <asp:ListItem Value="Tuvalu">Tuvalu</asp:ListItem>
                                                        <asp:ListItem Value="Uganda">Uganda</asp:ListItem>
                                                        <asp:ListItem Value="Ukraine">Ukraine</asp:ListItem>
                                                        <asp:ListItem Value="United Arab Emirate">United Arab Emirates</asp:ListItem>
                                                        <asp:ListItem Value="UK">UK</asp:ListItem>
                                                        <asp:ListItem Value="US">US</asp:ListItem>
                                                        <asp:ListItem Value="U.S. Outlying Islands">U.S. Outlying Islands</asp:ListItem>
                                                        <asp:ListItem Value="Uruguay">Uruguay</asp:ListItem>
                                                        <asp:ListItem Value="Uzbekistan">Uzbekistan</asp:ListItem>
                                                        <asp:ListItem Value="Vanuatu">Vanuatu</asp:ListItem>
                                                        <asp:ListItem Value="Venezuela">Venezuela</asp:ListItem>
                                                        <asp:ListItem Value="Vietnam">Vietnam</asp:ListItem>
                                                        <asp:ListItem Value="British Virgin Islands">British Virgin Islands</asp:ListItem>
                                                        <asp:ListItem Value="U.S. Virgin Islands">U.S. Virgin Islands</asp:ListItem>
                                                        <asp:ListItem Value="Wallis & Futuna">Wallis & Futuna</asp:ListItem>
                                                        <asp:ListItem Value="Western Sahara">Western Sahara</asp:ListItem>
                                                        <asp:ListItem Value="Yemen">Yemen</asp:ListItem>
                                                        <asp:ListItem Value="Zambia">Zambia</asp:ListItem>
                                                        <asp:ListItem Value="Zimbabwe">Zimbabwe</asp:ListItem>
                                                        <asp:ListItem Value="Åland Islands">Åland Islands</asp:ListItem>
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
                                                <asp:Label ID="lblMessage_Photo_Loc" runat="server" Text="" Font-Names = "Arial"></asp:Label>
                                            <br/>    <asp:Label ID="lblMessage_Photo" runat="server" Text="" Font-Names = "Arial"></asp:Label>
                                            </div>
                                            <div class="col-md-6">
                                                <label>Upload Signature</label>
                                                <asp:FileUpload ID="FileUpload_Sign" runat="server" TabIndex="32" />
                                                <asp:Button type="button" ID="btnUpload_Sign" class="btn btn-warning" runat="server" Text="Upload Signature" OnClick="btnUpload_Sign_Click" TabIndex="33" UseSubmitBehavior="false"/>
                                                <br />
                                                <asp:Label ID="lblMessage_Sign_Loc" runat="server" Text="" Font-Names = "Arial"></asp:Label>
                                            <br/>    <asp:Label ID="lblMessage_Sign" runat="server" Text="" Font-Names = "Arial"></asp:Label>
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
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:Label runat="server">Name : </asp:Label>
                                                    <strong><asp:Label ID="lblFname" runat="server"></asp:Label></strong>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
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
                $(".datepicker").datepicker({
                    format: "dd-mm-yyyy",
                    startDate: "01-01-1930",
                    endDate: "+0d",
                    startView: 0,
                    clearBtn: true,
                    autoclose: true
                });
            </script> 
        </form>
    <script>
        $("#GeneralDetails").addClass("active");
    </script>
    <script>
        $("#personalDetails").validate({
        });
    </script> 
    
</asp:Content>