<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #TextArea1 {
            margin-left: 9px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background:#4286f4; height:40px; padding:20px;">
            <asp:Label ID="Label2" runat="server" Font-Size="Larger" Text="Selamat datang di halaman dashboard akun anda"></asp:Label>
            &nbsp;<asp:Button ID="Button2" runat="server" style="float:right; margin-right:50px; border-radius:40px; width:100px; height:30px; cursor:pointer;" Text="Logout" OnClick="Button2_Click" />
            <br />
            <asp:Label ID="Label5" runat="server"></asp:Label>
        </div>
        <br />
        <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Informasi Keluhan Anda"></asp:Label>
        <br />
        <div style="border:2px solid black; padding:20px; width:40%">
            <asp:Label ID="Label1" runat="server" Text="Keluhan anda"></asp:Label>
            <asp:TextBox ID="TextBox2" Height="30px" runat="server" style="margin-left: 16px"></asp:TextBox>
            <br />
            <br />
            Usia anda <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 40px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Lakukan Pengobatan" OnClick="Button1_Click1" PostBackUrl="~/dashboard.aspx" />
            &nbsp&nbsp;<asp:Label ID="Label6" runat="server" ForeColor="#00CC00"></asp:Label>
            <br />
        </div>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Track Record Berobat Anda"></asp:Label>
        <br />
        <br />
        <div style="border:2px solid black; width: 50%; height:180px;">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5" width="100%" BorderColor="#0033CC" AllowSorting="True" Caption="List of Health Track Record" ShowHeaderWhenEmpty="True">
                <PagerSettings Mode="NextPrevious" NextPageText="Next" PreviousPageText="Prev" Position="Top" />
            </asp:GridView>
        </div>
    </form>
</body>

</html>
