<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/FormsMasterPage.master" AutoEventWireup="true" CodeFile="Uploads.aspx.cs" Inherits="Uploads" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server" id="uploadServer">
        <div class="container-fluid">
            <div class="card">
                <div class="card-header" data-background-color="blue">
                    <h4 class="title">Academic Details</h4>
                    <p class="category">Upload your documents.</p>
                </div> 
                <div class="card-content">
                    <div class="alert alert-warning title">Bachelor and Master Degree Documents</div>
                    <div class="col-md-6">
                        <div class="form-group label-floating">
                            <label class="control-label">Degree Type</label>
                            <asp:DropDownList ID="uploadDegreeType" runat="server"  class="form-control" AutoPostBack="true" OnSelectedIndexChanged="DegreeType_Changed" TabIndex="1">
                                 
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group label-floating">
                            <label class="control-label">Degree Name</label>
                            <asp:DropDownList ID="uploadDegreeName" runat="server"  class="form-control" TabIndex="2" AutoPostBack="true" OnSelectedIndexChanged="DegreeName_Changed">
                                 
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group label-floating">
                            <label class="control-label">University/Board</label>
                            <asp:DropDownList ID="uploadDegreeUniversity" runat="server"  class="form-control" TabIndex="3" AutoPostBack="true" OnSelectedIndexChanged="UniversityName_Changed">
                                 
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group label-floating">
                            <label class="control-label">Year</label>
                            <asp:DropDownList ID="uploadDegreeYear" runat="server"  class="form-control" TabIndex="4">
                                 
                            </asp:DropDownList>
                        </div>
                    </div>
                    
                    <asp:HyperLink runat="server"><asp:Label ID="listofuploadedfiles_1" runat="server"></asp:Label></asp:HyperLink>
                    <div class="text-center">
                        <asp:FileUpload ID="FileUploadAcademic_1" AllowMultiple="true" runat="server" />
                        <br/>
                        <asp:Button type="button" ID="btnUpload_Academic_1" class="btn btn-success center" runat="server" Text="Upload Document" OnClick="btnUpload_Academic_1_Click" UseSubmitBehavior="false"/>
                        <br />
                        <asp:Label ID="lblMessage_Academic_1" runat="server" Text="" Font-Names = "Arial"></asp:Label>    
                    </div>
                    <br/>
                    <div class="alert alert-warning title">Research Documents</div>
                    <div class="col-md-6">
                        <div class="form-group label-floating">
                            <label class="control-label">Degree Name</label>
                            <asp:DropDownList ID="researchDegreeName" runat="server"  class="form-control" AutoPostBack="true" OnSelectedIndexChanged="researchDegreeName_Changed" TabIndex="6">
                                 
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group label-floating">
                            <label class="control-label">Thesis Title</label>
                            <asp:DropDownList ID="researchThesisTitle" runat="server"  class="form-control" TabIndex="7" AutoPostBack="true" OnSelectedIndexChanged="researchThesisTitle_Changed">
                                 
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group label-floating">
                            <label class="control-label">University/Board</label>
                            <asp:DropDownList ID="researchUniversity" runat="server"  class="form-control" TabIndex="8" AutoPostBack="true" OnSelectedIndexChanged="researchUniversityName_Changed">
                                 
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group label-floating">
                            <label class="control-label">Registration No</label>
                            <asp:DropDownList ID="researchRegistrationNo" runat="server"  class="form-control" TabIndex="9">
                                 
                            </asp:DropDownList>
                        </div>
                    </div>
                    
                    <asp:HyperLink runat="server"><asp:Label ID="listofuploadedfiles_2" runat="server"></asp:Label></asp:HyperLink>
                    <div class="text-center">
                        <asp:FileUpload ID="FileUploadAcademic_2" AllowMultiple="true" runat="server" />
                        <br/>
                        <asp:Button type="button" ID="btnUpload_Academic_2" class="btn btn-success center" runat="server" Text="Upload Document" OnClick="btnUpload_Academic_2_Click" UseSubmitBehavior="false"/>
                        <br />
                        <asp:Label ID="lblMessage_Academic_2" runat="server" Text="" Font-Names = "Arial"></asp:Label>    
                    </div>
                </div>
            </div>      <br/> 
            <div class="card">
                <div class="card-header" data-background-color="blue">
                    <h4 class="title">Experience</h4>
                    <p class="category">Upload your documents.</p>
                </div>
                <div class="card-content">
                    <asp:label runat="server"></asp:label>
                    <div class="text-center">
                        <asp:FileUpload ID="FileUploadAcademic" runat="server" />
                        <asp:Button type="button" ID="btnUpload_Academic" class="btn btn-success" runat="server" Text="Upload Documents" OnClick="btnUpload_Academic_Click" UseSubmitBehavior="false"/>
                        <br />
                        <asp:Label ID="lblMessage_Academic" runat="server" Text="" Font-Names = "Arial"></asp:Label>
                    </div>
                </div>
            </div>
            
        </div>
        
    </form>
    <script>
        $("#Uploads").addClass("active");
    </script>
</asp:Content>

