<%@ Page Language="C#" MasterPageFile="~/FormsMasterPage.master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeFile="Research.aspx.cs" Inherits="Research" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form role="form" id="research" runat="server" class="col-mg-12">
        <div class="panel panel-primary">
            <div class="panel-heading customPanelHeading">
                Research Papers Published from/based on your M.Phil./Ph.D. Work
            </div>
			<div class ="panel-body">
                <strong>Please leave this table blank if you don't have research paper. <br /></strong><br />
                <div class="shadow-box">
                    <div class="row">  
                        <div class="col-md-12 ">  
                            <div class="table-responsive">   
                                <asp:GridView ID="gridResearchPhd" runat="server" AutoGenerateColumns="False" 
                                    CssClass="table table-bordered table-striped table-hover" ShowFooter="True" 
                                    GridLines="None" OnRowDeleting="gridResearchPhd_RowDeleting">
                                    <Columns>
                                    <asp:BoundField DataField="RowNumber" HeaderText="#" ReadOnly="True" />

                                    <asp:TemplateField HeaderText="Publication Type">
                                        <ItemTemplate>
                                            <asp:TextBox ID="phdPubType" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Title of the Paper">
                                        <ItemTemplate>
                                            <asp:TextBox ID="phdPaperTitle" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Journal Name">
                                        <ItemTemplate>
                                            <asp:TextBox ID="phdJournalName" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Imapact Factor">
                                        <ItemTemplate>
                                            <asp:TextBox ID="phdImpactFactor" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
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

                                    <asp:TemplateField HeaderText="Vol. No.">
                                        <ItemTemplate>
                                            <asp:TextBox ID="phdVolNo" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Page No.">
                                        <ItemTemplate>
                                            <asp:TextBox ID="phdPageNo" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="ISSN/ ISBN No.">
                                        <ItemTemplate>
                                            <asp:TextBox ID="phdIsbnNo" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Refereed">
                                        <ItemTemplate>
                                            <asp:DropDownList runat="server"  class="form-control" ID="phdRefreed">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Reference No.">
                                        <ItemTemplate>
                                            <asp:TextBox ID="phdReferenceNo" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Author">
                                        <ItemTemplate>
                                            <asp:TextBox ID="phdAuthor" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                        <FooterStyle HorizontalAlign="Right" />
                                        <FooterTemplate>
                                            <asp:Button ID="ButtonAdd" runat="server" Text="Add New Row" CssClass="btn btn-warning" 
                                                OnClick="ButtonAddphdResearch_Click"/>  <!--   -->
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

        <div class="panel panel-primary">
            <div class="panel-heading">
                Other Research Papers Published
            </div>
			<div class ="panel-body">
                <strong>Please leave this table blank if you don't have research paper. <br /></strong><br />
                <div class="shadow-box">
                    <div class="row">  
                        <div class="col-md-12 ">  
                            <div class="table-responsive">   
                                <asp:GridView ID="gridResearchOther" runat="server" AutoGenerateColumns="False" 
                                    CssClass="table table-bordered table-striped table-hover" ShowFooter="True" 
                                    GridLines="None" OnRowDeleting="gridResearchOther_RowDeleting">
                                    <Columns>
                                    <asp:BoundField DataField="RowNumber" HeaderText="#" ReadOnly="True" />

                                    <asp:TemplateField HeaderText="Publication Type">
                                        <ItemTemplate>
                                            <asp:TextBox ID="otherPubType" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Title of the Paper">
                                        <ItemTemplate>
                                            <asp:TextBox ID="otherPaperTitle" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Journal Name">
                                        <ItemTemplate>
                                            <asp:TextBox ID="otherJournalName" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Imapact Factor">
                                        <ItemTemplate>
                                            <asp:TextBox ID="otherImpactFactor" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Year">
                                        <ItemTemplate>
                                            <asp:DropDownList runat="server"  class="form-control" ID="otherPubYear">
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

                                    <asp:TemplateField HeaderText="Vol. No.">
                                        <ItemTemplate>
                                            <asp:TextBox ID="otherVolNo" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Page No.">
                                        <ItemTemplate>
                                            <asp:TextBox ID="otherPageNo" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="ISSN/ ISBN No.">
                                        <ItemTemplate>
                                            <asp:TextBox ID="otherIsbnNo" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Refereed">
                                        <ItemTemplate>
                                            <asp:DropDownList runat="server"  class="form-control" ID="otherRefreed">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Reference No.">
                                        <ItemTemplate>
                                            <asp:TextBox ID="otherReferenceNo" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Author">
                                        <ItemTemplate>
                                            <asp:TextBox ID="otherAuthor" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                        <FooterStyle HorizontalAlign="Right" />
                                        <FooterTemplate>
                                            <asp:Button ID="ButtonAdd" runat="server" Text="Add New Row" CssClass="btn btn-warning" 
                                                OnClick="ButtonAddotherResearch_Click"/>  <!--   -->
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

        <div class="panel panel-primary">
            <div class="panel-heading">
                Publications Other than Journal Articles (books, chapters in books) from/based on your M.Phil./Ph.D. Work
            </div>
			<div class ="panel-body">
                <strong>Please leave this table blank if you don't have research publications. <br /></strong><br />
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
                                                <asp:ListItem value="1">Book Authored</asp:ListItem>
                                                <asp:ListItem value="2">Book Edited</asp:ListItem>
                                                <asp:ListItem value="3">Chapter/s In Book</asp:ListItem>
                                                <asp:ListItem value="4">Book Translated and Published</asp:ListItem>
                                                <asp:ListItem value="9">Cassets/CD /DVD (For Music Faculty only)</asp:ListItem>
                                                <asp:ListItem value="10">Tracks in cassettes/CD/DVD (For Music Faculty only)</asp:ListItem>
                                                <asp:ListItem value="11">Music Concerts (International- performanse under ICCR/MoEA. GOI.) (For Music Faculty only)</asp:ListItem>
                                                <asp:ListItem value="12">Music Concerts (National - Concert at AIR/DD/TV Channels/ Registered Org./Govt./Semi Govt. Bodies) (For Music Faculty only)</asp:ListItem>
                                                <asp:ListItem value="13">Approval/Selection by Music Audition Board of Prasar Bharati - GOI.(AIR/DD/Prasar Bharti) (For Music Faculty only)</asp:ListItem>
                                                <asp:ListItem value="14">Approval/Selection by Music Audition Board of Prasar Bharati - GOI. (ICCR Empaneled)(For Music Faculty only)</asp:ListItem>
                                                <asp:ListItem value="15">Conference proceedings as full length papers, etc. in Book</asp:ListItem>
                                            </asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Title">
                                        <ItemTemplate>
                                            <asp:TextBox ID="bookPaperTitle" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Imapact Factor">
                                        <ItemTemplate>
                                            <asp:TextBox ID="bookImpactFactor" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
									
									<asp:TemplateField HeaderText="ISSN/ ISBN No.">
                                        <ItemTemplate>
                                            <asp:TextBox ID="bookIsbnNo" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
									
									<asp:TemplateField HeaderText="Author/Co-Author">
                                        <ItemTemplate>
                                            <asp:TextBox ID="bookAuthor" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
									</asp:TemplateField>
									
									<asp:TemplateField HeaderText="Publisher's Name, City, Country">
                                        <ItemTemplate>
                                            <asp:TextBox ID="bookPubName" runat="server" MaxLength="60" CssClass="form-control">
                                            </asp:TextBox>
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

                                    <asp:TemplateField HeaderText="Level">
                                        <ItemTemplate>
                                            <asp:DropDownList runat="server"  class="form-control" ID="bookLevel">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>International</asp:ListItem>
                                                <asp:ListItem>National</asp:ListItem>
                                                <asp:ListItem>Other Local Publisher</asp:ListItem>
                                            </asp:DropDownList>
                                        </ItemTemplate>
										
                                        <FooterStyle HorizontalAlign="Right" />
                                        <FooterTemplate>
                                            <asp:Button ID="ButtonAdd" runat="server" Text="Add New Row" CssClass="btn btn-warning" 
                                                OnClick="ButtonAddbookResearch_Click"/>  <!--   -->
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

        <div class="panel panel-primary">
            <div class="panel-heading">
                Publications Other than Journal Articles (books, chapters in books) (In Related Areas Only).
            </div>
			<div class ="panel-body">
                <strong>Please leave this table blank if you don't have research publications. <br /></strong><br />
                <div class="shadow-box">
                    <div class="row">  
                        <div class="col-md-12 ">  
                            <div class="table-responsive">   
                                <asp:GridView ID="gridResearchOtherJournal" runat="server" AutoGenerateColumns="False" 
                                    CssClass="table table-bordered table-striped table-hover" ShowFooter="True" 
                                    GridLines="None" OnRowDeleting="gridResearchOtherJournal_RowDeleting">
                                    <Columns>
                                    <asp:BoundField DataField="RowNumber" HeaderText="#" ReadOnly="True" />

                                    <asp:TemplateField HeaderText="Publication Type">
                                        <ItemTemplate>
                                            <asp:DropDownList runat="server"  class="form-control" ID="otherJournalPubType">
                                                <asp:ListItem value="">Select</asp:ListItem>
                                                <asp:ListItem value="1">OtherJournal Authored</asp:ListItem>
                                                <asp:ListItem value="2">OtherJournal Edited</asp:ListItem>
                                                <asp:ListItem value="3">Chapter/s In OtherJournal</asp:ListItem>
                                                <asp:ListItem value="4">OtherJournal Translated and Published</asp:ListItem>
                                                <asp:ListItem value="9">Cassets/CD /DVD (For Music Faculty only)</asp:ListItem>
                                                <asp:ListItem value="10">Tracks in cassettes/CD/DVD (For Music Faculty only)</asp:ListItem>
                                                <asp:ListItem value="11">Music Concerts (International- performanse under ICCR/MoEA. GOI.) (For Music Faculty only)</asp:ListItem>
                                                <asp:ListItem value="12">Music Concerts (National - Concert at AIR/DD/TV Channels/ Registered Org./Govt./Semi Govt. Bodies) (For Music Faculty only)</asp:ListItem>
                                                <asp:ListItem value="13">Approval/Selection by Music Audition Board of Prasar Bharati - GOI.(AIR/DD/Prasar Bharti) (For Music Faculty only)</asp:ListItem>
                                                <asp:ListItem value="14">Approval/Selection by Music Audition Board of Prasar Bharati - GOI. (ICCR Empaneled)(For Music Faculty only)</asp:ListItem>
                                                <asp:ListItem value="15">Conference proceedings as full length papers, etc. in OtherJournal</asp:ListItem>
                                            </asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Title">
                                        <ItemTemplate>
                                            <asp:TextBox ID="otherJournalPaperTitle" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Imapact Factor">
                                        <ItemTemplate>
                                            <asp:TextBox ID="otherJournalImpactFactor" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
									
									<asp:TemplateField HeaderText="ISSN/ ISBN No.">
                                        <ItemTemplate>
                                            <asp:TextBox ID="otherJournalIsbnNo" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
									
									<asp:TemplateField HeaderText="Author/Co-Author">
                                        <ItemTemplate>
                                            <asp:TextBox ID="otherJournalAuthor" runat="server" MaxLength="50" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
									</asp:TemplateField>
									
									<asp:TemplateField HeaderText="Publisher's Name, City, Country">
                                        <ItemTemplate>
                                            <asp:TextBox ID="otherJournalPubName" runat="server" MaxLength="60" CssClass="form-control">
                                            </asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Year">
                                        <ItemTemplate>
                                            <asp:DropDownList runat="server"  class="form-control" ID="otherJournalPubYear">
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

                                    <asp:TemplateField HeaderText="Level">
                                        <ItemTemplate>
                                            <asp:DropDownList runat="server"  class="form-control" ID="otherJournalLevel">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>International</asp:ListItem>
                                                <asp:ListItem>National</asp:ListItem>
                                                <asp:ListItem>Other Local Publisher</asp:ListItem>
                                            </asp:DropDownList>
                                        </ItemTemplate>
										
                                        <FooterStyle HorizontalAlign="Right" />
                                        <FooterTemplate>
                                            <asp:Button ID="ButtonAdd" runat="server" Text="Add New Row" CssClass="btn btn-warning" 
                                                OnClick="ButtonAddotherJournalResearch_Click"/>  <!--   -->
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
        </div><!-- Panel Ends -->
        
        <div class="text-center">
            <asp:button type="button" ID="saveResearch" text="Save" class="btn btn-success" runat="server"></asp:button>
            <asp:button type="button" ID="cancelResearch" text="Cancel" class="btn btn-warning" runat="server"></asp:button>
        </div>
    </form>
    <script>
        $("#Research").addClass("active");
    </script>
</asp:Content>