<%@ Page Title="" Language="C#" MasterPageFile="~/FormsMasterPage.master" AutoEventWireup="true" CodeFile="GridView_Test.aspx.cs" Inherits="GridView_Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataSourceID="SqlDataSource1"
    DataKeyNames="CustomerId" OnRowDataBound="OnRowDataBound" EmptyDataText="No records has been added.">
    <Columns>
        <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-Width="150" />
        <asp:BoundField DataField="Country" HeaderText="Country" ItemStyle-Width="150" />
        <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true"
            ItemStyle-Width="100" />
    </Columns>
</asp:GridView>
<table border="1" style="border-collapse: collapse">
    <tr>
        <td style="width: 150px">
            Name:<br />
            <asp:TextBox ID="txtName" runat="server" Width="140" />
        </td>
        <td style="width: 150px">
            Country:<br />
            <asp:TextBox ID="txtCountry" runat="server" Width="140" />
        </td>
        <td style="width: 100px">
            <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Insert" />
        </td>
    </tr>
</table>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>"
    SelectCommand="SELECT CustomerId, Name, Country FROM Customers"
    InsertCommand="INSERT INTO Customers VALUES (@Name, @Country)"
    UpdateCommand="UPDATE Customers SET Name = @Name, Country = @Country WHERE CustomerId = @CustomerId"
    DeleteCommand="DELETE FROM Customers WHERE CustomerId = @CustomerId">
    <InsertParameters>
        <asp:ControlParameter Name="Name" ControlID="txtName" Type="String" />
        <asp:ControlParameter Name="Country" ControlID="txtCountry" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="CustomerId" Type="Int32" />
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Country" Type="String" />
    </UpdateParameters>
    <DeleteParameters>
        <asp:Parameter Name="CustomerId" Type="Int32" />
    </DeleteParameters>
</asp:SqlDataSource>--%>
</asp:Content>

