<%@ Page Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/FormsMasterPage.master" AutoEventWireup="true" CodeFile="Declaration.aspx.cs" Inherits="Declaration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="assets/css/datedropper.css" rel="stylesheet">
    <link href="assets/css/datedropper_style.css" rel="stylesheet">
    <script src="assets/js/datedropper.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form role="form" id="declaration" runat="server">
        <div class="card">
            <div class="card-header" data-background-color="blue">
                <h3 class="header">No Objection Certificate</h3>

            </div>
            <div class="card-body">
                <asp:Table ID="tableDeclaration" CssClass="table table-responsive table-hover table-bordered" runat="server">
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
                            </div>
                            <div class="col-md-11" id ="nocText2" runat="server" visible="false" style="color:red;font-size:small;">
                                I shall produce the No Objection Certificate before/at the time of Interview.
                            </div>

                            <asp:Table Visible="true" ID="nocTable" runat="server" CssClass="table">
                                <asp:TableRow>
                                    <asp:TableCell>Name of Head of Institution</asp:TableCell>
                                    <asp:TableCell>Name of Institution</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Textbox type="text" id="nocNameOfHead" class="form-control" runat="server"></asp:Textbox>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:Textbox type="text" id="nocPlace" class="form-control" runat="server"></asp:Textbox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>Designation</asp:TableCell>
                                    <asp:TableCell>Date</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Textbox type="text" id="nocDesignation" class="form-control" runat="server"></asp:Textbox>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:Textbox type="text" id="nocDate" CssClass="form-control datePicker" runat="server" tabindex="8" 
                                            ClientIDMode="Static" data-min-year="1930" data-format="d-m-Y"  data-theme="my-style"  
                                            data-large-mode="true"  data-large-default="true"></asp:Textbox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>Address</asp:TableCell>
                                    <asp:TableCell></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Textbox type="text" id="nocAddress" class="form-control" runat="server">
                                        </asp:Textbox>
                                    </asp:TableCell>
                                    <asp:TableCell></asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>

                            <hr class="line" />
                            <div class="col-md-11" style="font-weight:bold; text-align:justify;">
                                <h3>Declaration</h3>
                                I do hereby solemnly declare that the information given, the statements made and documents uploaded 
                                with this application form are correct and true to the best of my knowledge and belief. 
                                If any information/ statement/ document is found to be incorrect/false, my candidature/appointment 
                                is liable to be cancelled and that I stand to be subjected to legal/disciplinary proceedings.
                                <br /><br />
                            </div>
                
                            <hr class="line" />

                            <div class="form-group text-center">
                                <asp:button type="button" ID="btnSaveDeclaration" text="Save" class="btn btn-success" runat="server"
                                    OnClick="btnSaveDeclaration_Click" ></asp:button>
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

                
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
                             </asp:table>
                             <asp:Table ID="tblDeclaration2" CssClass="table" runat="server" Visible="false">
                                <asp:TableRow>
                                    <asp:TableCell>Head of the Institution : <strong> <asp:Label ID="lblNameHead" runat="server"></asp:Label> </strong></asp:TableCell>
                                    <asp:TableCell>Designation : <strong><asp:Label ID="lblDesgHead" runat="server"></asp:Label></strong></asp:TableCell>
                                    <asp:TableCell>Place : <strong><asp:Label ID="lblPlaceHead" runat="server"></asp:Label></strong></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>Date : <strong><asp:Label ID="lblDateHead" runat="server"></asp:Label></strong></asp:TableCell>
                                    <asp:TableCell>Address : <strong><asp:Label ID="lblAddressHead" runat="server"></asp:Label></strong></asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                            <asp:Table ID="tblDeclaration3" CssClass="table" runat="server" Visible="false">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <label style="color:red;">I shall produce the No Objection Certificate before/at the time of Interview.</label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:TableCell>
                </asp:TableRow>
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>
                        <div style="text-align:justify;">
                            <h3>Declaration</h3>
                            I do hereby solemnly declare that the information given, the statements made and documents uploaded 
                            with this application form are correct and true to the best of my knowledge and belief. 
                            If any information/ statement/ document is found to be incorrect/false, my candidature/appointment 
                            is liable to be cancelled and that I stand to be subjected to legal/disciplinary proceedings.
                            <br /><br />
                        </div>
                    </asp:TableHeaderCell>
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
                
            </div> <!-- End Panel-body -->
        </div> <!-- End Panel -->
    <script>
        $(".datePicker").dateDropper();
    </script>
    </form>
</asp:Content>
