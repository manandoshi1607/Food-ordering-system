<%@ Page Title="" Language="VB" EnableViewState="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="register.aspx.vb" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">


   Register yourself</p>


</asp:Content>






<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">

   
    

    <p>
    
  
        Full name &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
<asp:TextBox ID="regt" runat="server"></asp:TextBox>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

</p>
    <p>
    
  
<br />
        User name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="fnt" runat="server" 
            Height="16px" Width="107px"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="fnt" ErrorMessage="RequiredFieldValidator" 
            SetFocusOnError="True"></asp:RequiredFieldValidator>

&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>

&nbsp;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

</p>
    <p>
    
  
<br />
Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="at" runat="server" TextMode="MultiLine"></asp:TextBox>

</p>
    <p>
    
  
<br />
Phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="pht" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="pht" ErrorMessage="RequiredFieldValidator" 
            SetFocusOnError="True"></asp:RequiredFieldValidator>

</p>
    <p>
    
  
<br />
D.O.B&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="dd0" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:DropDownList ID="dd1" runat="server" Height="27px" 
            style="height: 22px; width: 53px" Width="97px">
            <asp:ListItem Value="1">Jan</asp:ListItem>
            <asp:ListItem Value="2">Feb</asp:ListItem>
            <asp:ListItem Value="3">Mar</asp:ListItem>
            <asp:ListItem Value="4">Apr</asp:ListItem>
            <asp:ListItem Value="5">May</asp:ListItem>
            <asp:ListItem Value="6">June</asp:ListItem>
            <asp:ListItem Value="7">Jul</asp:ListItem>
            <asp:ListItem Value="8">Aug</asp:ListItem>
            <asp:ListItem Value="9">Sep</asp:ListItem>
            <asp:ListItem Value="10">Oct</asp:ListItem>
            <asp:ListItem Value="11">Nov</asp:ListItem>
            <asp:ListItem Value="12">Dec</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="dd2" runat="server"></asp:TextBox>
        (DD-MM-YY)<br />
Gender<asp:RadioButtonList ID="gen" runat="server" 
    DataTextField="Male" RepeatDirection="Horizontal">
    <asp:ListItem>Male</asp:ListItem>
    <asp:ListItem>Female</asp:ListItem>
</asp:RadioButtonList>
&nbsp;&nbsp;
City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="ct" runat="server"></asp:TextBox>
&nbsp;</p>
    <p>
    
  
        <br />
pincode&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="pct" runat="server"></asp:TextBox>
<br />

</p>
    <p>
    
  
E-mail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="emt" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="emt" ErrorMessage="Invalid E-mail address" 
            SetFocusOnError="True" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;<asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
<br />

</p>
    <p>
    
  
Username*&nbsp;&nbsp;
<asp:TextBox ID="unt" runat="server" MaxLength="20"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="unt" ErrorMessage="RequiredFieldValidator" 
            SetFocusOnError="True"></asp:RequiredFieldValidator>
<br />

</p>
    <p>
    
  
Password*&nbsp;&nbsp;
<asp:TextBox ID="pt" runat="server" TextMode="Password" AutoPostBack="True"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="pt" ErrorMessage="RequiredFieldValidator" 
            SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;
        <asp:Label ID="pp" runat="server" Text="Strength"></asp:Label>
&nbsp;<br />

</p>
    <p>
    
  
Confirm Password*<asp:TextBox ID="cpt" runat="server" TextMode="Password"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="cpt" ErrorMessage="RequiredFieldValidator" 
            SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="pt" ControlToValidate="cpt" 
            ErrorMessage="Passwords do not match" SetFocusOnError="True"></asp:CompareValidator>

</p>
    <p style="color: #FFFFFF; background-color: #FFFFFF">
    
  
        <asp:Button ID="sb" runat="server" Text="Submit" />

        <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="password"></asp:Label>

</p>

   
    

</asp:Content>







