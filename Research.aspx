<%@ Page Language="C#" MasterPageFile="~/FormsMasterPage.master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeFile="Research.aspx.cs" Inherits="Research" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form role="form" id="research" runat="server">

        <div class="card">
            <div class="card-header" data-background-color="orange">
                Assessment of last three academic years
            </div>
            <div class="card-content table-responsive" runat="server" id ="assesment">
                <div class="row ">
                    <div class="col-md-1 text-center">
                        <label>Sr.No.</label>
                    </div>
                    <div class="col-md-4 text-center">
                        <label>Name of Activity</label>
                    </div>
                    <div class="col-md-7 text-center">
                        <label>Hours Spent</label><hr class="line" />
                        <div class="col-md-4 text-center">
                            <asp:Label runat="server">2013-14</asp:Label>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:Label runat="server">2014-15</asp:Label>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:Label runat="server">2015-16</asp:Label>
                        </div>
                    </div>
                   <%-- <div class="col-lg-1 text-center">
                        <label>API Score</label>
                    </div> --%>
                </div><hr class="line" />

                <div class="row">
                    <div class="col-md-1">
                        <label>a.</label>
                    </div>
                    <div class="col-md-11">
                        <label>Student related co-curricular, extension and filed based activities</label>
                    </div>
                </div><hr class="line" />

                <div class="row">
                    <div class="col-md-1 text-center">
                        <asp:Label runat="server">(i)</asp:Label>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="a1" runat="server">Descipline related co-curricular activities (e.g.field work, study visit, student seminar
                            and other events, carrier counseling etc.)
                        </asp:Label>
                    </div>
                    <div class="col-md-7 text-center">
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="hrs11" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="hrs12" CssClass="form-control"  runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="hrs13" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                 <!--    <div class="col-lg-1 text-center">
                        <asp:Label runat="server" ID="apiScoreCat11"></asp:Label>  
                    </div> -->
                </div><hr class="line" />

                <div class="row">
                    <div class="col-md-1 text-center">
                        <asp:Label runat="server">(ii)</asp:Label>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="a2" runat="server">Other co-curricular activities (Cultural, Sports, NSS, NCC etc.)
                        </asp:Label>
                    </div>
                    <div class="col-md-7 text-center">
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="hrs21" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="hrs22" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="hrs23" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                   <!-- <div class="col-lg-1 text-center">
                        <asp:Label runat="server" ID="apiScoreCat12"></asp:Label> 
                    </div> -->
                </div><hr class="line" />

                <div class="row">
                    <div class="col-md-1 text-center">
                        <asp:Label runat="server">(iii)</asp:Label>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="a3" runat="server">Extension and dissemination activities (public/popular lectures/talks/seminars etc.)
                        </asp:Label>
                    </div>
                    <div class="col-md-7 text-center">
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="hrs31" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="hrs32" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="hrs33" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                  <!--  <div class="col-lg-1 text-center">
                        <asp:Label runat="server" ID="apiScoreCat13"></asp:Label>
                    </div> -->
                </div><hr class="line" />

                <div class="row">
                    <div class="col-md-1">
                        <label>b.</label>
                    </div>
                    <div class="col-md-11">
                        <label>Contribution to corporate life and management of the department and institution 
                            through participation in academic and administrative committees and responsibilities.
                        </label>
                    </div>
                </div><hr class="line" />

                <div class="row">
                    <div class="col-md-1 text-center">
                        <asp:Label runat="server">(i)</asp:Label>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="b1" runat="server">Administrative responsibility (including as Dean/Principal/Chairperson/Convenor/ Teacher-in-charge/
                            similar other duties that require regular office hours for its discharge.
                        </asp:Label>
                    </div>
                    <div class="col-md-7 text-center">
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="hrs41" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="hrs42" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="hrs43" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                  <!--  <div class="col-lg-1 text-center">
                        <asp:Label runat="server" ID="apiScoreCat14"></asp:Label>
                    </div> -->
                </div><hr class="line" />

                <div class="row">
                    <div class="col-md-1 text-center">
                        <asp:Label runat="server">(ii)</asp:Label>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="b2" runat="server">Participation in Board of Studies, Academic and Administrative Committees.
                        </asp:Label>
                    </div>
                    <div class="col-md-7 text-center">
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="hrs51" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="hrs52" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="hrs53" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                  <!--  <div class="col-lg-1 text-center">
                        <asp:Label runat="server" ID="apiScoreCat15"></asp:Label>
                    </div> -->
                </div><hr class="line" />

                <div class="row">
                    <div class="col-md-1">
                        <label>c.</label>
                    </div>
                    <div class="col-md-11">
                        <label>Professional Development activities
                        </label>
                    </div>
                </div><hr class="line" />

                <div class="row">
                    <div class="col-md-1 text-center">
                        <asp:Label runat="server">(i)</asp:Label>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="c1" runat="server">Participation in seminars, conferences, short term training courses, 
                            industrial experience, talks, lectures in refresher/ faculty development courses, membership of associations,
                            dissemination and general articles and any other contribution.
                        </asp:Label>
                    </div>
                    <div class="col-md-7 text-center">
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="hrs61" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="hrs62" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="hrs63" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                  <!--  <div class="col-lg-1 text-center">
                        <asp:Label runat="server" ID="apiScoreCat16"></asp:Label>
                    </div> -->
                </div><hr class="line" />  
            </div> <!--Panel Body ends -->

            <!-- Preview assesment panel start -->

           <div class="card-content" runat="server" id ="assesmentPreview" visible ="false">
                <div class="row">
                    <div class="col-md-1 text-center">
                        <label>Sr.No.</label>
                    </div>
                    <div class="col-md-4 text-center">
                        <label>Name of Activity</label>
                    </div>
                    <div class="col-md-7 text-center">
                        <label>Hours Spent</label><hr class="line" />
                        <div class="col-md-4 text-center">
                            <asp:Label runat="server">2013-14</asp:Label>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:Label runat="server">2014-15</asp:Label>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:Label runat="server">2015-16</asp:Label>
                        </div>
                    </div>
                    <div class="col-lg-1 text-center">
                        <label>API Score</label>
                    </div> 
                </div><hr class="line" />

                <div class="row">
                    <div class="col-md-1">
                        <label>a.</label>
                    </div>
                    <div class="col-md-11">
                        <label>Student related co-curricular, extension and filed based activities</label>
                    </div>
                </div><hr class="line" />

                <div class="row">
                    <div class="col-md-1 text-center">
                        <asp:Label runat="server">(i)</asp:Label>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="row1" runat="server">Descipline related co-curricular activities (e.g.field work, study visit, student seminar
                            and other events, carrier counseling etc.)
                        </asp:Label>
                    </div>
                    <div class="col-md-7 text-center">
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="coaRow1co11" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="coaRow1co12" CssClass="form-control"  runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="coaRow1co13" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                     <div class="col-lg-1 text-center">
                        <asp:Label runat="server" ID="apiScoreCat1"></asp:Label>
                    </div> 
                </div><hr class="line" />

                <div class="row">
                    <div class="col-md-1 text-center">
                        <asp:Label runat="server">(ii)</asp:Label>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="row2" runat="server">Other co-curricular activities (Cultural, Sports, NSS, NCC etc.)
                        </asp:Label>
                    </div>
                    <div class="col-md-7 text-center">
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="coaRow2co11" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="coaRow2co12" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="coaRow2co13" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-1 text-center">
                        <asp:Label runat="server" ID="apiScoreCat2"></asp:Label>
                    </div>
                </div><hr class="line" />

                <div class="row">
                    <div class="col-md-1 text-center">
                        <asp:Label runat="server">(iii)</asp:Label>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="row3" runat="server">Extension and dissemination activities (public/popular lectures/talks/seminars etc.)
                        </asp:Label>
                    </div>
                    <div class="col-md-7 text-center">
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="coaRow3co11" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="coaRow3co12" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="coaRow3co13" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-1 text-center">
                        <asp:Label runat="server" ID="apiScoreCat3"></asp:Label>
                    </div> 
                </div><hr class="line" />

                <div class="row">
                    <div class="col-md-1">
                        <label>b.</label>
                    </div>
                    <div class="col-md-11">
                        <label>Contribution to corporate life and management of the department and institution 
                            through participation in academic and administrative committees and responsibilities.
                        </label>
                    </div>
                </div><hr class="line" />

                <div class="row">
                    <div class="col-md-1 text-center">
                        <asp:Label runat="server">(i)</asp:Label>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="row4" runat="server">Administrative responsibility (including as Dean/Principal/Chairperson/Convenor/ Teacher-in-charge/
                            similar other duties that require regular office hours for its discharge.
                        </asp:Label>
                    </div>
                    <div class="col-md-7 text-center">
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="coaRow4co11" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="coaRow4co12" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="coaRow4co13" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-1 text-center">
                        <asp:Label runat="server" ID="apiScoreCat4"></asp:Label>
                    </div> 
                </div><hr class="line" />

                <div class="row">
                    <div class="col-md-1 text-center">
                        <asp:Label runat="server">(ii)</asp:Label>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="row5" runat="server">Participation in Board of Studies, Academic and Administrative Committees.
                        </asp:Label>
                    </div>
                    <div class="col-md-7 text-center">
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="coaRow5co11" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="coaRow5co12" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="coaRow5co13" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-1 text-center">
                        <asp:Label runat="server" ID="apiScoreCat5"></asp:Label>
                    </div> 
                </div><hr class="line" />

                <div class="row">
                    <div class="col-md-1">
                        <label>c.</label>
                    </div>
                    <div class="col-md-11">
                        <label>Professional Development activities
                        </label>
                    </div>
                </div><hr class="line" />

                <div class="row">
                    <div class="col-md-1 text-center">
                        <asp:Label runat="server">(i)</asp:Label>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="row6" runat="server">Participation in seminars, conferences, short term training courses, 
                            industrial experience, talks, lectures in refresher/ faculty development courses, membership of associations,
                            dissemination and general articles and any other contribution.
                        </asp:Label>
                    </div>
                    <div class="col-md-7 text-center">
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="coaRow6co11" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="coaRow6co12" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-4 text-center">
                            <asp:TextBox ID="coaRow6co13" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-1 text-center">
                        <asp:Label runat="server" ID="apiScoreCat6"></asp:Label>
                    </div> 
                </div><hr class="line" />  
            </div> <!-- Preview assesment Panel Ends -->


        </div>   <!-- Panel Ends -->

        <div class="card">
            <div class="card-header" data-background-color="blue">
                Research Papers Published in Journals
            </div>
			<div class ="card-content" runat ="server" id ="researchPapers">
                <div class="shadow-box">
                    <div class="row">  
                        <div class="col-md-12 ">  
                            <div class="table-responsive">   
                                <asp:GridView ID="gridResearchPhd" runat="server" AutoGenerateColumns="False" 
                                    CssClass="table table-bordered table-striped table-hover" ShowFooter="True" 
                                    GridLines="None" OnRowDeleting="gridResearchPhd_RowDeleting">
                                    <Columns>
                                    <asp:BoundField DataField="RowNumber" HeaderText="#" ReadOnly="True" />
                                        
                                    <asp:TemplateField HeaderText="Title of the Paper">
                                        <ItemTemplate>
                                            <asp:TextBox ID="phdPaperTitle" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                        
                                    <asp:TemplateField HeaderText="Journal Name & ISSN No.">
                                        <ItemTemplate>
                                            <asp:TextBox ID="phdJournalName" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Status as Author">
                                        <ItemTemplate>
                                            <asp:DropDownList runat="server"  class="form-control" ID="phDauthorStatus">
                                                <asp:ListItem Value="0">Select</asp:ListItem>
                                                <asp:ListItem Value="1">Single</asp:ListItem>
                                                <asp:ListItem Value="2">First/Corresponding/Supervisor/Mentor</asp:ListItem>
                                                <asp:ListItem Value="3">Rest of the Author</asp:ListItem>
                                            </asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Impact Factor" runat="server">
                                        <ItemTemplate>
                                            <asp:DropDownList  class="form-control" ID="phdImpactFactor" runat="server" >
                                                <asp:ListItem Value="0">Select</asp:ListItem>
                                                <asp:ListItem Value="1">10 or above</asp:ListItem>
                                                <asp:ListItem Value="2">Between 5 to 10</asp:ListItem>
                                                <asp:ListItem Value="3">Between 2 to 5</asp:ListItem>
                                                <asp:ListItem Value="4">Between 1 to 2</asp:ListItem>
                                                <asp:ListItem Value="5">Less than 1</asp:ListItem>
                                                <asp:ListItem Value="6">Without Impact Factor</asp:ListItem>
                                                <asp:ListItem Value="7">Other reputed journals</asp:ListItem>
                                            </asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Year">
                                        <ItemTemplate>
                                            <asp:DropDownList runat="server"  class="form-control" ID="phdPubYear">
                                                    <asp:ListItem>Select</asp:ListItem>
                                                    <asp:ListItem>2017</asp:ListItem>
                                                    <asp:ListItem>2016</asp:ListItem>
                                                    <asp:ListItem>2015</asp:ListItem>
                                                    <asp:ListItem>2014</asp:ListItem>
                                                    <asp:ListItem>2013</asp:ListItem>
                                                    <asp:ListItem>2012</asp:ListItem>
                                                    <asp:ListItem>2011</asp:ListItem>
                                                    <asp:ListItem>2010</asp:ListItem>
                                                    <asp:ListItem>2009</asp:ListItem>
                                                    <asp:ListItem>2008</asp:ListItem>
                                                    <asp:ListItem>2007</asp:ListItem>
                                                    <asp:ListItem>2006</asp:ListItem>
                                                    <asp:ListItem>2005</asp:ListItem>
                                                    <asp:ListItem>2004</asp:ListItem>
                                                    <asp:ListItem>2003</asp:ListItem>
                                                    <asp:ListItem>2002</asp:ListItem>
                                                    <asp:ListItem>2001</asp:ListItem>
                                                    <asp:ListItem>2000</asp:ListItem>
                                                    <asp:ListItem>1999</asp:ListItem>
                                                    <asp:ListItem>1998</asp:ListItem>
                                                    <asp:ListItem>1997</asp:ListItem>
                                                    <asp:ListItem>1996</asp:ListItem>
                                                    <asp:ListItem>1995</asp:ListItem>
                                                    <asp:ListItem>1994</asp:ListItem>
                                                    <asp:ListItem>1993</asp:ListItem>
                                                    <asp:ListItem>1992</asp:ListItem>
                                                    <asp:ListItem>1991</asp:ListItem>
                                                    <asp:ListItem>1990</asp:ListItem>
                                                    <asp:ListItem>1989</asp:ListItem>
                                                    <asp:ListItem>1988</asp:ListItem>
                                                    <asp:ListItem>1987</asp:ListItem>
                                                    <asp:ListItem>1986</asp:ListItem>
                                                    <asp:ListItem>1985</asp:ListItem>
                                                    <asp:ListItem>1984</asp:ListItem>
                                                    <asp:ListItem>1983</asp:ListItem>
                                                    <asp:ListItem>1982</asp:ListItem>
                                                    <asp:ListItem>1981</asp:ListItem>
                                                    <asp:ListItem>1980</asp:ListItem>
                                                    <asp:ListItem>1979</asp:ListItem>
                                                    <asp:ListItem>1978</asp:ListItem>
                                                    <asp:ListItem>1977</asp:ListItem>
                                                    <asp:ListItem>1976</asp:ListItem>
                                                    <asp:ListItem>1975</asp:ListItem>
                                                    <asp:ListItem>1974</asp:ListItem>
                                                    <asp:ListItem>1973</asp:ListItem>
                                                    <asp:ListItem>1972</asp:ListItem>
                                                    <asp:ListItem>1971</asp:ListItem>
                                                    <asp:ListItem>1970</asp:ListItem>
                                                    <asp:ListItem>1969</asp:ListItem>
                                                    <asp:ListItem>1968</asp:ListItem>
                                                    <asp:ListItem>1967</asp:ListItem>
                                                    <asp:ListItem>1966</asp:ListItem>
                                                    <asp:ListItem>1965</asp:ListItem>
                                                    <asp:ListItem>1964</asp:ListItem>
                                                    <asp:ListItem>1963</asp:ListItem>
                                                    <asp:ListItem>1962</asp:ListItem>
                                                    <asp:ListItem>1961</asp:ListItem>
                                                    <asp:ListItem>1960</asp:ListItem>
                                                    <asp:ListItem>1959</asp:ListItem>
                                                    <asp:ListItem>1958</asp:ListItem>
                                                    <asp:ListItem>1957</asp:ListItem>
                                                    <asp:ListItem>1956</asp:ListItem>
                                                    <asp:ListItem>1955</asp:ListItem>
                                                    <asp:ListItem>1954</asp:ListItem>
                                                    <asp:ListItem>1953</asp:ListItem>
                                                    <asp:ListItem>1952</asp:ListItem>
                                                    <asp:ListItem>1951</asp:ListItem>
                                                    <asp:ListItem>1950</asp:ListItem>
                                                    <asp:ListItem>1949</asp:ListItem>
                                                    <asp:ListItem>1948</asp:ListItem>
                                                    <asp:ListItem>1947</asp:ListItem>
                                                    <asp:ListItem>1946</asp:ListItem>
                                                    <asp:ListItem>1945</asp:ListItem>
                                                    <asp:ListItem>1944</asp:ListItem>
                                                    <asp:ListItem>1943</asp:ListItem>
                                                    <asp:ListItem>1942</asp:ListItem>
                                                    <asp:ListItem>1941</asp:ListItem>
                                                    <asp:ListItem>1940</asp:ListItem>
                                                    <asp:ListItem>1939</asp:ListItem>
                                                    <asp:ListItem>1938</asp:ListItem>
                                                    <asp:ListItem>1937</asp:ListItem>
                                                    <asp:ListItem>1936</asp:ListItem>
                                                    <asp:ListItem>1935</asp:ListItem>
                                                    <asp:ListItem>1934</asp:ListItem>
                                                    <asp:ListItem>1933</asp:ListItem>
                                                    <asp:ListItem>1932</asp:ListItem>
                                                    <asp:ListItem>1931</asp:ListItem>
                                                    <asp:ListItem>1930</asp:ListItem>
                                                </asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    

                                    <asp:TemplateField HeaderText="Volume & Page No.">
                                        <ItemTemplate>
                                            <asp:TextBox ID="phdVolNo" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>                                       
                                    
                                        <FooterStyle HorizontalAlign="Right" />
                                        <FooterTemplate>
                                            <asp:Button ID="ButtonAddphdResearch" runat="server" Text="Add New Row" CssClass="btn btn-warning" 
                                                OnClick="ButtonAddphdResearch_Click"/>  <!--   -->
                                        </FooterTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="API Score">
                                        <ItemTemplate>
                                            <asp:Label ID="phdApiScore" runat="server"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField> 
                                    <asp:CommandField ShowDeleteButton="True" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>   <!-- Panel Body Ends -->

         <div class ="card-content" runat ="server" id ="researchPapersPreview" visible ="false" >
             <asp:Label ID="phdApiScore" runat="server"></asp:Label>
             <asp:GridView CssClass="table table-bordered table-striped table-hover" ID="researchPapersGrid" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                <asp:TemplateField HeaderText="TitleOfPaper">
                    <ItemTemplate>
                        <asp:Label ID="lbl_TitleOfPaper" runat="server" Text='<%#Eval("TitleOfPaper") %>'></asp:Label>
                    </ItemTemplate>
                    
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JournalName">
                    <ItemTemplate>
                        <asp:Label ID="lbl_JournalName" runat="server" Text='<%#Eval("JournalName") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox class="input-sm" ID="txt_JournalName" runat="server" Text='<%#Eval("JournalName") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="StatusAsAuthor">
                    <ItemTemplate>
                        <asp:Label ID="lbl_StatusAsAuthor" runat="server" Text='<%#Eval("StatusAsAuthor") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox class="input-sm" ID="txt_StatusAsAuthor" runat="server" Text='<%#Eval("StatusAsAuthor") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ImpactFactor">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ImpactFactor" runat="server" Text='<%#Eval("ImpactFactor") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox class="input-sm" ID="txt_ImpactFactor" runat="server" Text='<%#Eval("ImpactFactor") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Year">
                    <ItemTemplate>
                        <asp:Label ID="lbl_Year" runat="server" Text='<%#Eval("Year") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox class="input-sm" ID="txt_Year" runat="server" Text='<%#Eval("Year") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="VolumeNumber">
                    <ItemTemplate>
                        <asp:Label ID="lbl_VolumeNumber" runat="server" Text='<%#Eval("VolumeNumber") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox class="input-sm" ID="txt_VolumeNumber" runat="server" Text='<%#Eval("VolumeNumber") %>'></asp:TextBox>
                    </EditItemTemplate>
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

        </div>   <!-- Panel Ends -->


        <div class="card">
            <div class="card-header" data-background-color="orange">
                Research Publications: Books/Chapter in Books
            </div>
			<div class ="card-content" runat ="server" id ="publications">
                <strong>Please leave this table blank if you don't any publications. <br /></strong><br />
                <div class="shadow-box">
                    <div class="row">  
                        <div class="col-md-12 ">  
                            <div class="table-responsive">   
                                <asp:GridView ID="gridResearchBook" runat="server" AutoGenerateColumns="False" 
                                    CssClass="table table-bordered table-striped table-hover" ShowFooter="True" 
                                    GridLines="None" OnRowDeleting="gridResearchBook_RowDeleting">
                                    <Columns>
                                    <asp:BoundField DataField="RowNumber" HeaderText="#" ReadOnly="True" />

                                    <asp:TemplateField HeaderText="Publication Type">
                                        <ItemTemplate>
                                            <asp:DropDownList runat="server"  class="form-control" ID="bookPubType">
                                                <asp:ListItem value="">Select</asp:ListItem>
                                                <asp:ListItem value="1">Text or Reference books published by International Publisher</asp:ListItem>
                                                <asp:ListItem value="2">Subject books by National level Publishers OR State/Central Govt. Publications</asp:ListItem>
                                                <asp:ListItem value="3">Subject Books by Other local Publishers</asp:ListItem>
                                                <asp:ListItem value="4">Chapter in Books published by International Publisher</asp:ListItem>
                                                <asp:ListItem value="5">Chapter in Books published by National level Publisher</asp:ListItem>
                                            </asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Title">
                                        <ItemTemplate>
                                            <asp:TextBox ID="bookPaperTitle" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="ISSN/ ISBN No.">
                                        <ItemTemplate>
                                            <asp:TextBox ID="bookIsbnNo" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Status as Author">
                                        <ItemTemplate>
                                            <asp:DropDownList runat="server"  class="form-control" ID="bookAuthorStatus">
                                                <asp:ListItem Value="0">Select</asp:ListItem>
                                                <asp:ListItem Value="1">Single</asp:ListItem>
                                                <asp:ListItem Value="2">First/Corresponding/Supervisor/Mentor</asp:ListItem>
                                                <asp:ListItem Value="3">Rest of the Author</asp:ListItem>
                                            </asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Year">
                                        <ItemTemplate>
                                            <asp:DropDownList runat="server"  class="form-control" ID="bookPubYear">
                                                    <asp:ListItem>Select</asp:ListItem>
                                                    <asp:ListItem>2017</asp:ListItem>
                                                    <asp:ListItem>2016</asp:ListItem>
                                                    <asp:ListItem>2015</asp:ListItem>
                                                    <asp:ListItem>2014</asp:ListItem>
                                                    <asp:ListItem>2013</asp:ListItem>
                                                    <asp:ListItem>2012</asp:ListItem>
                                                    <asp:ListItem>2011</asp:ListItem>
                                                    <asp:ListItem>2010</asp:ListItem>
                                                    <asp:ListItem>2009</asp:ListItem>
                                                    <asp:ListItem>2008</asp:ListItem>
                                                    <asp:ListItem>2007</asp:ListItem>
                                                    <asp:ListItem>2006</asp:ListItem>
                                                    <asp:ListItem>2005</asp:ListItem>
                                                    <asp:ListItem>2004</asp:ListItem>
                                                    <asp:ListItem>2003</asp:ListItem>
                                                    <asp:ListItem>2002</asp:ListItem>
                                                    <asp:ListItem>2001</asp:ListItem>
                                                    <asp:ListItem>2000</asp:ListItem>
                                                    <asp:ListItem>1999</asp:ListItem>
                                                    <asp:ListItem>1998</asp:ListItem>
                                                    <asp:ListItem>1997</asp:ListItem>
                                                    <asp:ListItem>1996</asp:ListItem>
                                                    <asp:ListItem>1995</asp:ListItem>
                                                    <asp:ListItem>1994</asp:ListItem>
                                                    <asp:ListItem>1993</asp:ListItem>
                                                    <asp:ListItem>1992</asp:ListItem>
                                                    <asp:ListItem>1991</asp:ListItem>
                                                    <asp:ListItem>1990</asp:ListItem>
                                                    <asp:ListItem>1989</asp:ListItem>
                                                    <asp:ListItem>1988</asp:ListItem>
                                                    <asp:ListItem>1987</asp:ListItem>
                                                    <asp:ListItem>1986</asp:ListItem>
                                                    <asp:ListItem>1985</asp:ListItem>
                                                    <asp:ListItem>1984</asp:ListItem>
                                                    <asp:ListItem>1983</asp:ListItem>
                                                    <asp:ListItem>1982</asp:ListItem>
                                                    <asp:ListItem>1981</asp:ListItem>
                                                    <asp:ListItem>1980</asp:ListItem>
                                                    <asp:ListItem>1979</asp:ListItem>
                                                    <asp:ListItem>1978</asp:ListItem>
                                                    <asp:ListItem>1977</asp:ListItem>
                                                    <asp:ListItem>1976</asp:ListItem>
                                                    <asp:ListItem>1975</asp:ListItem>
                                                    <asp:ListItem>1974</asp:ListItem>
                                                    <asp:ListItem>1973</asp:ListItem>
                                                    <asp:ListItem>1972</asp:ListItem>
                                                    <asp:ListItem>1971</asp:ListItem>
                                                    <asp:ListItem>1970</asp:ListItem>
                                                    <asp:ListItem>1969</asp:ListItem>
                                                    <asp:ListItem>1968</asp:ListItem>
                                                    <asp:ListItem>1967</asp:ListItem>
                                                    <asp:ListItem>1966</asp:ListItem>
                                                    <asp:ListItem>1965</asp:ListItem>
                                                    <asp:ListItem>1964</asp:ListItem>
                                                    <asp:ListItem>1963</asp:ListItem>
                                                    <asp:ListItem>1962</asp:ListItem>
                                                    <asp:ListItem>1961</asp:ListItem>
                                                    <asp:ListItem>1960</asp:ListItem>
                                                    <asp:ListItem>1959</asp:ListItem>
                                                    <asp:ListItem>1958</asp:ListItem>
                                                    <asp:ListItem>1957</asp:ListItem>
                                                    <asp:ListItem>1956</asp:ListItem>
                                                    <asp:ListItem>1955</asp:ListItem>
                                                    <asp:ListItem>1954</asp:ListItem>
                                                    <asp:ListItem>1953</asp:ListItem>
                                                    <asp:ListItem>1952</asp:ListItem>
                                                    <asp:ListItem>1951</asp:ListItem>
                                                    <asp:ListItem>1950</asp:ListItem>
                                                    <asp:ListItem>1949</asp:ListItem>
                                                    <asp:ListItem>1948</asp:ListItem>
                                                    <asp:ListItem>1947</asp:ListItem>
                                                    <asp:ListItem>1946</asp:ListItem>
                                                    <asp:ListItem>1945</asp:ListItem>
                                                    <asp:ListItem>1944</asp:ListItem>
                                                    <asp:ListItem>1943</asp:ListItem>
                                                    <asp:ListItem>1942</asp:ListItem>
                                                    <asp:ListItem>1941</asp:ListItem>
                                                    <asp:ListItem>1940</asp:ListItem>
                                                    <asp:ListItem>1939</asp:ListItem>
                                                    <asp:ListItem>1938</asp:ListItem>
                                                    <asp:ListItem>1937</asp:ListItem>
                                                    <asp:ListItem>1936</asp:ListItem>
                                                    <asp:ListItem>1935</asp:ListItem>
                                                    <asp:ListItem>1934</asp:ListItem>
                                                    <asp:ListItem>1933</asp:ListItem>
                                                    <asp:ListItem>1932</asp:ListItem>
                                                    <asp:ListItem>1931</asp:ListItem>
                                                    <asp:ListItem>1930</asp:ListItem>
                                                </asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Publisher's Name & Address">
                                        <ItemTemplate>
                                            <asp:TextBox ID="bookPubName" runat="server" MaxLength="60" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                        <FooterStyle HorizontalAlign="Right" />
                                        <FooterTemplate>
                                            <asp:Button ID="ButtonAddbookResearch" runat="server" Text="Add New Row" CssClass="btn btn-warning" 
                                                OnClick="ButtonAddbookResearch_Click"/>  <!--   -->
                                        </FooterTemplate>
                                    </asp:TemplateField>	
                                                                            			
									<%-- <asp:TemplateField HeaderText="API Score">
                                        <ItemTemplate>
                                            <asp:Label ID="bookApi" runat="server">
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField> --%>
                                    <asp:CommandField ShowDeleteButton="True" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>   <!-- Panel Body Ends -->

                <div class ="card-content" runat ="server" id ="publicationPreview" visible ="false">
                    <asp:Label ID="bookApiScore" runat="server"></asp:Label>
             <asp:GridView CssClass="table table-bordered table-striped table-hover" ID="publicationGrid" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating">
             <Columns>
                <asp:TemplateField HeaderText="Title">
                    <ItemTemplate>
                        <asp:Label ID="lbl_Title" runat="server" Text='<%#Eval("Title") %>'></asp:Label>
                    </ItemTemplate>
                    
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PublicationType">
                    <ItemTemplate>
                        <asp:Label ID="lbl_PublicationType" runat="server" Text='<%#Eval("PublicationType") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox class="input-sm" ID="txt_PublicationType" runat="server" Text='<%#Eval("PublicationType") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ISBN_No">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ISBN_No" runat="server" Text='<%#Eval("ISBN_No") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox class="input-sm" ID="txt_ISBN_No" runat="server" Text='<%#Eval("ISBN_No") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="StatusAsAuthor">
                    <ItemTemplate>
                        <asp:Label ID="lbl_StatusAsAuthor" runat="server" Text='<%#Eval("StatusAsAuthor") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox class="input-sm" ID="txt_StatusAsAuthor" runat="server" Text='<%#Eval("StatusAsAuthor") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Year">
                    <ItemTemplate>
                        <asp:Label ID="lbl_Year" runat="server" Text='<%#Eval("Year") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox class="input-sm" ID="txt_Year" runat="server" Text='<%#Eval("Year") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Publisher">
                    <ItemTemplate>
                        <asp:Label ID="lbl_Publisher" runat="server" Text='<%#Eval("Publisher") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox class="input-sm" ID="txt_Publisher" runat="server" Text='<%#Eval("Publisher") %>'></asp:TextBox>
                    </EditItemTemplate>
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

        </div>   <!-- Panel Ends -->

        <div class="card">
            <div class="card-header" data-background-color="purple">
                Research Projects
            </div>
			<div class ="card-content" runat="server" id="researchProjects">
                <strong>Please leave this table blank if you don't any Research Projects. <br /></strong><br />
                <div class="shadow-box">
                    <div class="row">  
                        <div class="col-md-12 ">  
                            <div class="table-responsive">   
                                <asp:GridView ID="gridResearchProject" runat="server" AutoGenerateColumns="False" 
                                    CssClass="table table-bordered table-striped table-hover" ShowFooter="True" 
                                    GridLines="None" OnRowDeleting="gridResearchProject_RowDeleting">
                                    <Columns>
                                    <asp:BoundField DataField="RowNumber" HeaderText="#" ReadOnly="True" />

                                    <asp:TemplateField HeaderText="Project Type">
                                        <ItemTemplate>
                                            <asp:DropDownList runat="server"  class="form-control" ID="researchProjectType">
                                                <asp:ListItem value="0">Select</asp:ListItem>
                                                <asp:ListItem Value="1">Sponsored Projects: Grants above RS. 5 Lakhs for Non-Science Disciplines</asp:ListItem>
                                                <asp:ListItem Value="2">Sponsored Projects: Grants above RS. 30 Lakhs for Science Disciplines</asp:ListItem>
                                                <asp:ListItem Value="3">Sponsored Projects: Grant RS. 3-5 Lakhs for Non-Science Disciplines</asp:ListItem>
                                                <asp:ListItem Value="4">Sponsored Projects: Grant RS. 5-30 Lakhs for Science Disciplines</asp:ListItem>
                                                <asp:ListItem Value="5">Sponsored Projects: Grant RS. 1-3 Lakhs for Non-Science Disciplines</asp:ListItem>
                                                <asp:ListItem Value="6">Sponsored Projects: Grant RS. 1-5 Lakhs for Science Disciplines</asp:ListItem>
                                                <asp:ListItem Value="7">Consultancy Projects: Amount Mobilished with minimum of RS. 2 Lakhs for Non-Science Disciplines</asp:ListItem>
                                                <asp:ListItem Value="8">Consultancy Projects: Amount Mobilished with minimum of RS. 10 Lakhs for Science Disciplines</asp:ListItem>
                                                <asp:ListItem Value="9">Project Outcome: Patent/Technology transfer/Product/Process (Science) At International level</asp:ListItem>
                                                <asp:ListItem Value="10">Project Outcome: Patent/Technology transfer/Product/Process (Science) At National level</asp:ListItem>
                                                <asp:ListItem Value="11">Project Outcome: Document of Government Bodies (Non-Science) At International level</asp:ListItem>
                                                <asp:ListItem Value="12">Project Outcome: Document of Government Bodies (Non-Science) At National level</asp:ListItem>
                                            </asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Title">
                                        <ItemTemplate>
                                            <asp:TextBox ID="researchProjectTitle" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Participation as">
                                        <ItemTemplate>
                                            <asp:TextBox ID="researchProjectStatus" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Period">
                                        <ItemTemplate>
                                            <asp:TextBox ID="researchProjectPeriod" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Sponsor's Details">
                                        <ItemTemplate>
                                            <asp:TextBox ID="researchProjectSponsor" runat="server" MaxLength="60" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                        <FooterStyle HorizontalAlign="Right" />
                                        <FooterTemplate>
                                            <asp:Button ID="ButtonAddResearchProject" runat="server" Text="Add New Row" CssClass="btn btn-warning" 
                                                OnClick="ButtonAddResearchProject_Click"/>  <!--   -->
                                        </FooterTemplate>
                                    </asp:TemplateField>	
                                                                            			
									<%-- <asp:TemplateField HeaderText="API Score">
                                        <ItemTemplate>
                                            <asp:Label ID="researchProjectApi" runat="server">
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField> --%>
                                    <asp:CommandField ShowDeleteButton="True" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>   <!-- Panel Body Ends -->

       <div class ="card-content" runat ="server" id ="researchProjectPreview" visible ="false">
           <asp:Label runat="server" ID="projectApiScore"></asp:Label>
             <asp:GridView CssClass="table table-bordered table-striped table-hover" ID="researchProjectGrid" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView3_RowCancelingEdit" OnRowEditing="GridView3_RowEditing" OnRowUpdating="GridView3_RowUpdating">
             <Columns>
                <asp:TemplateField HeaderText="ProjectType">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ProjectType" runat="server" Text='<%#Eval("ProjectType") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Title">
                    <ItemTemplate>
                        <asp:Label ID="lbl_Title" runat="server" Text='<%#Eval("Title") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ParticipationAs">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ParticipationAs" runat="server" Text='<%#Eval("ParticipationAs") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox class="input-sm" ID="txt_ParticipationAs" runat="server" Text='<%#Eval("ParticipationAs") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Duration">
                    <ItemTemplate>
                        <asp:Label ID="lbl_Duration" runat="server" Text='<%#Eval("Duration") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox class="input-sm" ID="txt_Duration" runat="server" Text='<%#Eval("Duration") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SponsorsDetail">
                    <ItemTemplate>
                        <asp:Label ID="lbl_SponsorsDetail" runat="server" Text='<%#Eval("SponsorsDetail") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox class="input-sm" ID="txt_SponsorsDetail" runat="server" Text='<%#Eval("SponsorsDetail") %>'></asp:TextBox>
                    </EditItemTemplate>
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
        </div>   <!-- Panel Ends -->

        <div class="card">
            <div class="card-header" data-background-color="red">Research Guidance</div>
            <div class="card-content table-responsive" runat="server" id="researchGuidance">
                <div class="row">
                    <div class="form-group col-md-1">
                        <label></label>
                    </div>
                    <div class="form-group col-md-5">
                        <label>Guidance To</label>
                    </div>
                    <div class="form-group col-md-4">
                        <label>Number of Students</label>
                    </div>
                    <!--<div class="form-group col-lg-3">
                        <label>API Score</label>
                    </div> -->
                </div>

                <div class="row">
                    <div class="form-group col-md-1">
                        <asp:Label runat="server">(a)</asp:Label>
                    </div>
                    <div class="form-group col-md-5">
                        <asp:Label ID="mPhilA" runat="server">M.Phil (Degree Awarded Only)</asp:Label>
                    </div>
                    <div class="form-group col-md-4">
                        <asp:TextBox ID="resGuideMphil" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <!--<div class="form-group col-lg-3">
                        <asp:Label ID="ApiGuideMphil" runat="server"></asp:Label>
                    </div>-->
                </div>

                <div class="row">
                    <div class="form-group col-md-1">
                        <asp:Label runat="server">(b)</asp:Label>
                    </div>
                    <div class="form-group col-md-5">
                        <asp:Label ID="phdA" runat="server">Ph.D. (Degree Awarded Only)</asp:Label>
                    </div>
                    <div class="form-group col-md-4">
                        <asp:TextBox ID="resGuidePhdAward" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <!--<div class="form-group col-lg-3">
                        <asp:Label ID="ApiGuidePhdAward" runat="server"></asp:Label>
                    </div>-->
                </div>

                <div class="row">
                    <div class="form-group col-md-1">
                        <asp:Label runat="server">(c)</asp:Label>
                    </div>
                    <div class="form-group col-md-5">
                        <asp:Label ID="phdS" runat="server">Ph.D. (Thesis Submitted Only)</asp:Label>
                    </div>
                    <div class="form-group col-md-4">
                        <asp:TextBox ID="resGuidePhdSub" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <!-- <div class="form-group col-lg-3">
                        <asp:Label ID="ApiGuidePhdSub" runat="server"></asp:Label>
                    </div> -->
                </div>
        </div>  <!-- panel body ends -->
            <div class="card-content" runat="server" id="guidancePreview" visible ="false">
                <div class="row">
                    <div class="form-group col-md-1">
                        <label></label>
                    </div>
                    <div class="form-group col-md-5">
                        <label>Guidance To</label>
                    </div>
                    <div class="form-group col-md-4">
                        <label>Number of Students</label>
                    </div>
                    <div class="form-group col-lg-3">
                        <asp:label ID="researchGuidanceApi" runat="server">Total API : </asp:label>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-md-1">
                        <asp:Label runat="server">(a)</asp:Label>
                    </div>
                    <div class="form-group col-md-5">
                        <asp:Label ID="grow1" runat="server">M.Phil (Degree Awarded Only)</asp:Label>
                    </div>
                    <div class="form-group col-md-4">
                        <asp:TextBox ID="gtext1" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
            
                </div>

                <div class="row">
                    <div class="form-group col-md-1">
                        <asp:Label runat="server">(b)</asp:Label>
                    </div>
                    <div class="form-group col-md-5">
                        <asp:Label ID="grow2" runat="server">Ph.D. (Degree Awarded Only)</asp:Label>
                    </div>
                    <div class="form-group col-md-4">
                        <asp:TextBox ID="gtext2" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                
                </div>

                <div class="row">
                    <div class="form-group col-md-1">
                        <asp:Label runat="server">(c)</asp:Label>
                    </div>
                    <div class="form-group col-md-5">
                        <asp:Label ID="grow3" runat="server">Ph.D. (Thesis Submitted Only)</asp:Label>
                    </div>
                    <div class="form-group col-md-4">
                        <asp:TextBox ID="gtext3" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
        </div>
  </div> <!-- Panel Ends -->
        <div class="card">
            <div class="card-header" data-background-color="green">
                Fellowship, Awards and Invited Lectures delievered in Conferences/Seminars
            </div>
			<div class ="card-content"  runat="server" id ="fellowship">
                <div class="shadow-box">
                    <div class="row">  
                        <div class="col-md-12 ">  
                            <div class="table-responsive">   
                                <asp:GridView ID="gridFellowship" runat="server" AutoGenerateColumns="False" 
                                    CssClass="table table-bordered table-striped table-hover" ShowFooter="True" 
                                    GridLines="None" OnRowDeleting="gridFellowship_RowDeleting">
                                    <Columns>
                                    <asp:BoundField DataField="RowNumber" HeaderText="#" ReadOnly="True" />

                                    <asp:TemplateField HeaderText="Type">
                                        <ItemTemplate>
                                            <asp:DropDownList runat="server"  class="form-control" ID="fellowshipType">
                                                <asp:ListItem value="">Select</asp:ListItem>
                                                <asp:ListItem Value="1">Fellowship and Awards</asp:ListItem>
                                                <asp:ListItem Value="2">Invited Lectures/Papers delievered in Conferences/Seminars</asp:ListItem>
                                            </asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Title">
                                        <ItemTemplate>
                                            <asp:TextBox ID="fellowshipTitle" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Level">
                                        <ItemTemplate>
                                            <asp:DropDownList runat="server"  class="form-control" ID="fellowshipLevel">
                                                <asp:ListItem value="">Select</asp:ListItem>
                                                <asp:ListItem Value="1">International</asp:ListItem>
                                                <asp:ListItem Value="2">National</asp:ListItem>
                                                <asp:ListItem Value="3">State/University</asp:ListItem>
                                            </asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Participation As">
                                        <ItemTemplate>
                                            <asp:DropDownList runat="server"  class="form-control" ID="fellowshipPart">
                                                <asp:ListItem value="">Select</asp:ListItem>
                                                <asp:ListItem Value="1">Not Applicable</asp:ListItem>
                                                <asp:ListItem Value="2">Lecture</asp:ListItem>
                                                <asp:ListItem Value="3">Presentation</asp:ListItem>
                                            </asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Conference/Sponsor's Details">
                                        <ItemTemplate>
                                            <asp:TextBox ID="fellowshipSponsor" runat="server" MaxLength="80" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>	
                                                         
                                    <asp:TemplateField HeaderText="Year/Duration">
                                        <ItemTemplate>
                                            <asp:TextBox ID="fellowshipPeriod" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                        <FooterStyle HorizontalAlign="Right" />
                                        <FooterTemplate>
                                            <asp:Button ID="ButtonAddFellowship" runat="server" Text="Add New Row" CssClass="btn btn-warning" 
                                                OnClick="ButtonAddFellowship_Click"/>  <!--   -->
                                        </FooterTemplate>
                                    </asp:TemplateField>

									<%-- <asp:TemplateField HeaderText="API Score">
                                        <ItemTemplate>
                                            <asp:Label ID="fellowshipApi" runat="server">
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField> --%>
                                    <asp:CommandField ShowDeleteButton="True" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>   <!-- Panel Body Ends -->

         <div class ="card-content" runat ="server" id ="fellowshipPreview" visible ="false">
             <asp:Label ID="fellowshipApiScore" runat="server"></asp:label>
             <asp:GridView CssClass="table table-bordered table-striped table-hover" ID="fellowshipGrid" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView4_RowCancelingEdit" OnRowEditing="GridView4_RowEditing" OnRowUpdating="GridView4_RowUpdating">
                 <Columns>
                <asp:TemplateField HeaderText="Type">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ProjectType" runat="server" Text='<%#Eval("Type") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Title">
                    <ItemTemplate>
                        <asp:Label ID="lbl_Title" runat="server" Text='<%#Eval("Title") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Level">
                    <ItemTemplate>
                        <asp:Label ID="lbl_Level" runat="server" Text='<%#Eval("Level") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ParticipationAs">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ParticipationAs" runat="server" Text='<%#Eval("ParticipationAs") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox class="input-sm" ID="txt_ParticipationAs" runat="server" Text='<%#Eval("ParticipationAs") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SponsorsDetail">
                    <ItemTemplate>
                        <asp:Label ID="lbl_SponsorsDetail" runat="server" Text='<%#Eval("SponsorsDetail") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox class="input-sm" ID="txt_SponsorsDetail" runat="server" Text='<%#Eval("SponsorsDetail") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Duration">
                    <ItemTemplate>
                        <asp:Label ID="lbl_Duration" runat="server" Text='<%#Eval("Duration") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox class="input-sm" ID="txt_Duration" runat="server" Text='<%#Eval("Duration") %>'></asp:TextBox>
                    </EditItemTemplate>
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
   </div>   <!-- Panel Ends -->

 <div class="card">
            <div class="card-header" data-background-color="purple">
                Development of e-learning delivery process/material
            </div>
			<div class ="card-content" runat="server" id ="devEcontent">
                <div class="shadow-box">
                    <div class="row">  
                        <div class="col-md-12 ">  
                            <div class="table-responsive">   
                                <asp:GridView ID="gridElearn" runat="server" AutoGenerateColumns="False" 
                                    CssClass="table table-bordered table-striped table-hover" ShowFooter="True" 
                                    GridLines="None" OnRowDeleting="gridElearn_RowDeleting">
                                    <Columns>
                                    <asp:BoundField DataField="RowNumber" HeaderText="#" ReadOnly="True" />
                                        
                                    <asp:TemplateField HeaderText="Title of Module">
                                        <ItemTemplate>
                                            <asp:TextBox ID="eLearnTitle" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Details of Agency (including Web Add.)">
                                        <ItemTemplate>
                                            <asp:TextBox ID="eLearnDetailAgency" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Module meant for whom">
                                        <ItemTemplate>
                                            <asp:TextBox ID="eLearnModule" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Status as Author">
                                        <ItemTemplate>
                                            <asp:DropDownList runat="server"  class="form-control" ID="eLearnStatus">
                                                <asp:ListItem Value="0">Select</asp:ListItem>
                                                <asp:ListItem Value="1">Sole Author</asp:ListItem>
                                                <asp:ListItem Value="2">First</asp:ListItem>
                                                <asp:ListItem Value="3">Corresponding</asp:ListItem>
                                                <asp:ListItem Value="4">Co-author</asp:ListItem>
                                            </asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateField>	
                                                         
                                    <asp:TemplateField HeaderText="Year/Duration">
                                        <ItemTemplate>
                                            <asp:TextBox ID="eLearnPeriod" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                        <FooterStyle HorizontalAlign="Right" />
                                        <FooterTemplate>
                                            <asp:Button ID="ButtonAddElearn" runat="server" Text="Add New Row" CssClass="btn btn-warning" 
                                                OnClick="ButtonAddElearn_Click"/>  <!--   -->
                                        </FooterTemplate>
                                    </asp:TemplateField>

									<%-- <asp:TemplateField HeaderText="API Score">
                                        <ItemTemplate>
                                            <asp:Label ID="eLearnApi" runat="server">
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField> --%>
                                    <asp:CommandField ShowDeleteButton="True" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>   <!-- Panel Body Ends --
        </div>   <!-- Panel Ends -->
     
         <div class ="card-content" runat ="server" id ="econtentPreview" visible ="false">
             <asp:Label ID="elearnApiScore" runat="server"></asp:Label>
             <asp:GridView CssClass="table table-bordered table-striped table-hover" ID="econtentGrid" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView5_RowCancelingEdit" OnRowEditing="GridView5_RowEditing" OnRowUpdating="GridView5_RowUpdating">
                   <Columns>
                <asp:TemplateField HeaderText="TitleOfModule">
                    <ItemTemplate>
                        <asp:Label ID="lbl_TitleOfModule" runat="server" Text='<%#Eval("TitleOfModule") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="AgencyDetail">
                    <ItemTemplate>
                        <asp:Label ID="lbl_AgencyDetail" runat="server" Text='<%#Eval("AgencyDetail") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox class="input-sm" ID="txt_AgencyDetail" runat="server" Text='<%#Eval("AgencyDetail") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ForWhom">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ForWhom" runat="server" Text='<%#Eval("ForWhom") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox class="input-sm" ID="txt_ForWhom" runat="server" Text='<%#Eval("ForWhom") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="StatusAsAuthor">
                    <ItemTemplate>
                        <asp:Label ID="lbl_StatusAsAuthor" runat="server" Text='<%#Eval("StatusAsAuthor") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox class="input-sm" ID="txt_StatusAsAuthor" runat="server" Text='<%#Eval("StatusAsAuthor") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Duration">
                    <ItemTemplate>
                        <asp:Label ID="lbl_Duration" runat="server" Text='<%#Eval("Duration") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox class="input-sm" ID="txt_Duration" runat="server" Text='<%#Eval("Duration") %>'></asp:TextBox>
                    </EditItemTemplate>
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
</div>

        
        <div class="text-center" runat ="server" id="saveReasearchButtons">
             <asp:button type="button" ID="saveResearch" text="Save" class="btn btn-success" runat="server" OnClick="saveResearch_Click"></asp:button>
            <asp:button type="button" ID="cancelResearch" text="Cancel" class="btn btn-warning" runat="server"></asp:button>
        </div>

         <div class="text-center" runat ="server" id="saveReasearchButtonsPreview" visible ="false">
             <asp:button type="button" ID="proceed" text="Proceed" class="btn btn-success" runat="server" OnClick="proceed_Click"></asp:button>
        </div>
    </form>
</asp:Content>