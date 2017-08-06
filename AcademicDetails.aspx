<%@ Page Language="C#" MasterPageFile="~/FormsMasterPage.master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeFile="AcademicDetails.aspx.cs" Inherits="newForm" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!-- include datedropper css/js-->
    <link href="assets/css/datedropper.css" rel="stylesheet">
    <link href="assets/css/datedropper_style.css" rel="stylesheet">
    <script src="assets/js/datedropper.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form role="form" id="academicDetails" runat="server">
        <div class="row">
            <div class="col-md-12">
            <div class="card" visible="true" runat="server">
                <div class="card-header" data-background-color="blue">
                    <h4 class="title">Educational Qualifications</h4>
                    <p class="category">Help</p>
                </div>
        <div class="card-content table-responsive" ID="cardAcademicDetails_1" runat="server">   
            <asp:GridView ID="gridPDeg" runat="server" AutoGenerateColumns="False" 
                CssClass="table table-bordered table-hover" ShowFooter="True" 
                GridLines="None" OnRowDeleting="gridPDeg_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="RowNumber" ReadOnly="True" />

                    <asp:TemplateField HeaderText="Degree Type">
                        <ItemTemplate>
                            <asp:DropDownList runat="server" ID="pDegType" class="form-control" required="true">
                                <asp:ListItem Value="0" Selected="True">Select</asp:ListItem>
                                <asp:ListItem Value="1">Secondary or Equivalent</asp:ListItem>
                                <asp:ListItem Value="2">Senior Secondary of Equivalent</asp:ListItem>
                                <asp:ListItem Value="3">Bachelor's</asp:ListItem>
                                <asp:ListItem Value="4">Master's</asp:ListItem>
                                <asp:ListItem Value="5">Integrated</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Name of Degree">
                        <ItemTemplate>
                            <asp:TextBox ID="pDegName" runat="server" required="true" onkeypress="filterAlphabet(event)" MaxLength="50" CssClass="form-control">
                            </asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="University/ Board">
                        <ItemTemplate>
                            <asp:TextBox ID="pDegBoard" runat="server" required="true" onkeypress="filterAlphabet(event)" MaxLength="50" CssClass="form-control">
                            </asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Year">
                        <ItemTemplate>
                            <asp:DropDownList runat="server"  required="true" class="form-control" ID="pDegYear">
                                <asp:ListItem Selected="True">Select</asp:ListItem>
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

                    <asp:TemplateField HeaderText="Division/ Class">
                        <ItemTemplate>
                            <asp:TextBox ID="pDegDevision" runat="server" required="true" onkeypress="filterAlphaNumeric(event)" MaxLength="50" CssClass="form-control">
                            </asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Overall Percentage/ Grade">
                        <ItemTemplate>
                            <asp:TextBox ID="pDegGrade" runat="server" required="true" onkeypress="filterDigitsFloat(event)" MaxLength="50" CssClass="form-control">
                            </asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Subjects">
                        <ItemTemplate>
                            <asp:TextBox ID="pDegSubject" runat="server" required="true" onkeypress="filterAlphaNumericExt(event)" MaxLength="50" CssClass="form-control">
                            </asp:TextBox>
                        </ItemTemplate>
                        <FooterStyle HorizontalAlign="Right" />
                        <FooterTemplate>
                            <asp:Button ID="ButtonAddP" runat="server" Text="Add New Row" CssClass="btn btn-warning" 
                                OnClick="ButtonAddP_Click"/>  <!--   -->
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>

            
        </div>
        <div class="card-content table-responsive" ID="cardAcademicDetails_1_Preview" Visibility="false" runat="server">
            <asp:GridView CssClass="table table-bordered table-striped table-hover" ID="GridView1" runat="server"></asp:GridView>
	    </div>
    </div>
   </div>
 </div>

     <div class="row">
        <div class="col-md-12">
        <div class="card" visible="true" runat="server">
            <div class="card-header" data-background-color="blue">
                <h4 class="title">Personal Details</h4>
                <p class="category">Help</p>
            </div>
        <div class="card-content table-responsive" ID="cardAcademicDetails_2" runat="server">   
            <asp:GridView ID="gridPhdDeg" runat="server" AutoGenerateColumns="False" 
                CssClass="table table-bordered table-hover" ShowFooter="True" 
                GridLines="None" OnRowDeleting="gridPhdDeg_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="RowNumber" ReadOnly="True" />

                    <asp:TemplateField HeaderText="Name of Degree">
                        <ItemTemplate>
                            <asp:TextBox ID="phdDegName" runat="server" required="true" onkeypress="filterAlphabet(event)" MaxLength="50" CssClass="form-control">
                            </asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="University/ Institute">
                        <ItemTemplate>
                            <asp:TextBox ID="phdDegUni" runat="server" required="true" onkeypress="filterAlphabet(event)" MaxLength="50" CssClass="form-control">
                            </asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Date of Registration">
                        <ItemTemplate>
                            <asp:TextBox ID="phdDegDor" CssClass="form-control datePicker" runat="server" tabindex="8" 
                                ClientIDMode="Static" data-min-year="1930" data-format="S F, Y"  data-theme="my-style"  
                                data-large-mode="true"  data-large-default="true">
                            </asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Date of Submission">
                        <ItemTemplate>
                            <asp:TextBox ID="phdDegDos" CssClass="form-control datePicker" runat="server" tabindex="8" 
                                ClientIDMode="Static" data-min-year="1930" data-format="S F, Y"  data-theme="my-style"  
                                data-large-mode="true"  data-large-default="true">
                            </asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Registration No.">
                        <ItemTemplate>
                            <asp:TextBox ID="pDegRegdNo" runat="server" required="true" onkeypress="filterAlphaNumeric(event)" MaxLength="50" CssClass="form-control">
                            </asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Thesis/Dissertation Title">
                        <ItemTemplate>
                            <asp:TextBox ID="phdDegTitle" runat="server" required="true" onkeypress="filterAlphaNumericExt(event)" MaxLength="100" CssClass="form-control">
                            </asp:TextBox>
                        </ItemTemplate>
                        <FooterStyle HorizontalAlign="Right" />
                        <FooterTemplate>
                            <asp:Button ID="ButtonAddPhd" runat="server" Text="Add New Row" CssClass="btn btn-warning" 
                                OnClick="ButtonAddPhd_Click"/>  <!--   -->
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </div>
        <div class="card-content table-responsive" ID="cardAcademicDetails_2_Preview" Visibility="false" runat="server">
            <asp:GridView CssClass="table table-bordered table-striped table-hover" ID="GridView2" runat="server"></asp:GridView>
	    </div>
     </div>
    </div>
  </div>


    <div class="row">
        <div class="col-md-12">
        <div class="card" visible="true" runat="server">
            <div class="card-header" data-background-color="blue">
                <h4 class="title">Net/JRF/Equivalent Examination Details</h4>
                <p class="category">Help</p>
            </div>        
            <div class="card-content table-responsive" ID="cardAcademicDetails_3" runat="server">
                <div class="row">
                <div class="form-group col-lg-2">
                    <label>Whether Qualified Net/JRF/Equivalent Examination ?</label>
                    <asp:DropDownList ID="netJrflist" required="true" runat="server" CssClass="form-control" onchange="TriggerChange(this);">
                        <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                        <asp:ListItem Value="2">No</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group col-lg-2" id="divYear" style="display:none;" >
                    <label>Year of Qualification</label><br /><br />
                    <asp:TextBox ID="netYear" name="netYear" required="true" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="form-group col-lg-2" id="divExamQual" style="display:none;">
                    <label>Select the Examination Qualified</label><br />
                    <asp:DropDownList ID="examQualified" runat="server" required="true" CssClass="form-control">
                        <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                        <asp:ListItem Value="1">UGC</asp:ListItem>
                        <asp:ListItem Value="2">CSIR</asp:ListItem>
                        <asp:ListItem Value="3">ICAR</asp:ListItem>
                        <asp:ListItem Value="4">Others</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group col-lg-2" id="divSubCsir" style="display:none;">
                    <label>Subject</label><br /><br />
                    <asp:DropDownList ID="subUGC" runat="server" required="true" CssClass="form-control">
                        <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                        <asp:ListItem Value="1">Chemical Sciences</asp:ListItem>
                        <asp:ListItem Value="2">Earth Sciences</asp:ListItem>
                        <asp:ListItem Value="3">Mathematical Sciences</asp:ListItem>
                        <asp:ListItem Value="4">Physical Sciences</asp:ListItem>
                        <asp:ListItem Value="5">Life Sciences</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group col-lg-2" id="divSubUgc" style="display:none;">
                    <label>Subject</label><br /><br />
                    <asp:DropDownList ID="subCSIR" runat="server" required="true" CssClass="form-control">
                        <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                        <asp:ListItem Value="1">Economics</asp:ListItem>
                        <asp:ListItem Value="2">Political Science</asp:ListItem>
                        <asp:ListItem Value="3">Philosophy</asp:ListItem>
                        <asp:ListItem Value="4">Psychology</asp:ListItem>
                        <asp:ListItem Value="5">Sociology</asp:ListItem>
                        <asp:ListItem Value="6">History</asp:ListItem>
                        <asp:ListItem Value="7">Anthropology</asp:ListItem>
                        <asp:ListItem Value="8">Commerce</asp:ListItem>
                        <asp:ListItem Value="9">Education</asp:ListItem>
                        <asp:ListItem Value="10">Social Work</asp:ListItem>
                        <asp:ListItem Value="11">Defence and Strategic Studies</asp:ListItem>
                        <asp:ListItem Value="12">Home Science</asp:ListItem>
                        <asp:ListItem Value="14">Public Administration</asp:ListItem>
                        <asp:ListItem Value="15">Population Studies</asp:ListItem>
                        <asp:ListItem Value="16">Hindustani Music (Vocal/Instrumental)</asp:ListItem>
                        <asp:ListItem Value="17">Management</asp:ListItem>
                        <asp:ListItem Value="18">Maithili</asp:ListItem>
                        <asp:ListItem Value="19">Bengali</asp:ListItem>
                        <asp:ListItem Value="20">Hindi</asp:ListItem>
                        <asp:ListItem Value="21">Kannada</asp:ListItem>
                        <asp:ListItem Value="22">Malayalam</asp:ListItem>
                        <asp:ListItem Value="23">Odia</asp:ListItem>
                        <asp:ListItem Value="24">Punjabi</asp:ListItem>
                        <asp:ListItem Value="25">Sanskrit</asp:ListItem>
                        <asp:ListItem Value="26">Tamil</asp:ListItem>
                        <asp:ListItem Value="27">Telugu</asp:ListItem>
                        <asp:ListItem Value="28">Urdu</asp:ListItem>
                        <asp:ListItem Value="29">Arabie</asp:ListItem>
                        <asp:ListItem Value="30">English</asp:ListItem>
                        <asp:ListItem Value="31">Linguistics</asp:ListItem>
                        <asp:ListItem Value="32">Chinese</asp:ListItem>
                        <asp:ListItem Value="33">Dogri</asp:ListItem>
                        <asp:ListItem Value="34">Nepali</asp:ListItem>
                        <asp:ListItem Value="35">Manipuri</asp:ListItem>
                        <asp:ListItem Value="36">Assamese</asp:ListItem>
                        <asp:ListItem Value="37">Gujarati</asp:ListItem>
                        <asp:ListItem Value="38">Marathi</asp:ListItem>
                        <asp:ListItem Value="39">French</asp:ListItem>
                        <asp:ListItem Value="40">Spanish</asp:ListItem>
                        <asp:ListItem Value="41">Russian</asp:ListItem>
                        <asp:ListItem Value="42">Persian</asp:ListItem>
                        <asp:ListItem Value="43">Rajasthani</asp:ListItem>
                        <asp:ListItem Value="44">German</asp:ListItem>
                        <asp:ListItem Value="45">Japanese</asp:ListItem>
                        <asp:ListItem Value="46">Adult Education/ Continuing Education/ Andragogy / Non Formal Education </asp:ListItem>
                        <asp:ListItem Value="47">Physical Education</asp:ListItem>
                        <asp:ListItem Value="49">Arab Culture and Islamic Studies</asp:ListItem>
                        <asp:ListItem Value="50">Indian Culture</asp:ListItem>
                        <asp:ListItem Value="55">Labour Welfare/Personnel Management/Industrial Relations/Labour and Social Welfare/Human Resource Management</asp:ListItem>
                        <asp:ListItem Value="58">Law</asp:ListItem>
                        <asp:ListItem Value="59">Library and Information Science</asp:ListItem>
                        <asp:ListItem Value="60">Buddhist, Jaina, Gandhian and Peace Studies</asp:ListItem>
                        <asp:ListItem Value="62">Comparative Study of Religions</asp:ListItem>
                        <asp:ListItem Value="63">Mass Communication and Journalism</asp:ListItem>
                        <asp:ListItem Value="65">Dance</asp:ListItem>
                        <asp:ListItem Value="66">Museology & Conservation</asp:ListItem>
                        <asp:ListItem Value="67">Archaeology</asp:ListItem>
                        <asp:ListItem Value="68">Criminology</asp:ListItem>
                        <asp:ListItem Value="70">Tribal and Regional Language/Literature</asp:ListItem>
                        <asp:ListItem Value="71">Folk Literature</asp:ListItem>
                        <asp:ListItem Value="72">Comparative Literature</asp:ListItem>
                        <asp:ListItem Value="73">Sanskrit Traditional Subjects</asp:ListItem>
                        <asp:ListItem Value="74">Women Studies</asp:ListItem>
                        <asp:ListItem Value="79">Visual Art</asp:ListItem>
                        <asp:ListItem Value="80">Geography</asp:ListItem>
                        <asp:ListItem Value="81">Social Medicine & Community Health</asp:ListItem>
                        <asp:ListItem Value="82">Forensic Science</asp:ListItem>
                        <asp:ListItem Value="83">Pali</asp:ListItem>
                        <asp:ListItem Value="84">Kashmiri</asp:ListItem>
                        <asp:ListItem Value="85">Konkani</asp:ListItem>
                        <asp:ListItem Value="87">Computer Science and Applications</asp:ListItem>
                        <asp:ListItem Value="88">Electronic Science</asp:ListItem>
                        <asp:ListItem Value="89">Environmental Sciences</asp:ListItem>
                        <asp:ListItem Value="90">International and Area Studies</asp:ListItem>
                        <asp:ListItem Value="91">Prakrit</asp:ListItem>
                        <asp:ListItem Value="92">Human Rights and Duties</asp:ListItem>
                        <asp:ListItem Value="93">Tourism Administration and Management</asp:ListItem>
                        <asp:ListItem Value="94">Bodo</asp:ListItem>
                        <asp:ListItem Value="95">Santali</asp:ListItem>
                        <asp:ListItem Value="96">Karnatik Music (Vocal Instrument, Percussion)</asp:ListItem>
                        <asp:ListItem Value="97">Rabindra  Sangeet</asp:ListItem>
                        <asp:ListItem Value="98">Percussion Instruments</asp:ListItem>
                        <asp:ListItem Value="99">Drama/Theatre</asp:ListItem>
                        <asp:ListItem Value="100">Yoga Therapy</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group col-lg-2" id="divSubIcar" style="display:none;">
                    <label>Subject</label><br /><br />
                    <asp:DropDownList ID="subICAR" runat="server" required="true" CssClass="form-control">
                        <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                        <asp:ListItem Value="1">Agricultural Biotechnology</asp:ListItem>
                        <asp:ListItem Value="2">Agricultural Entomology</asp:ListItem>
                        <asp:ListItem Value="3">Agricultural Microbiology</asp:ListItem>
                        <asp:ListItem Value="4">Economic Botany & Plant Genetics Resources</asp:ListItem>
                        <asp:ListItem Value="5">Genetics & Plant Breeding</asp:ListItem>
                        <asp:ListItem Value="6">Nematology</asp:ListItem>
                        <asp:ListItem Value="7">Plant Biochemistry</asp:ListItem>
                        <asp:ListItem Value="8">Plant Pathology</asp:ListItem>
                        <asp:ListItem Value="9">Plant Physiology</asp:ListItem>
                        <asp:ListItem Value="10">Seed Science & Technology</asp:ListItem>
                        <asp:ListItem Value="11">Floriculture & Landscaping</asp:ListItem>
                        <asp:ListItem Value="12">Fruit Science</asp:ListItem>
                        <asp:ListItem Value="13">Spices, Plantation & Medicinal & Aromatic Plants</asp:ListItem>
                        <asp:ListItem Value="14">Vegetable Science</asp:ListItem>
                        <asp:ListItem Value="15">Animal Biochemistry</asp:ListItem>
                        <asp:ListItem Value="16">Animal Biotechnology</asp:ListItem>
                        <asp:ListItem Value="17">Animal Genetics & Breeding</asp:ListItem>
                        <asp:ListItem Value="18">Animal Nutrition</asp:ListItem>
                        <asp:ListItem Value="19">Animal Physiology</asp:ListItem>
                        <asp:ListItem Value="20">Animal Reproduction & Gynaecology</asp:ListItem>
                        <asp:ListItem Value="21">Dairy Chemistry</asp:ListItem>
                        <asp:ListItem Value="22">Dairy Microbiology</asp:ListItem>
                        <asp:ListItem Value="23">Dairy Technology</asp:ListItem>
                        <asp:ListItem Value="24">Livestock Product Technology</asp:ListItem>
                        <asp:ListItem Value="25">Livestock Production Management</asp:ListItem>
                        <asp:ListItem Value="26">Poultry Science</asp:ListItem>
                        <asp:ListItem Value="27">Veterinary Medicine</asp:ListItem>
                        <asp:ListItem Value="28">Veterinary Microbiology</asp:ListItem>
                        <asp:ListItem Value="29">Veterinary Parasitology</asp:ListItem>
                        <asp:ListItem Value="30">Veterinary Pathology</asp:ListItem>
                        <asp:ListItem Value="31">Veterinary Pharmacology</asp:ListItem>
                        <asp:ListItem Value="32">Veterinary Public Health</asp:ListItem>
                        <asp:ListItem Value="33">Veterinary Surgery</asp:ListItem>
                        <asp:ListItem Value="34">Aquaculture</asp:ListItem>
                        <asp:ListItem Value="35">Fisheries Resource Management</asp:ListItem>
                        <asp:ListItem Value="36">Fish Process Technology</asp:ListItem>
                        <asp:ListItem Value="37">Fish Nutrition</asp:ListItem>
                        <asp:ListItem Value="38">Fish Health</asp:ListItem>
                        <asp:ListItem Value="39">Fish Genetics & Breeding</asp:ListItem>
                        <asp:ListItem Value="40">Agricultural Chemicals</asp:ListItem>
                        <asp:ListItem Value="41">Agricultural Meteorology</asp:ListItem>
                        <asp:ListItem Value="42">Agroforestry</asp:ListItem>
                        <asp:ListItem Value="43">Agronomy</asp:ListItem>
                        <asp:ListItem Value="44">Environmental Sciences</asp:ListItem>
                        <asp:ListItem Value="45">Soil Sciences</asp:ListItem>
                        <asp:ListItem Value="46">Agricultural Business Management</asp:ListItem>
                        <asp:ListItem Value="47">Agricultural Economics</asp:ListItem>
                        <asp:ListItem Value="48">Agricultural Extension</asp:ListItem>
                        <asp:ListItem Value="49">Agricultural Statistics</asp:ListItem>
                        <asp:ListItem Value="50">Home Science</asp:ListItem>
                        <asp:ListItem Value="51">Farm Machinery and Power</asp:ListItem>
                        <asp:ListItem Value="52">Agricultural Structures & Environmental Management</asp:ListItem>
                        <asp:ListItem Value="53">Land and Water Management Engineering</asp:ListItem>
                        <asp:ListItem Value="54">Agricultural Process Engineering</asp:ListItem>
                        <asp:ListItem Value="55">Food Technology</asp:ListItem>
                        <asp:ListItem Value="56">Veterinary Anatomy</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group col-lg-2" id="divNetJrf" style="display:none;">
                    <label>Select NET/JRF</label><br /><br />
                    <asp:DropDownList ID="selNetJrf" runat="server" required="true" CssClass="form-control">
                        <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                        <asp:ListItem Value="1">NET</asp:ListItem>
                        <asp:ListItem Value="2">JRF</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group col-lg-2" id="divOtherExam" style="display:none;">
                    <label>Name of Examination</label><br /><br />
                    <asp:TextBox ID="nameOtherExam" runat="server" required="true" onkeypress="filterAlphaNumeric(event)" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group col-lg-2" id="divOtherSub" style="display:none;">
                    <label>Subject</label><br /><br />
                    <asp:TextBox ID="subOtherExam" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group col-lg-2" id="divRollNo" style="display:none;">
                    <label>Certificate No./Roll No.</label><br /><br />
                    <asp:TextBox ID="rollNo" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                </div>
                </div>
            

            <div class="card-content table-responsive col-md-12" ID="cardAcademicDetails_3_Preview" visible="false" runat="server">
                <div class="row">
                <div class="form-group col-lg-3 col-md-4">
                    <asp:label runat="server">Whether Qualified Net/JRF/Equivalent Examination ?</asp:label><br>
                    <strong><asp:Label ID="netQualified" runat="server"></asp:Label></strong>
                </div>
                <div class="form-group col-lg-2 col-md-2">
                    <asp:label runat="server">Year of Qualification</asp:label><br>
                    <strong><asp:Label ID="netQualifiedYear" runat="server"></asp:Label></strong>
                </div>

                <div class="form-group col-lg-2 col-md-4">
                    <asp:label runat="server">Examination Qualified</asp:label><br>
                    <strong><asp:Label ID="examQualifiedName" runat="server"></asp:Label></strong>

                </div>
                <div class="row">
                    <div class="form-group col-lg-2 col-md-6">
                        <asp:label runat="server">Subject</asp:label><br>
                        <strong><asp:Label ID="examSubject" required="true" onkeypress="filterAlphaNumericExt(event)" runat="server"></asp:Label></strong>

                    </div>
                    <div class="form-group col-lg-2 col-md-6">
                        <asp:label runat="server">Certificate No./Roll No.</asp:label><br>
                        <strong><asp:Label ID="examRollNo" required="true" onkeypress="filterAlphaNumeric(event)" runat="server"></asp:Label></strong>

                    </div>
                    </div>
                </div>
                </div>
            </div>

            </div>
        </div>
        
    <div class="form-group text-center">
        <asp:Button CssClass="btn btn-success btn-lg" ID="btnSaveAcademicDetail" runat="server" Text="Save and Proceed" OnClick="btnSaveAcademicDetail_Click"/>
    </div>

    <script>
        $(".datePicker").dateDropper();
    </script>
        
    <script>
        $(function () {
            $('[id*="netJrflist"]').on('change', function () {
                var val = this.value,
                    $div1 = $('[id*="divYear"]');
                $div2 = $('[id*="divExamQual"]');
                $div3 = $('[id*="divSubUgc"]');
                $div4 = $('[id*="divSubCsir"]');
                $div5 = $('[id*="divSubIcar"]');
                $div6 = $('[id*="divOtherExam"]');
                $div7 = $('[id*="divOtherSub"]');
                $div8 = $('[id*="divNetJrf"]');
                $div9 = $('[id*="divRollNo"]');

                if (val === "1") {
                    // Show text box
                    $div1.show();
                    $div2.show();
                } else {
                    // Hide text box
                    $div1.hide();
                    $div2.hide();
                    $div3.hide();
                    $div4.hide();
                    $div5.hide();
                    $div6.hide();
                    $div7.hide();
                    $div8.hide();
                    $div9.hide();
                }
            });
        });
    </script>

    <script>
        $(function () {
            $('[id*="examQualified"]').on('change', function () {
                var val1 = this.value,
                    $div3 = $('[id*="divSubUgc"]');
                $div4 = $('[id*="divSubCsir"]');
                $div5 = $('[id*="divSubIcar"]');
                $div6 = $('[id*="divOtherExam"]');
                $div7 = $('[id*="divOtherSub"]');
                $div8 = $('[id*="divNetJrf"]');
                $div9 = $('[id*="divRollNo"]');


                if (val1 === "1") {
                    // Show text box
                    $div3.show();
                    $div4.hide();
                    $div5.hide();
                    $div6.hide();
                    $div7.hide();
                    $div8.show();
                    $div9.show();

                }
                else if (val1 === "2") {
                    // Hide text box
                    $div3.hide();
                    $div4.show();
                    $div5.hide();
                    $div6.hide();
                    $div7.hide();
                    $div8.show();
                    $div9.show();
                }
                else if (val1 === "3") {
                    $div3.hide();
                    $div4.hide();
                    $div5.show();
                    $div6.hide();
                    $div7.hide();
                    $div8.show();
                    $div9.show();
                }
                else if (val1 === "4") {
                    $div3.hide();
                    $div4.hide();
                    $div5.hide();
                    $div6.show();
                    $div7.show();
                    $div8.hide();
                    $div9.show();
                }
                else {
                    $div3.hide();
                    $div4.hide();
                    $div5.hide();
                    $div6.hide();
                    $div7.hide();
                    $div8.hide();
                    $div9.hide();
                }
            });
        });
    </script>

    </form>
    <script>
        $("#AcademicDetails").addClass("active");
    </script>
    <script>
        $("#academicDetails").validate({
        });
    </script>
</asp:Content>