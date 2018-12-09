<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="card.aspx.vb" Inherits="card" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        Hello&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        Card Select&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            RepeatDirection="Horizontal" RepeatLayout="Flow">
            <asp:ListItem Value="Debit Card">Debit Card</asp:ListItem>
            <asp:ListItem Value="Credit Card">Credit Card</asp:ListItem>
        </asp:RadioButtonList>
&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="RadioButtonList1" ErrorMessage="Please Select One" 
            SetFocusOnError="True" style="font-size: xx-small">Please Fil</asp:RequiredFieldValidator>
    </p>
    <p>
        Card&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="244px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Please Enter card Number" 
            SetFocusOnError="True" style="font-size: xx-small">Please Fil</asp:RequiredFieldValidator>
    </p>
    <p>
        Expiry Date :&nbsp;&nbsp;         <asp:DropDownList ID="DropDownList1" runat="server" Width="49px">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>18</asp:ListItem>
            <asp:ListItem>19</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>21</asp:ListItem>
            <asp:ListItem>22</asp:ListItem>
            <asp:ListItem>23</asp:ListItem>
            <asp:ListItem>24</asp:ListItem>
            <asp:ListItem>25</asp:ListItem>
            <asp:ListItem>26</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CVV:&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="102px"></asp:TextBox>
    </p>
    <p>
        Card Hold Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         <asp:TextBox ID="TextBox3" runat="server" Width="247px"></asp:TextBox>
&nbsp;</p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Pay" />
    </p>
</asp:Content>

