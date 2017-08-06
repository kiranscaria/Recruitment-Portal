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
            <div class="card-header">
                Full Time Teaching-Experience
            </div>
			<div class ="card-content text-justify" runat ="server" id ="experience">
                <strong>Please leave the table blank if you don't have relevant experience. (Period of acquiring M.Phil 
                degree/residency period for pursuing Ph.D./Part-time Teaching/Guest LecturerTeaching Assistantship
                SHALL NOT BE considered as experience/ research experience.) (Each period of experience claimed must
                be supported by Experience Certificate issued by the employer.)</strong><br /><br />
                <div class="shadow-box">
                    <div class="row">  
                        <div class="col-md-12 ">  
                            <div class="table table-responsive">   
                                <asp:GridView ID="gridFullTeach" runat="server" AutoGenerateColumns="False" 
                                    CssClass="table table-bordered table-striped table-hover" ShowFooter="True" GridLines="None" OnRowDeleting="gridFullTeach_RowDeleting">
                                    <Columns>
                                    <asp:BoundField DataField="RowNumber" HeaderText="#" ReadOnly="True" />
                                    <asp:TemplateField HeaderText="Employer (Name and Address)">
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
                                                <asp:ListItem>On Contract</asp:ListItem>
                                            </asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Pay scale/ consolidated salary">
                                        <ItemTemplate>
                                            <asp:TextBox ID="experienceTeachSalary" runat="server" MaxLength="50" 
                                                CssClass="form-control"></asp:TextBox>
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

                                    <asp:TemplateField HeaderText="Duration">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDuration" runat="server"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Type of Experience">
                                        <ItemTemplate>
                                            <asp:DropDownList ID="experienceType" runat="server" CssClass="form-control">
                                                <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                                                <asp:ListItem Value="1">Teaching</asp:ListItem>
                                                <asp:ListItem Value="2">Research</asp:ListItem>
                                                <asp:ListItem Value="3">Other</asp:ListItem>
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
                        </div>
                    </div>
                </div>
            </div>   <!-- Panel Body Ends -->

            
        <div class ="panel-body" runat ="server" id ="experiencePreview" visible ="false">
             <asp:GridView CssClass="table table-bordered table-striped table-hover" ID="experienceGrid" runat="server"></asp:GridView>
            </div>
        </div>   <!-- Panel Ends -->

 

        <br/> 

        <div class="text-center">
            <asp:button type="button" ID="submitExperience" text="Save and Proceed" class="btn btn-success" runat="server" 
                OnClick="submitExperience_Click"></asp:button>
        </div>

        <script>
            $(".datePicker").dateDropper();
        </script> 

    </form>   <!-- Form Ends -->
</asp:Content>

