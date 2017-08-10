<%@ Page Title="" Language="C#" MasterPageFile="~/FormsMasterPage.master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeFile="Experience.aspx.cs" Inherits="Experience" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!-- include datedropper css/js-->
    <link href="assets/css/datedropper.css" rel="stylesheet">
    <link href="assets/css/datedropper_style.css" rel="stylesheet">
    <script src="assets/js/datedropper.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form role="form" id="experienceDetails" runat="server">
        <div class="card">
            <div class="card-header" data-background-color="blue">
                Full Time Teaching-Experience
            </div><br />
            <div class="col-md-12 text-justify">
                <strong>Please leave the table blank if you don't have relevant experience. (Period of acquiring M.Phil 
                degree/residency period for pursuing Ph.D./Part-time Teaching/Guest LecturerTeaching Assistantship
                SHALL NOT BE considered as experience/ research experience.) (Each period of experience claimed must
                be supported by Experience Certificate issued by the employer.)</strong><br /><br />
            </div>
            <div class="card-content table-responsive" ID="cardExperience" runat="server">   
                <asp:GridView ID="gridFullTeach" runat="server" AutoGenerateColumns="False" 
                    CssClass="table table-bordered table-hover" ShowFooter="True" 
                    GridLines="None" OnRowDeleting="gridFullTeach_RowDeleting">
                    <Columns>
                        <asp:BoundField DataField="RowNumber" HeaderText="#" ReadOnly="True" />
                        <asp:TemplateField HeaderText="Employer (Name and Address)">
                            <ItemTemplate>
                                <asp:TextBox ID="experienceTeachUniversityName" runat="server" required="true" onkeypress="filterAlphabet(event)" MaxLength="50"
                                    CssClass="form-control"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Designation">
                            <ItemTemplate>
                                <asp:TextBox ID="experienceTeachDesignation" runat="server" required="true" onkeypress="filterAlphabet(event)" MaxLength="50" 
                                    CssClass="form-control"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Status">
                            <ItemTemplate>
                                <asp:DropDownList runat="server" required="true" class="form-control" ID="experienceTeachStatus">
                                    <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                                    <asp:ListItem>Permanent</asp:ListItem>
                                    <asp:ListItem>Ad-hoc</asp:ListItem>
                                    <asp:ListItem>Temporary</asp:ListItem>
                                    <asp:ListItem>On Contract</asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Pay scale/ consolidated salary">
                            <ItemTemplate>
                                <asp:TextBox ID="experienceTeachSalary" required="true" onkeypress="filterAlphaNumeric(event)"
                                    runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                                    
                        <asp:TemplateField HeaderText="From">
                            <ItemTemplate>
                                <asp:TextBox ID="experienceTeachFrom" CssClass="form-control datePicker" runat="server" tabindex="8" 
                                    ClientIDMode="Static" data-min-year="1930" data-format="Y-m-d"  data-theme="my-style"  
                                    data-large-mode="true"  data-large-default="true">
                                </asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="To">
                            <ItemTemplate>
                                <asp:TextBox ID="experienceTeachTo" CssClass="form-control datePicker" runat="server" tabindex="8" 
                                    ClientIDMode="Static" data-min-year="1930" data-format="Y-m-d"  data-theme="my-style"  
                                    data-large-mode="true"  data-large-default="true">
                                </asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Type of Experience">
                            <ItemTemplate>
                                <asp:DropDownList ID="experienceType" required="true" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                                    <asp:ListItem>Teaching</asp:ListItem>
                                    <asp:ListItem>Research</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                            <FooterStyle HorizontalAlign="Right" />
                            <FooterTemplate>
                                <asp:Button ID="ButtonAdd" runat="server" Text="Add New Row" CssClass="btn btn-warning" 
                                    OnClick="ButtonAddTeach_Click"/>  <!--   -->
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
            </div>
        

        <div class="card-content table-responsive" ID="cardExperience_Preview" Visibility="false" runat="server">
            <asp:GridView ID="experienceGrid" class="table table-responsive table-hover table-bordered" runat="server" AutoGenerateColumns="False" 
                OnRowCancelingEdit="experienceGrid_RowCancelingEdit" OnRowEditing="experienceGrid_RowEditing" OnRowUpdating="experienceGrid_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="Employer (Name and Address)">
                        <ItemTemplate>
                            <asp:Label ID="lbl_experienceTeachUniversityName" runat="server" Text='<%#Eval("Employer") %>'></asp:Label>
                        </ItemTemplate>
                        
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Designation">
                        <ItemTemplate>
                            <asp:Label ID="lbl_experienceTeachDesignation" runat="server" Text='<%#Eval("Designation") %>'></asp:Label>
                        </ItemTemplate>
                        
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <asp:Label ID="lbl_experienceTeachStatus" runat="server" Text='<%#Eval("Status") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList runat="server" required="true" class="input-sm" ID="txt_experienceTeachStatus" Text='<%#Eval("Status") %>'>
                                <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                                <asp:ListItem>Permanent</asp:ListItem>
                                <asp:ListItem>Ad-hoc</asp:ListItem>
                                <asp:ListItem>Temporary</asp:ListItem>
                                <asp:ListItem>On Contract</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Pay scale/ consolidated salary">
                        <ItemTemplate>
                            <asp:Label ID="lbl_experienceTeachSalary" runat="server" Text='<%#Eval("BasicPay") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox class="input-sm" ID="txt_experienceTeachSalary" required="true" onkeypress="filterAlphaNumeric(event)" MaxLength="50" 
                                runat="server" Text='<%#Eval("BasicPay") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="From">
                        <ItemTemplate>
                            <asp:Label ID="lbl_experienceTeachFrom" runat="server" Text='<%#Eval("FromDate") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox class="input-sm datePicker" ID="txt_experienceTeachFrom" runat="server" Text='<%#Eval("FromDate") %>' ClientIDMode="Static" 
                                data-min-year="1930" data-format="Y-m-d"  data-theme="my-style" data-large-mode="true"  data-large-default="true"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="To">
                        <ItemTemplate>
                            <asp:Label ID="lbl_experienceTeachTo" runat="server" Text='<%#Eval("ToDate") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox class="input-sm datePicker" ID="txt_experienceTeachTo" runat="server" Text='<%#Eval("ToDate") %>' ClientIDMode="Static" 
                                data-min-year="1930" data-format="Y-m-d"  data-theme="my-style" data-large-mode="true"  data-large-default="true"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Type of Experience">
                        <ItemTemplate>
                            <asp:Label ID="lbl_experienceType" required="true" runat="server" Text='<%#Eval("TypeOfExperience") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="txt_experienceType" required="true" runat="server" CssClass="input-sm" Text='<%#Eval("TypeOfExperience") %>'>
                                <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                                <asp:ListItem >Teaching</asp:ListItem>
                                <asp:ListItem >Research</asp:ListItem>
                                <asp:ListItem >Other</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Duration (In Months)">
                        <ItemTemplate>
                            <asp:Label ID="lbl_experienceDuration" runat="server" Text='<%#Eval("Duration") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button CssClass="btn btn-warning btn-sm" ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Button CssClass="btn btn-success btn-sm" ID="btn_Update" runat="server" Text="Update" CommandName="Update"/>
                            <asp:Button CssClass="btn btn-danger btn-sm" ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel"/>
                        </EditItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
	    </div>
       </div><!-- Card Ends -->

 

        <br/> 

        <div class="text-center">
            <asp:button type="button" ID="submitExperience" text="Save and Proceed" class="btn btn-success" runat="server" 
                OnClick="submitExperience_Click"></asp:button>
        </div>

        <script>
            $(".datePicker").dateDropper();
        </script> 
        
    </form>   <!-- Form Ends -->
    <script>
        $("#experienceDetails").validate({
        });
    </script>
    <script>
        $("#Experience").addClass("active");
    </script>
</asp:Content>

