<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p class="style4">
        Login Page</p>
    <p class="style4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Username&nbsp;
        <asp:TextBox ID="lg1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="lg1" ErrorMessage="Username cannot be null" 
            SetFocusOnError="True"></asp:RequiredFieldValidator>
    </p>
    <p class="style4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Password
        <asp:TextBox ID="lg2" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;
    </p>
<p class="style4">
    <asp:Button ID="ot" runat="server" Text="Generate OTP" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="ot2" runat="server" Visible="False"></asp:TextBox>
    &nbsp;
    <asp:Button ID="b1" runat="server" Text="Refresh" Visible="False" />
    &nbsp;&nbsp;
    <asp:Timer ID="Timer1" runat="server" Interval="20000">
    </asp:Timer>
&nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    </p>
<p class="style4">
&nbsp;<asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
&nbsp;
    <asp:TextBox ID="ot3" runat="server" Visible="False"></asp:TextBox>
    <asp:RequiredFieldValidator ID="v1" runat="server" ControlToValidate="ot3" 
        ErrorMessage="Enter OTP" SetFocusOnError="True" Visible="False">Enter OTP</asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;
    </p>
    <p class="style4">
        <asp:Button ID="lg3" runat="server" Text="Submit" Visible="False" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="lg4" runat="server" Text="Reset" Visible="False" />
&nbsp;
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
    </p>
    <p class="style4">
        &nbsp;</p>
</asp:Content>

