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
        <div class="panel panel-primary">
            <div class="panel-heading customPanelHeading">
                Full Time Teaching-Experience
            </div>
			<div class ="panel-body  text-justify">
                <strong>Please leave the table blank if you don't have relevant experience. (Period of acquiring M.Phil 
                degree/residency period for pursuing Ph.D./Part-time Teaching/Guest Lecturer/Teaching Assistantship
                SHALL NOT BE considered as experience/ research experience.) (Each period of experience claimed must
                be supported by Experience Certificate issued by the employer.)</strong><br /><br />
                <div class="shadow-box">
                    <div class="row">  
                        <div class="col-md-12 ">  
                            <div class="table-responsive">   
                                <asp:GridView ID="gridFullTeach" runat="server" AutoGenerateColumns="False" 
                                    CssClass="table table-bordered table-striped table-hover" ShowFooter="True" GridLines="None" OnRowDeleting="gridFullTeach_RowDeleting">
                                    <Columns>
                                    <asp:BoundField DataField="RowNumber" HeaderText="#" ReadOnly="True" />
                                    <asp:TemplateField HeaderText="Name of University/College/Institute/Organization">
                                        <ItemTemplate>
                                            <asp:TextBox ID="experienceTeachUniversityName" runat="server" MaxLength="50" 
                                                CssClass="form-control"></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Designation">
                                        <ItemTemplate>
                                            <asp:TextBox ID="experienceTeachDesignation" runat="server" MaxLength="50" 
                                                CssClass="form-control"></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:DropDownList runat="server"  class="form-control" ID="experienceTeachStatus">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Permanent</asp:ListItem>
                                                <asp:ListItem>Ad-hoc</asp:ListItem>
                                                <asp:ListItem>Temporary</asp:ListItem>
                                                <asp:ListItem>Contractual</asp:ListItem>
                                            </asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Pay scale/consolidated salary">
                                        <ItemTemplate>
                                            <asp:TextBox ID="experienceTeachSalary" runat="server" MaxLength="50" 
                                                CssClass="form-control"></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="From">
                                        <ItemTemplate>
                                            <asp:TextBox ID="experienceTeachFrom" runat="server" MaxLength="50" CssClass="form-control datePicker"
                                                ClientIDMode="Static" data-min-year="1930" data-format="n m Y"  data-theme="my-style"  
                                                data-large-mode="true"  data-large-default="true">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="To">
                                        <ItemTemplate>
                                            <asp:TextBox ID="experienceTeachTo" runat="server" MaxLength="50" CssClass="form-control datePicker"
                                                ClientIDMode="Static" data-min-year="1930" data-format="n m Y"  data-theme="my-style"  
                                                data-large-mode="true"  data-large-default="true">
                                            </asp:TextBox>
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
                        </div>
                    </div>
                </div>
            </div>   <!-- Panel Body Ends -->
        </div>   <!-- Panel Ends -->

        <br/> <br/>

        <div class="panel panel-primary">
            <div class="panel-heading">
                Research Experience
            </div>
			<div class ="panel-body">
                <strong>Please leave this table blank if you don't have research experience. <br /></strong><br />
                <div class="shadow-box">
                    <div class="row">  
                        <div class="col-md-12 ">  
                            <div class="table-responsive">   
                                <asp:GridView ID="gridFullResearch" runat="server" AutoGenerateColumns="False" 
                                    CssClass="table table-bordered table-striped table-hover" ShowFooter="True" GridLines="None" OnRowDeleting="gridFullResearch_RowDeleting">
                                    <Columns>
                                    <asp:BoundField DataField="RowNumber" HeaderText="#" ReadOnly="True" />
                                    <asp:TemplateField HeaderText="Name of University/College/Institute/Organization">
                                        <ItemTemplate>
                                            <asp:TextBox ID="experienceResearchUniversityName" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Designation">
                                        <ItemTemplate>
                                            <asp:TextBox ID="experienceResearchDesignation" runat="server" MaxLength="50" 
                                                CssClass="form-control"></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Pay scale/consolidated salary">
                                        <ItemTemplate>
                                            <asp:TextBox ID="experienceResearchSalary" runat="server" MaxLength="50" 
                                                CssClass="form-control"></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="From">
                                        <ItemTemplate>
                                            <asp:TextBox ID="experienceResearchFrom" runat="server" MaxLength="50" CssClass="form-control datePicker"
                                                ClientIDMode="Static" data-min-year="1930" data-format="n m Y"  data-theme="my-style"  
                                                data-large-mode="true"  data-large-default="true">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="To">
                                        <ItemTemplate>
                                            <asp:TextBox ID="experienceResearchTo" runat="server" MaxLength="50" CssClass="form-control datePicker"
                                                ClientIDMode="Static" data-min-year="1930" data-format="n m Y"  data-theme="my-style"  
                                                data-large-mode="true"  data-large-default="true">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                        <FooterStyle HorizontalAlign="Right" />
                                        <FooterTemplate>
                                            <asp:Button ID="ButtonAdd" runat="server" Text="Add New Row" CssClass="btn btn-warning"
                                                OnClick="ButtonAddResearch_Click"/>  <!--   -->
                                        </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField ShowDeleteButton="True" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>   <!-- Panel Body Ends -->
        </div>   <!-- Panel Ends -->

        <br/> <br/>

        <div class="panel panel-primary">
            <div class="panel-heading">
                Present Employment Details
            </div>
			<div class ="panel-body">
                <div class="row">  
                    <div class="col-md-10">  
                        <strong>Please select the checkbox if you are not working presently</strong>
                    </div> <!-- Column div ends -->
                    <div class="col-md-2">
                        <asp:CheckBox runat="server" ID="experienceEmployed_checkBox" AutoPostBack="true" OnCheckedChanged="experienceEmployed_CheckedChanged"> </asp:CheckBox>
                    </div>
                </div> <!-- Row div ends-->
                <br/>
               <div class="row" ID="experienceEmployed_details" runat="server" visible="true">
                    <div class="col-md-3">
                        <label class="control-label">Organization Name</label>
                        <asp:Textbox type="text" class="form-control" runat="server"></asp:Textbox>
                    </div>
                    <div class="col-md-3">
                        <label class="control-label">Position Held</label>
                        <asp:Textbox type="text" class="form-control" runat="server"></asp:Textbox>
                    </div>
                    <div class="col-md-3">
                        <label class="control-label">Date of Appointment</label>
                        <asp:Textbox type="text" class="form-control datePicker" runat="server"
                            ClientIDMode="Static" data-min-year="1930" data-format="S F, Y"  data-theme="my-style"  
                            data-large-mode="true"  data-large-default="true">
                        </asp:Textbox>
                    </div>
                    <div class="col-md-3">
                        <label class="control-label">Present Status</label>
                        <asp:Textbox type="text" class="form-control" runat="server"></asp:Textbox>
                    </div>
                </div>

            </div>   <!-- Panel body ends -->
        </div>    <!-- Panel Ends -->

        <br/>

        <div class="text-center">
            <asp:button type="button" text="Save" class="btn btn-success" runat="server"></asp:button>
            <asp:button type="button" text="Cancel" class="btn btn-warning" runat="server"></asp:button>
        </div>

        <script>
            $(".datePicker").dateDropper();
        </script>

    </form>   <!-- Form Ends -->
    <script>
        $("#Experience").addClass("active");
    </script>
</asp:Content>

