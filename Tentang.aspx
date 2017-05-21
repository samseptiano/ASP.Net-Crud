<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Tentang.aspx.cs" Inherits="Profil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 571px;
        }
        .auto-style2 {
            width: 561px;
            margin-left: 280px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style2">
                <center>
                    <br />
                    <asp:Image ID="Image9" runat="server" Height="100%" ImageUrl="~/images/dokter.jpg" style="margin-right: 0px" Width="90%" /></center>
            </td>
            <td>
                <strong style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;"><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                <asp:Label ID="Label1" runat="server" style="font-weight:bold;" Font-Size="X-Large" Text="Profil Kami"></asp:Label>
                <br />
                <br />
                </span>
                <p style="text-align: justify;">
                    Peduli Sehat Grup saat ini memiliki 12 cabang yang tersebar di beberapa wilayah strategis di kota-kota&nbsp;besar di Indonesia, yaitu Bekasi Barat, Kemayoran, Surabaya, Kelapa Gading, Bekasi Timur, Depok, Tegal,&nbsp;Waru, Cikarang, Cibubur, Kenjeran, dan Kalideres.</p>
                <p style="text-align: justify;">
                    Pembukaan rumah sakit dilandasi adanya kebutuhan akan pelayanan kesehatan bertaraf internasional di&nbsp;Jakarta pada khususnya. Dengan dilengkapi peralatan yang modern &amp; canggih serta didukung oleh sumber&nbsp;daya manusia yang baik dan terus mengembangkan diri, dan untuk menjaga kualitas pelayanan, kami juga&nbsp;telah melengkapi diri dengan Akreditasi 16 Bidang Pelayanan. Dan pada 19 Desember 2006 kami mendapat&nbsp;piagam penghargaan dari Gubernur Provinsi DKI Jakarta sebagai perusahaan dengan predikat BAIK dalam&nbsp;ketaatan terhadap ketentuan pembuangan limbah cair selama tahun 2005.</p>
                </strong><span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Telepon : "></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="tel:+0211234567">021-1234567 (HOTLINE)</asp:HyperLink>
                <br />
                <asp:Label ID="Label3" runat="server" Text="E-mail      :  "></asp:Label>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="www.gmail.com">rs.pedulisehat@gmail.com</asp:HyperLink>
                </span></td>
        </tr>
       
    </table>
&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</asp:Content>

