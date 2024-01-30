<%@ Page Title="" Language="C#" MasterPageFile="~/Secure.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebAppSecurity.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        margin-left: 596px;
    }
    .auto-style3 {
        width: 158px;
    }
    .auto-style4 {
        width: 191px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Login</h2>
   <div>
       <table class="auto-style2">
           <tr>
               <td class="auto-style3">User Name</td>
               <td class="auto-style4">
                   <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
               </td>
               <td>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtName" ErrorMessage="* Pls Enter User Name" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td class="auto-style3">User Password</td>
               <td class="auto-style4">
                   <asp:TextBox ID="TxtPwd" runat="server" TextMode="Password"></asp:TextBox>
               </td>
               <td>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtPwd" ErrorMessage="* Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td class="auto-style3">&nbsp;</td>
               <td class="auto-style4">
                   <asp:Button ID="BtnLogin" runat="server" OnClick="BtnLogin_Click" Text="Login" />
               </td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td colspan="3">
                   <asp:Label ID="LblMsg" runat="server"></asp:Label>
               </td>
           </tr>
       </table>
</div>
</asp:Content>
