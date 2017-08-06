<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/FormsMasterPage.master" AutoEventWireup="true" CodeFile="otherDetails.aspx.cs" Inherits="otherDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!-- include summernote css/js-->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.6/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.6/summernote.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form role="form" id="personalDetails" runat="server">
        <div class="card">
            <div class="card-header" data-background-color="purple">
                <h4 class="title">Miscellaneous Information</h4>
            </div>
			<div class ="card-content table-responsive">
                <asp:Table ID="tableOtherDetails" CssClass="table table-bordered table-hover" runat="server" Visible="true">
                    <asp:TableRow>
                        <asp:TableCell>
                            <div>
                                <div class="form-group"">
                                    <strong><asp:Label runat="server"> In which language are you comfortable in teaching?</asp:Label></strong><br />
                                    <%--<asp:RadioButton runat="server" id="teachLangEng" GroupName="teachLang" /> 
                                    <asp:label for="teachLangEng" runat="server">English</asp:label> 
                                    <br/>
                                    <asp:RadioButton runat="server" id="teachLangHin" GroupName="teachLang" /> 
                                    <asp:label for="teachLangHin" runat="server">Hindi</asp:label>
                                    <br/>
                                    <asp:RadioButton runat="server" id="teachLangBoth" GroupName="teachLang" /> 
                                    <asp:label for="teachLangBoth" runat="server">Both (English and Hindi)</asp:label>--%>
                                    
                                    <asp:RadioButtonList ID="ComfortLanguage" runat="server" RepeatDirection="Vertical" required="true">
                                        <asp:ListItem Value="English" >English</asp:ListItem>
                                        <asp:ListItem Value="Hindi"> Hindi</asp:ListItem>
                                        <asp:ListItem Value="Both (English and Hindi)"> Both (English and Hindi)</asp:ListItem>
                                    </asp:RadioButtonList>

                                </div>
                            </div>


                              

                            <br/>

                            <%--<strong><asp:Label runat="server">Membership/Fellowship of Academies/Institutions/Professional societies:</asp:Label></strong>
                            <div class="summernote" id="fellowshipText">
                                <p></p>
                            </div>

                            <br/>--%>

                            <strong><asp:Label runat="server">Responsibilities: (Academic/Administrative)</asp:Label></strong>
                            <div class="summernote" id="responsibilitiesText">
                                <p></p>
                            </div>

                            <br/>

                            <strong><asp:Label runat="server">Any other relevant information, if not given above:</asp:Label></strong>
                            <div class="summernote" id="anyOtherInfoText">
                                <p></p>
                            </div>

                            <br/>

                            <strong><asp:Label runat="server"> Are you willing to accept the minimum initial pay in the grade? If not, state reasons for claiming higher starting pay.</asp:Label></strong>
                            <div class="summernote" id="minPayText">
                                <p></p>
                            </div>

                            <br/>

                            <hr class="line"/>

                            <div class="row">
                                <div class="col-md-12 text-center">
                                    <h4 class="title"><strong>Disclosure</strong></h4>
                                    <asp:Label runat="server">Options should not be left blank. Please select the option.</asp:Label><br/>
                                </div>
                                <div class="col-md-12 form-group">
                                    <strong><asp:Label runat="server">
                                        Have you ever been punished for Gender/Caste related offences or convicted by a court of law? If yes, give details. 
                                    </asp:Label></strong><br/>
                                    <div>
                                        <asp:RadioButton runat="server" id="punishedGenderYes" GroupName="punishedGender" AutoPostBack="True" OnCheckedChanged="punishedGenderChanged"/> 
                                        <label for="punishedGenderYes">Yes</label> 
                                        <asp:RadioButton runat="server" id="punishedGenderNo" GroupName="punishedGender"  AutoPostBack="True" OnCheckedChanged="punishedGenderChanged"/> 
                                        <label for="punishedGenderNo">No</label>

                                        <div id="punishedGenderText" class="summernote" visible="false" runat="server">
                                        </div>
                                    </div>
                                </div>
                                <br/>
                                <div class="col-md-12 form-group">
                                    <strong><asp:Label runat="server">
                                        Were you at any time declared medically unfit or asked to submit your resignation or
                                        discharged or dismissed? If yes, give details. 
                                    </asp:Label></strong>
                                    <div>
                                        <asp:RadioButton runat="server" id="mentallyUnfitYes" GroupName="mentallyUnfit" AutoPostBack="True" OnCheckedChanged="mentallyUnfitChanged"/> 
                                        <label for="mentallyUnfitYes">Yes</label> 
                                        <asp:RadioButton runat="server" id="mentallyUnfitNo" GroupName="mentallyUnfit" AutoPostBack="True" OnCheckedChanged="mentallyUnfitChanged"/> 
                                        <label for="mentallyUnfitNo">No</label>

                                        <div id="mentallyUnfitText" class="summernote" visible="false" runat="server">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 form-group">
                                    <strong><asp:Label runat="server">
                                        Do you have any criminal case pending against you in a court of law? If yes, give details.
                                    </asp:Label></strong>
                                    <div>
                                        <asp:RadioButton runat="server" id="criminalCaseYes" GroupName="criminalCase"  AutoPostBack="True" OnCheckedChanged="criminalCaseChanged"/> 
                                        <label for="criminalCaseYes">Yes</label> 
                                        <asp:RadioButton runat="server" id="criminalCaseNo" GroupName="criminalCase"  AutoPostBack="True" OnCheckedChanged="criminalCaseChanged"/> 
                                        <label for="criminalCaseNo">No</label>

                                        <div id="criminalCaseText" class="summernote" visible="false" runat="server">
                                        </div>
                                    </div>
                                </div>
                            </div>      <!-- Row Ends -->

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <strong><asp:Label runat="server">Have you applied for any other post in the University?</asp:Label></strong><br />
                                        <asp:RadioButton runat="server" id="AppliedPostYes" GroupName="AppliedPost"  AutoPostBack="True" OnCheckedChanged="AppliedPostChanged"/> 
                                        <label for="AppliedPostYes">Yes</label> 
                                        <asp:RadioButton runat="server" id="AppliedPostNo" GroupName="AppliedPost"  AutoPostBack="True" OnCheckedChanged="AppliedPostChanged"/> 
                                        <label for="AppliedPostNo">No</label>

                                        <div  runat="server" id="AppliedPostText" class="summernote"  Visible="false"></div>
                                      </div>
                                  </div>   
                                </div>  
                            

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <strong><asp:Label runat="server">Whether applying for deputation? (for Govt. employee)</asp:Label></strong><br />
                                        <asp:RadioButton runat="server" id="DeputationYes" GroupName="Deputation"/> 
                                        <label for="DeputationYes">Yes</label> 
                                        <asp:RadioButton runat="server" id="DeputationNo" GroupName="Deputation"/> 
                                        <label for="DeputationNo">No</label>
                                     </div>
                                </div>   
                              </div> 
                            

                            <div class="row">
                                <div class="col-md-12">
                                   <div class="form-group">
                                       <strong><asp:Label runat="server">Whether applying as retired person?</asp:Label></strong><br />
                                        <asp:RadioButton runat="server" id="RetiredPersonYes" GroupName="RetiredPerson"/> 
                                        <label for="RetiredPersonYes">Yes</label> 
                                        <asp:RadioButton runat="server" id="RetiredPersonNo" GroupName="RetiredPerson"/> 
                                        <label for="RetiredPersonNo">No</label>
                                     </div>
                                  </div>   
                              </div>     
                         

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <strong><asp:Label runat="server">Conditions for acceptance, if offered.</asp:Label></strong><br />
                                        <div id="AcceptanceConditions" runat="server" class="summernote" visible="true"></div>
                                     </div>
                                  </div>   
                              </div>      
                            
                            <strong><asp:Label runat="server">If selected, how much time would you require to join?</asp:Label></strong><br />
                            <div class="row">
                                <div class="col-md-4">
                                    <label class="control-label">Years</label>
                                    <asp:Textbox type="text" ID="yearOtherDetailTxt" class="form-control" runat="server" onkeypress='return isNumberKey(event)'></asp:Textbox>
                                    <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="yearOtherDetailTxt" ID="RegularExpressionValidator2" ValidationExpression="^[\s\S]{1,2}$"
                                        runat="server" ErrorMessage="Adhaar No. should be of 12 digits" ForeColor="red"></asp:RegularExpressionValidator>
                                </div>

                                <div class="col-md-4">
                                    <label class="control-label">Months</label>
                                    <asp:Textbox type="text" ID="monthsOtherDetailTxt" class="form-control" runat="server" onkeypress='return isNumberKey(event)'></asp:Textbox>
                                    <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="monthsOtherDetailTxt" ID="RegularExpressionValidator1" ValidationExpression="^[\s\S]{1,2}$"
                                        runat="server" ErrorMessage="Adhaar No. should be of 12 digits" ForeColor="red"></asp:RegularExpressionValidator>
                                </div>
                                <div class="col-md-4">
                                    <label class="control-label">Days</label>
                                    <asp:Textbox type="text" ID="daysOtherDetailTxt" class="form-control" runat="server" onkeypress='return isNumberKey(event)'></asp:Textbox>
                                    <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="daysOtherDetailTxt" ID="RegularExpressionValidator3" ValidationExpression="^[\s\S]{1,2}$"
                                        runat="server" ErrorMessage="Adhaar No. should be of 12 digits" ForeColor="red"></asp:RegularExpressionValidator>
                                </div>
                            </div>

                            <hr class="line"/>
                            <br />

                            <div class="row">
                                <div class="col-md-12">
                                    <strong><asp:Label runat="server">
                                        Three References familiar with your academic work
                                    </asp:Label></strong>
                                </div>
                                <div class="col-md-12">
                                    <asp:Table class="table text-center" id="tableReferenceDetails" runat="server">
                                        <asp:TableHeaderRow>
                                                <asp:TableHeaderCell>Sr No.</asp:TableHeaderCell>
                                                <asp:TableHeaderCell>Full Name</asp:TableHeaderCell>
                                                <asp:TableHeaderCell>Institutional Affliliation<br>(Present/Former)</asp:TableHeaderCell>
                                                <asp:TableHeaderCell>Designation</asp:TableHeaderCell>
                                                <asp:TableHeaderCell>Address</asp:TableHeaderCell>
                                                <asp:TableHeaderCell>Mobile/Phone No.</asp:TableHeaderCell>
                                                <asp:TableHeaderCell>Email</asp:TableHeaderCell>
                                        </asp:TableHeaderRow>
                                        <asp:TableRow>
                                            <asp:TableCell Font-Bold="true">1</asp:TableCell>
                                            <asp:TableCell> 
                                                <div class="form-group">
                                                    <asp:Textbox type="text" ID="refreeName1" class="form-control" runat="server"></asp:Textbox>
                                                </div>
                                            </asp:TableCell>
                                            <asp:TableCell> 
                                                <div class="form-group">
                                                    <asp:Textbox type="text" ID="refreeInstituion1" class="form-control" runat="server"></asp:Textbox>
                                                </div>
                                            </asp:TableCell>
                                            <asp:TableCell> 
                                                <div class="form-group">
                                                    <asp:Textbox type="text" ID="refreeDesignation1" class="form-control" runat="server"></asp:Textbox>
                                                </div>
                                            </asp:TableCell>
                                            <asp:TableCell> 
                                                <div class="form-group">
                                                    <asp:Textbox type="text" ID="refreeAddress1" class="form-control" runat="server"></asp:Textbox>
                                                </div>
                                            </asp:TableCell>
                                            <asp:TableCell> 
                                                <div class="form-group">
                                                    <asp:Textbox type="text" ID="refreeMobile1" class="form-control" runat="server" onkeypress='return isNumberKey(event)'></asp:Textbox>
                                                    <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="refreeMobile1" ID="RegularExpressionValidator4" ValidationExpression="^[\s\S]{10,10}$"
                                                        runat="server" ErrorMessage="Mobile Number must be 10 digits." ForeColor="red"></asp:RegularExpressionValidator>
                                                </div>
                                            </asp:TableCell>
                                            <asp:TableCell> 
                                                <div class="form-group">
                                                    <asp:Textbox type="text" ID="refreeEmail1" class="form-control" runat="server"></asp:Textbox>
                                                    <asp:RegularExpressionValidator  Display="Dynamic" ID="EmailValidation1" runat="server" ControlToValidate="refreeEmail1" ErrorMessage="Invalid!"
                                                        ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,30}$"></asp:RegularExpressionValidator>
                                                </div>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow>
                                            <asp:TableCell Font-Bold="true">2</asp:TableCell>
                                            <asp:TableCell> 
                                                <div class="form-group">
                                                    <asp:Textbox type="text" ID="refreeName2" class="form-control" runat="server"></asp:Textbox>
                                                </div>
                                            </asp:TableCell>
                                            <asp:TableCell> 
                                                <div class="form-group">
                                                    <asp:Textbox type="text" ID="refreeDesignation2" class="form-control" runat="server"></asp:Textbox>
                                                </div>
                                            </asp:TableCell>
                                            <asp:TableCell> 
                                                <div class="form-group">
                                                    <asp:Textbox type="text" ID="refreeInstituion2" class="form-control" runat="server"></asp:Textbox>
                                                </div>
                                            </asp:TableCell>
                                            <asp:TableCell> 
                                                <div class="form-group">
                                                    <asp:Textbox type="text" ID="refreeAddress2" class="form-control" runat="server"></asp:Textbox>
                                                </div>
                                            </asp:TableCell>
                                            <asp:TableCell> 
                                                <div class="form-group">
                                                    <asp:Textbox type="text" ID="refreeMobile2" class="form-control" runat="server" onkeypress='return isNumberKey(event)'></asp:Textbox>
                                                    <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="refreeMobile2" ID="RegularExpressionValidator5" ValidationExpression="^[\s\S]{10,10}$"
                                                        runat="server" ErrorMessage="Mobile Number must be 10 digits." ForeColor="red"></asp:RegularExpressionValidator>
                                                </div>
                                            </asp:TableCell>
                                            <asp:TableCell> 
                                                <div class="form-group">
                                                    <asp:Textbox type="text" ID="refreeEmail2" class="form-control" runat="server"></asp:Textbox>
                                                </div>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow>
                                            <asp:TableCell Font-Bold="true">3</asp:TableCell>
                                            <asp:TableCell> 
                                                <div class="form-group">
                                                    <asp:Textbox type="text" ID="refreeName3" class="form-control" runat="server"></asp:Textbox>
                                                </div>
                                            </asp:TableCell>
                                            <asp:TableCell> 
                                                <div class="form-group">
                                                    <asp:Textbox type="text" ID="refreeDesignation3" class="form-control" runat="server"></asp:Textbox>
                                                </div>
                                            </asp:TableCell>
                                            <asp:TableCell> 
                                                <div class="form-group">
                                                    <asp:Textbox type="text" ID="refreeInstituion3" class="form-control" runat="server"></asp:Textbox>
                                                </div>
                                            </asp:TableCell>
                                            <asp:TableCell> 
                                                <div class="form-group">
                                                    <asp:Textbox type="text" ID="refreeAddress3" class="form-control" runat="server"></asp:Textbox>
                                                </div>
                                            </asp:TableCell>
                                            <asp:TableCell> 
                                                <div class="form-group">
                                                    <asp:Textbox type="text" ID="refreeMobile3" class="form-control" runat="server" onkeypress='return isNumberKey(event)'></asp:Textbox>
                                                    <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="refreeMobile3" ID="RegularExpressionValidator6" ValidationExpression="^[\s\S]{10,10}$"
                                                        runat="server" ErrorMessage="Mobile Number must be 10 digits." ForeColor="red"></asp:RegularExpressionValidator>
                                                </div>
                                            </asp:TableCell>
                                            <asp:TableCell> 
                                                <div class="form-group">
                                                    <asp:Textbox type="text" ID="refreeEmail3" class="form-control" runat="server"></asp:Textbox>
                                                </div>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                </div>  
                            </div>        <!-- Row Ends -->
                            <hr class="line" />
                            <div class="text-center">
                                <asp:button type="button" ID="btnSaveOtherDetail" text="Save" class="btn btn-success" runat="server"
                                    OnClick="btnSaveOtherDetail_Click" ></asp:button>
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <asp:Table ID="tblOtherDetails" CssClass="table" runat="server" Visible="false">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Table ID="tblOtherDetails1" CssClass="table" runat="server">
                                <asp:TableRow>
                                    <asp:TableCell><strong>In which language are you comfortable in teaching?</strong></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblOtherDetailLang" runat="server"></asp:Label></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell><strong>Membership/Fellowship of academies/institutions/professional societies:</strong></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblOtherDetailFellowship" runat="server"></asp:Label></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell><strong>Other activities/Responsibilities: (Academic/Administrative)</strong></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblOtherDetailResponsibilities" runat="server"></asp:Label></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell><strong>Any other relevant information, if not given above:</strong></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblOtherDetailAnyInfo" runat="server"></asp:Label></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell><strong>Are you willing to accept the minimum initial pay in the grade? <br />
                                        If not, state reasons for claiming higher starting pay.</strong></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblOtherDetailMinPay" runat="server"></asp:Label></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell><strong>If selected, how much time would you require to join?</strong></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblOtherDetailTime" runat="server"></asp:Label></asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                            <hr />

                            <label style="font-weight:bold;">Disclosure</label>
                            <asp:Table ID="tblOtherDetails2" CssClass="table" runat="server">
                                <asp:TableRow>
                                    <asp:TableCell>Have you ever been punished for Gender/Caste related offences or <br />
                                        convicted by a court of law? If yes, give details.</asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblDisclosure1" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell><asp:Label Font-Bold="true" runat="server">Details :</asp:Label>
                                        <asp:Label ID="lblDisclosureText1" runat="server"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>Were you at any time declared medically unfit or asked to submit your <br />
                                        resignation or discharged or dismissed? If yes, give details .</asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblDisclosure2" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell><asp:Label Font-Bold="true" runat="server">Details :</asp:Label>
                                        <asp:Label ID="lblDisclosureText2" runat="server"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>Do you have any case pending against you in a court of law? If yes, <br />
                                        give details.</asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblDisclosure3" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell><asp:Label Font-Bold="true" runat="server">Details :</asp:Label>
                                        <asp:Label ID="lblDisclosureText3" runat="server"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                            <hr />
                            <label style="font-weight:bold;">Three Referees familiar with your academic work</label>
                            <asp:Table ID="tblOtherDetails3" CssClass="table" runat="server">
                                <asp:TableRow>
                                    <asp:TableCell><strong>#</strong></asp:TableCell>
                                    <asp:TableCell><strong>Full Name</strong></asp:TableCell>
                                    <asp:TableCell><strong>Institutional Affiliation (Present/Former)</strong></asp:TableCell>
                                    <asp:TableCell><strong>Designation</strong></asp:TableCell>
                                    <asp:TableCell><strong>Address</strong></asp:TableCell>
                                    <asp:TableCell><strong>Mobile / Phone No.</strong></asp:TableCell>
                                    <asp:TableCell><strong>Email</strong></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="Label1" runat="server"></asp:Label></asp:TableCell>
                                </asp:TableRow>

                                <asp:TableRow>
                                    <asp:TableCell><asp:Label runat="server">1</asp:Label></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblRefreeName1" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblRefreeInstitution1" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblRefreeDegignation1" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblRefreeAddress1" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblRefreeMobile1" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblRefreeEmail1" runat="server"></asp:Label></asp:TableCell>
                                </asp:TableRow>

                                <asp:TableRow>
                                    <asp:TableCell><asp:Label runat="server">2</asp:Label></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblRefreeName2" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblRefreeInstitution2" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblRefreeDegignation2" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblRefreeAddress2" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblRefreeMobile2" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblRefreeEmail2" runat="server"></asp:Label></asp:TableCell>
                                </asp:TableRow>

                                <asp:TableRow>
                                    <asp:TableCell><asp:Label runat="server">3</asp:Label></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblRefreeName3" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblRefreeInstitution3" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblRefreeDegignation3" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblRefreeAddress3" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblRefreeMobile3" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblRefreeEmail3" runat="server"></asp:Label></asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>

                            <hr class="line" />
                            <div class="form-group text-center">
                                <asp:Button CssClass="btn btn-primary" ID="btnOtherDetailEdit" runat="server" Text="Edit Details"
                                    OnClick="btnOtherDetailEdit_Click" TabIndex="29"/>&nbsp &nbsp
                                <asp:Button CssClass="btn btn-success" ID="btnOtherDetailNext" runat="server" Text="Proceed"
                                    OnClick="btnOtherDetailNext_Click" TabIndex="29"/>
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>       <!-- Panel Body Ends -->
        </div>       <!-- Panel Ends -->


        
    </form>      <!-- Form Ends-->

    <script>
        $(document).ready(function() {
            $('.summernote').summernote({
              //  options: {
                   // width: null,                  // set editor width
                   // height: 550,                 // set editor height, ex) 300

                  //  minHeight: 200,              // set minimum height of editor
                  ///  maxHeight: 600,              // set maximum height of editor
                  //  },
                toolbar: [
                    // [groupName, [list of button]]
                    ['style', ['bold', 'italic', 'underline', 'clear']],
                    ['font', ['strikethrough', 'superscript', 'subscript']],
                    ['fontsize', ['fontsize']],
                    ['color', ['color']],
                    ['para', ['ul', 'ol', 'paragraph']],
                    ['height', ['height']]
                ]
            });
        });
     </script>
    <script>
        $("#OtherDetails").addClass("active");
    </script>
    <script>
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }
    </script>
</asp:Content>

