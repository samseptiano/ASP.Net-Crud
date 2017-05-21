<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="redirect.aspx.cs" Inherits="redirect" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:Label ID="Label1" width="700px" runat="server" Text="Terima kasih telah mendaftar, untuk info registrasi silahkan cek di email anda dan untuk login silahkan klik link dibawah ini : " Font-Size="XX-Large"></asp:Label>
&nbsp;</p>
    <p>
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="XX-Large" NavigateUrl="~/login.aspx">Login akun</asp:HyperLink>
    </p>
    <asp:Label ID="Label2" width="800px" runat="server" Font-Size="X-Large" Text="Kami akan terus melayani anda sepenuh hati kami karena kepuasan dan kenyamanan anda merupakan prioritas utama kami.  Kami selalu siap siaga selama 24 Jam full untuk menangani masalah darurat dan utama"></asp:Label>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Telepon : "></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="tel:+0211234567">021-1234567 (HOTLINE)</asp:HyperLink>
        <br />
        <asp:Label ID="Label3" runat="server" Text="E-mail      :  "></asp:Label>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="www.gmail.com">rs.pedulisehat@gmail.com</asp:HyperLink>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

