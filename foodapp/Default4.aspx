<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default4.aspx.vb" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"></asp:TextBox>
    </p>
    <p>
        Confirm Password&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="pp" runat="server" Text="Label"></asp:Label>
    </p>
</asp:Content>

