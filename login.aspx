<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <h3 style="text-align:center;">Selamat datang di halaman login RS.Peduli Sehat</h3>
    <p style="text-align:center; font-size:x-large; ">Silahkan login di form dibawah ini</p>
<div style="margin-left:34%; margin-right:30%; border:2px solid black; width: 445px;">
<p style="font-size: large; font-family: 'Courier New', Courier, monospace; font-weight: bold;">
    &nbsp;&nbsp; Email
    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 76px" required Type="email" Width="134px"></asp:TextBox>
</p>
<p style=" font-size: large; font-family: 'Courier New', Courier, monospace; font-weight: bold;">
    &nbsp;&nbsp;
    Password &nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px" Type="password" required Width="134px"></asp:TextBox>
</p>
<asp:Button ID="Button1" runat="server" Text="Log In" Font-Bold="True" Font-Italic="False" OnClick="Button1_Click" style="margin-left: 38px" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="Large" style="margin-left:40px;" ForeColor="Red"></asp:Label>
        <br />
        <br />
</div>
<br />
<br />
<br />
</asp:Content>



