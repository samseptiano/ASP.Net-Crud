<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style20 {
            width: 287px;
            height: 241px;
        }
        .auto-style24 {
            width: 293px;
            height: 241px;
        }
        .auto-style21 {
            width: 287px;
            height: 204px;
        }
        .auto-style25 {
            width: 293px;
            height: 204px;
        }
    .auto-style26 {
        margin-left: 5px;
    }
        .auto-style27 {
            width: 217px;
        }
        .auto-style28 {
            width: 46px;
        }
        .auto-style29 {
            width: 206px;
        }
        .auto-style30 {
            width: 46px;
            height: 31px;
        }
        .auto-style31 {
            height: 31px;
        }
        .auto-style32 {
            width: 249px;
            height: 241px;
        }
        .auto-style33 {
            width: 249px;
            height: 204px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:100%; overflow:auto">
        <table style="width:100%;">
            <tr>
                <td>
                    <table id="table1" style="width:900px; float:left;" >
                        <tr>
                            <td class="auto-style20">
                                <asp:Image ID="Image2" runat="server" height="200px" src="images/ruangan.jpg" width="100%" />
                                <br />
                                <asp:Label ID="Label2" runat="server" Text="Ruangan rawat inap sangat nyaman"></asp:Label>
                            </td>
                            <td class="auto-style24">
                                <asp:Image ID="Image3" runat="server" height="200px" src="images/ruangtunggu.jpg" style="margin-left: 3px" width="100%" />
                                <br />
                                <asp:Label ID="Label3" runat="server" Text="Ruangan tunggu nyaman"></asp:Label>
                            </td>
                            <td class="auto-style32">
                                <asp:Image ID="Image4" runat="server" height="200px" src="images/dokter.jpg" style="margin-left: 3px" width="292px" />
                                <br />
                                <asp:Label ID="Label4" runat="server" Text="Dokter yang ramah dalam melayani"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style21">
                                <asp:Image ID="Image5" runat="server" height="200px" src="images/medicine.jpg" width="100%" />
                                <br />
                                <asp:Label ID="Label5" runat="server" Text="Obat-obatan lengkap dan terpercaya"></asp:Label>
                            </td>
                            <td class="auto-style25">
                                <asp:Image ID="Image6" runat="server" height="200px" src="images/penanganan.jpg" width="100%" CssClass="auto-style26" />
                                <br />
                                <asp:Label ID="Label6" runat="server" Text="Penanganan yang professional"></asp:Label>
                            </td>
                            <td class="auto-style33">
                                <asp:Image ID="Image7" runat="server" height="200px" src="images/resepsionis.jpg" width="294px" />
                                <br />
                                <asp:Label ID="Label7" runat="server" Text="Pelayanan penuh kasih"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                     <form style="margin-left:0px;">
                         <h3>Daftarkan Diri Anda</h3>
                        <table id="table2" style="width: 100%; float: right; width: 45%; height: 100%; padding-left:0px; margin-left: 0px;">
                            <tr>
                                <td class="auto-style28">Nama</td>
                                <td class="auto-style16">
                                    <asp:TextBox ID="TextBox1" runat="server" Width="203px" required></asp:TextBox>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style28">Email</td>
                                <td class="auto-style16">
                                    <asp:TextBox ID="TextBox3" runat="server" Width="203px" Type="Email" required></asp:TextBox>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style28">Password</td>
                                <td class="auto-style16">
                                    <asp:TextBox ID="TextBox5" runat="server" Width="203px" Type="Password" required></asp:TextBox>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style28">Tgl lahir</td>
                                <td class="auto-style16">
                                    <asp:TextBox ID="TextBox2" runat="server" Width="203px" Type="date" required></asp:TextBox>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style28">Alamat</td>
                                <td class="auto-style16">
                                    <asp:TextBox ID="TextBox4" height="30px" runat="server" Width="203px" required></asp:TextBox><br />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style30">Status</td>
                                <td class="auto-style31">
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="215px">
                                        <asp:ListItem selected>menikah</asp:ListItem>
                                        <asp:ListItem>tidak menikah</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style28">Jenis kelamin</td>
                                <td class="auto-style16">
                                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" Width="181px">
                                        <asp:ListItem Selected>Pria</asp:ListItem>
                                        <asp:ListItem>Wanita</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style28">Metode pembayaran</td>
                                <td class="auto-style16">
                                    <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal" Width="263px" Height="54px">
                                        <asp:ListItem selected>BPJS</asp:ListItem>
                                        <asp:ListItem>Prudential</asp:ListItem>
                                        <asp:ListItem>AVIVA</asp:ListItem>
                                        <asp:ListItem>Jasa Raharja</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style28"></td>
                                <td class="auto-style16">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style28"></td>
                                <td class="auto-style16">
                                    <br />
                                    <asp:Button ID="Button2" runat="server" Text="Daftar" Width="110px" OnClick="Button2_Click" />
                                </td>
                            </tr>
                        </table>
                         <br />
                    </form>
                </td>
            </tr>
        </table>
       
    </div>
</asp:Content>

