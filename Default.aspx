<%@ Page Title="" Language="C#" MasterPageFile="~/FormsMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form role="form" runat="server">
        <div class="card">
            <div class="card-header" data-background-color="orange">
                <h4 class="title">Application</h4>
                <p class="category">Complete your Application Form</p>
            </div>  <!-- Class Header Ends Here -->

            <div class="card-content table-responsive">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group label-floating">
                            <label class="control-label">Post To Apply</label>
                            <asp:DropDownList ID="postList" runat="server"  class="form-control" AutoPostBack="true" OnSelectedIndexChanged="Post_Changed" TabIndex="1">
                                
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group label-floating">
                            <label class="control-label">Department</label>
                            <asp:DropDownList ID="postDepartment" runat="server"  class="form-control" AutoPostBack="true" OnSelectedIndexChanged="Department_Changed" TabIndex="2">
                               
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>  <!-- Row Ends Here --> 
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group label-floating">
                            <label class="control-label">Specialisation</label>
                            <asp:DropDownList ID="postSpecialisation" runat="server" AutoPostBack="true" OnSelectedIndexChanged="Specialisation_Changed" class="form-control" TabIndex="3">
                                
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group label-floating">
                            <label class="control-label">Category</label>
                            <asp:DropDownList ID="postCategory" runat="server"  class="form-control" TabIndex="4">
                                 
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="form-group text-center">
                    <asp:Button CssClass="btn btn-success btn-lg" ID="btnApplyNow" runat="server" Text="Apply Now" OnClick="btnApplyNow_Click"/>
                </div>
            </div>  <!-- Content Ends Here -->
        </div>  <!-- Card Ends Here -->


        <div class="card">
	        <div class="card-header" data-background-color="purple" runat="server">
	            <h4 class="title">Current Applications</h4>
	            <p class="category">All your applications are listed here.</p>
	        </div>
	        <div class="card-content table-responsive">
                <asp:GridView CssClass="table table-bordered table-striped table-hover" ID="GridView1" runat="server"></asp:GridView>
	        </div>
            <asp:Label ID="lblNoApplication" CssClass="label label-danger" runat="server"></asp:Label>
            <div class="form-group text-center">
                <asp:Button CssClass="btn btn-info btn-lg" ID="btnCompleteApplication" runat="server" Text="Complete Application" OnClick="btnCompleteApplication_Click"/>
            </div>
	     </div>


        </form>  <!-- Form Ends Here -->
</asp:Content>