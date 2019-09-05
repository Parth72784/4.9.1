<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="_4_9._3.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 97%;
            height: 205px;
            margin-right: 65px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="ProductId" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td style="padding: 5px; margin: 5px">
                            
                            <img height="200px" width="150px" src='<%#"data:image/jpg;base64,"+Convert.ToBase64String((byte[]) Eval("ProductImage")) %>'/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Name:
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Price:
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Description:
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbPMSConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
    </form>
</body>
</html>
