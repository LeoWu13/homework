<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Literal ID="CBF110013_msg2" runat="server"></asp:Literal>
            <asp:TextBox ID="CBF110013_txtBox1" runat="server" onclick="this.setSelectionRange(0,999)" Autofocus="autofocus" onfocus="this.setSelectionRange(0,999)"  AutoComplete="off" OnTextChanged="CBF110013_txtBox1_TextChanged"></asp:TextBox>
            <asp:Button ID="CBF110013_Btn2" runat="server" Text="下一題" OnClick="CBF110013_Btn2_Click" />
            <br />
            請輸入完整單字(底線是用來提示有幾個字元, 如果消失了可以移動滑鼠至方格上來查看.)
    </form>
</body>
</html>
