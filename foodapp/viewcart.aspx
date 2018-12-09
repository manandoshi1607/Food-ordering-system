<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="viewcart.aspx.vb" Inherits="viewcart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="foodid" HeaderText="foodid" 
                SortExpression="foodid" />
            <asp:BoundField DataField="catid" HeaderText="catid" SortExpression="catid" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="quantity" HeaderText="quantity" 
                SortExpression="quantity" />
        </Columns>
    </asp:GridView>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    Total&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    Payment Options<br />
    <asp:RadioButtonList ID="r1" runat="server" RepeatDirection="Horizontal">
        <asp:ListItem Selected="True" Value="COD">Cash On Delivery(COD)</asp:ListItem>
        <asp:ListItem Value="NB">Net Banking</asp:ListItem>
        <asp:ListItem Value="CP">Card Payment</asp:ListItem>
    </asp:RadioButtonList>
    <asp:Button ID="Button1" runat="server" style="height: 26px" Text="Payment" />
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:vr46ConnectionString3 %>" 
        SelectCommand="SELECT [foodid], [catid], [price], [quantity] FROM [Cart] WHERE ([uname] LIKE '%' + @uname + '%')">
        <SelectParameters>
            <asp:SessionParameter Name="uname" SessionField="uname" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 


</asp:Content>


