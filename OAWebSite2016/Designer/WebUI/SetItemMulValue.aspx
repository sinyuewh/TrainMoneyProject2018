<%@ Page Title="" Language="C#" MasterPageFile="~/Designer/include/Third.Master"
    AutoEventWireup="true" Inherits="WebFrame.Designer.SetItemMulValueBU" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ButtonArea">
        <jasp:JButton ID="butAdd" runat="server" Text="�� ��" />
        &nbsp;
        <jasp:JButton ID="btnSubmit" runat="server" Text="�� ��" />
        &nbsp;
        <asp:Button ID="btnClose" runat="server" Text="�� ��" OnClientClick="javascript:art.dialog.close();" />
    </div>
    <br />
    <!--��������Դ-->
    <table style="width: 90%" border="0" align="center">
        <tr>
            <td>
                <b>��Ŀ���ƣ�</b><%=Request.QueryString["Itemname"]%>
            </td>
        </tr>
    </table>
    
        <table class="ListTable" border="0" align="center" cellpadding="1" cellspacing="1"
            style="width: 90%">
            <tr>
                <td class="Caption">
                    ���
                </td>
                <td class="Caption">
                    ��ĿText
                </td>
                <td class="Caption">
                    ��ĿValue
                </td>
                <td class="Caption">
                    ����
                </td>
            </tr>
            <asp:Repeater ID="rep1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td class="Data">
                            <jasp:JTextBox ID="Num" class="input-text" runat="server" Caption="���" AllowNullValue="false"
                                DataType="Integer" Text='<%#Eval("num") %>'></jasp:JTextBox>
                        </td>
                        <td class="Data">
                            <jasp:JTextBox ID="ItemText" class="input-text" runat="server" Caption="��ĿText" AllowNullValue="false"
                                Text='<%#Eval("itemtext") %>'></jasp:JTextBox>
                        </td>
                        <td class="Data">
                            <jasp:JTextBox ID="ItemValue" class="input-text" runat="server" Caption="��ĿValue"
                                AllowNullValue="false" Text='<%#Eval("itemvalue") %>'></jasp:JTextBox>
                        </td>
                        <td class="Data">
                            <jasp:JLinkButton ID="butDel" runat="server" Text="[ɾ��]" CommandArgument='<%#Container.ItemIndex %>'
                                OnClientClick="javascript:return confirm('��ʾ��ȷ��Ҫɾ������������');" CssClass="blue"></jasp:JLinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>
</asp:Content>
