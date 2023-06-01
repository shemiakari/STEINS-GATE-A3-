﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload Images.aspx.cs" Inherits="A3.Upload_Images" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .Grid {
            background-color: #fff;
            margin: 5px 0 10px 0;
            border: solid 1px #808080;
            border-collapse: collapse;
            font-family: 'Times New Roman';
            color: #000000;
        }
            .Grid td {
                padding: 2px;
                border: solid 1px #363670;
            }
            .Grid th {
                padding: 10px 10px;
                color: #fff;
                background: #552525;
                border-left: solid 1px #525252;
                font-size: 1em;
            }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
        <tr>
            <td>Name
        <asp:TextBox ID="TextBox1" runat="server" />
            </td>
            <td>Type
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            <td>Price
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            <td>Select Image </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <p>
                    <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Upload" />
                </p>
            </td>
        </tr>
    </table>
    <table>
        <asp:GridView CssClass="Grid" ID="gv" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField HeaderText="Image Name" DataField="Name" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:HyperLink
                            ID="MyLink" Target="_blank"
                            NavigateUrl='<%# Eval("ProdID", "~/Handler1.ashx?ProdID={0}")  %>'
                            runat="server">
Display
                        </asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="Picture" DataField="Picture" />
            </Columns>
        </asp:GridView>
    </table>
        </div>
    </form>
</body>
</html>
