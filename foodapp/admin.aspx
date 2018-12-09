<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="admin.aspx.vb" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        You are logged in as Admin</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        You can view some important information here</p>
    <p>
        No of visitors for today&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    </p>
    <p>
        Orders for today</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="o_id" DataSourceID="SqlDataSource1" EnableModelValidation="True">
            <Columns>
                <asp:BoundField DataField="o_id" HeaderText="o_id" ReadOnly="True" SortExpression="o_id" />
                <asp:BoundField DataField="o_date" HeaderText="o_date" SortExpression="o_date" />
                <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="uname" />
                <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                <asp:BoundField DataField="paymentmode" HeaderText="paymentmode" SortExpression="paymentmode" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vr46ConnectionString4 %>" SelectCommand="SELECT * FROM [TBLOrder]"></asp:SqlDataSource>
    </p>
</asp:Content>

