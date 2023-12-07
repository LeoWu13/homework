<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Somewords.aspx.cs" Inherits="Somewords" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
<div>
            
                <asp:GridView ID="CBF110013_GV1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" EmptyDataText="沒有資料錄可顯示。" OnRowDeleted="GridView1_RowDeleted" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    
                   
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" ></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" OnClientClick="return confirm('你確定要刪除嗎?')"></asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle Wrap="False" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="word" HeaderText="word" SortExpression="word" />
                        <asp:BoundField DataField="ch_explanation" HeaderText="ch_explanation" SortExpression="ch_explanation" />
                        <asp:BoundField DataField="sentence" HeaderText="sentence" SortExpression="sentence" >
                        
                        <ControlStyle Width="98%" />
                        </asp:BoundField>
                        
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [gept_words$] WHERE [Id] = @Id" InsertCommand="INSERT INTO [gept_words$] ([word], [ch_explanation], [sentence], [sno], [level], [frequency], [weight]) VALUES (@word, @ch_explanation, @sentence, @sno, @level, @frequency, @weight)" SelectCommand="SELECT [Id], [word], [ch_explanation], [sentence], [sno], [level], [frequency], [weight] FROM [gept_words$]" UpdateCommand="UPDATE [gept_words$] SET [word] = @word, [ch_explanation] = @ch_explanation, [sentence] = @sentence, [sno] = @sno, [level] = @level, [frequency] = @frequency, [weight] = @weight WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="word" Type="String" />
                        <asp:Parameter Name="ch_explanation" Type="String" />
                        <asp:Parameter Name="sentence" Type="String" />
                        <asp:Parameter Name="sno" Type="String" />
                        <asp:Parameter Name="level" Type="Double" />
                        <asp:Parameter Name="frequency" Type="Double" />
                        <asp:Parameter Name="weight" Type="Double" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="word" Type="String" />
                        <asp:Parameter Name="ch_explanation" Type="String" />
                        <asp:Parameter Name="sentence" Type="String" />
                        <asp:Parameter Name="sno" Type="String" />
                        <asp:Parameter Name="level" Type="Double" />
                        <asp:Parameter Name="frequency" Type="Double" />
                        <asp:Parameter Name="weight" Type="Double" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:DropDownList ID="CBF110013_DDL1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="word" DataValueField="ch_explanation" style="height: 23px" OnSelectedIndexChanged="CBF110013_DDL1_SelectedIndexChanged" >
                </asp:DropDownList>
                <asp:Button ID="CBF110013_PreviousButton" runat="server" Text="PreviousButton" OnClick="CBF110013_PreviousButton_Click" />
                <asp:Button ID="CBF110013_NextButton" runat="server" Text="NextButton" />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="測驗去" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [gept_words$]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
        
        </div>
        <p>
        
                <asp:Literal ID="CBF110013msg" runat="server"></asp:Literal>
        
        </p>
        <p>
            <a href="HtmlPage.html">心得</a>
        </p>
    </form>
</body>
</html>
