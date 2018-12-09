<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default3.aspx.vb" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        Hello
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        Confirm your order Details
    </p>
    <p>
        Order Date
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;</p>
    <p>
        Payment Mode
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        Amount
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        Shipping Address
        <asp:TextBox ID="tb1" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

