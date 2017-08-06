<%@ Page Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/FormsMasterPage.master" AutoEventWireup="true" CodeFile="Declaration.aspx.cs" Inherits="Declaration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form role="form" id="declaration" runat="server">
        <div class="card">
            <div class="card-header" data-background-color="orange" runat="server">
                <h4 class="title">Declaration</h4>
            </div>
            <div class="card-content table-responsive">
                <div class="col-md-11" style="font-weight:bold; text-align:justify;">
                                
                    <ul>
                        <li> I hereby declare that the entries made in this application form are true and correct to the best of my knowledge and belief. If any part of the information given is found to be false or incorrect, my candidature will be treated as cancelled.<br/><br/>
                        <li> I have not been convicted by a Court of Law for any offence. <br /><br/>
                        <li> I have not indulged in any of the acts of misconduct such as participating in Gherao of any educational authority, whether academic or administrative manhandling or abusing such authority or damaging any building or other property. <br /><br/>
                        <li> I have not been found to have used unfair means in any examination and have not gravely misbehaved with a teacher or officer or my superior or found to have tampered with or forged a marks-sheet, certificate or degree. <br /><br/>
                        <li> I have read and understood all the relevant information, terms and conditions, and I shall abide by the same as also any other ordinances, statutes, rules and regulations that may be made by the University hereafter.
                        <br /><br />
                    </ul>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header" data-background-color="orange" runat="server">
                <h4 class="title">No Objection Certificate</h4>
            </div>
            <div class="card-content table-responsive">
                <asp:Table ID="tableDeclaration" CssClass="table table-bordered table-striped table-responsive" runat="server">
                    <asp:TableRow>
                        <asp:TableCell>
                            <div class="col-md-9">
                                <asp:Label runat="server" Font-Bold="true">Please select the check box if NOC is not available 
                                    (Advance Copy)/ If you are not working at present</asp:Label>
                            </div>
                            <div class="col-md-3">
                                <asp:CheckBox runat="server" ID="nocCheck" AutoPostBack="true" OnCheckedChanged="nocChanged" />
                            </div><br /><br />
                            <div class="col-md-11 " id ="nocText" runat="server" visible="true" style="font-weight:bold; text-align:justify;">
                                <br />
                                Forwarded with the remarks that the facts stated in the above application have been verified and 
                                found correct and this Institution/Organization has no objection to the candidature of the applicant 
                                being considered for the post applied for.
                                <br /><br />
                            </div><br />
                            <div class="col-md-11" id ="nocText2" runat="server" visible="false" style="color:red;font-size:small;">
                                I shall produce the No Objection Certificate before/at the time of Interview.
                            </div>

                            <asp:Table Visible="true" ID="nocTable" runat="server" CssClass="table">
                                   <asp:TableRow>
                                    <asp:TableCell>
                                        <div class="form-group label-floating">
                                            <asp:Label runat="server" class="control-label">Name of Head of Institution</asp:Label>
                                            <asp:Textbox type="text" id="nocNameOfHead" class="form-control" runat="server"></asp:Textbox>
                                        </div>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <div class="form-group label-floating">
                                            <asp:Label runat="server" class="control-label">Name of Institution</asp:Label>
                                            <asp:Textbox type="text" id="nocNameOfInstitution" class="form-control" runat="server"></asp:Textbox>
                                        </div>
                                    </asp:TableCell>
                                  </asp:TableRow>
                                  <asp:TableRow>
                                    <asp:TableCell>
                                        <div class="form-group label-floating">
                                            <asp:Label runat="server" class="control-label">Designation</asp:Label>
                                            <asp:Textbox type="text" id="nocDesignation" class="form-control" runat="server"></asp:Textbox>
                                        </div>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <div class="form-group label-floating">
                                            <asp:Label runat="server" class="control-label">Date</asp:Label>
                                            <asp:Textbox type="text" id="nocDate" class="form-control " runat="server"></asp:Textbox>
                                        </div>
                                    </asp:TableCell>
                                  </asp:TableRow>
                                  <asp:TableRow>
                                    <asp:TableCell>
                                        <div class="form-group label-floating">
                                            <asp:Label runat="server" class="control-label">Address</asp:Label>
                                            <asp:Textbox type="text" id="nocAddress" class="form-control" runat="server"></asp:Textbox>
                                        </div>
                                    </asp:TableCell>
                                      <asp:TableCell>
                                    </asp:TableCell>
                                      </asp:TableRow>
                                <asp:TableRow>
                    </asp:TableRow>
                </asp:Table>

                <div class="form-group text-center">
                    <asp:button type="button" ID="btnSaveDeclaration" text="Save" class="btn btn-success btn-lg" runat="server"
                        OnClick="btnSaveDeclaration_Click" ></asp:button>
                </div>

                <asp:Table ID="tblDeclaration" CssClass="table" runat="server" Visible="false">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Table ID="tblDeclaration1" CssClass="table" runat="server" Visible="false">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <p>Forwarded with the remarks that the facts stated in the 
                                            above application have been verified and found correct and this Institution/ 
                                            Organization has no objection to the candidature of the applicant being considered 
                                            for the post applied for.</p>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell><strong>Name of Head of Institution</strong></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblNameHead" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell><strong>Designation</strong></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblDesgHead" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell><strong>Name of Institution</strong></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblInstitutionHead" runat="server"></asp:Label></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell><strong>Date</strong></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblDateHead" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell><strong>Address</strong></asp:TableCell>
                                    <asp:TableCell><asp:Label ID="lblAddressHead" runat="server"></asp:Label></asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                            <asp:Table ID="tblDeclaration2" CssClass="table" runat="server" Visible="false">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <label style="color:red;">I shall produce the No Objection Certificate before/at the time of Interview.</label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:TableCell>
                </asp:TableRow>
                <asp:TableHeaderRow>
                    
                </asp:TableHeaderRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <hr class="line" />
                        <div class="form-group text-center">
                            <asp:Button CssClass="btn btn-primary" ID="btnDeclarationEdit" runat="server" Text="Edit Details"
                                OnClick="btnDeclarationrEdit_Click" TabIndex="29"/>&nbsp &nbsp
                            <asp:Button CssClass="btn btn-success" ID="btnDeclarationNext" runat="server" Text="Proceed"
                                OnClick="btnDeclarationNext_Click" TabIndex="29"/>
                        </div>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            </asp:TableCell>
        </asp:TableRow>
      </asp:Table>
                
            </div> <!-- End Panel-body -->
        </div> <!-- End Panel -->

    </form>
    <script>
        $("#Declaration").addClass("active");
    </script>
</asp:Content>
