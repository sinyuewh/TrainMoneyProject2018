<%@ Page Title="" Language="C#" MasterPageFile="~/Designer/include/Third.Master"
    AutoEventWireup="true" Inherits="WebFrame.Designer.SetAuthorityDetailValueBU" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ButtonArea" style="display: none">
        <jasp:JButton ID="butAdd" runat="server" Text="�� ��" />
        &nbsp;
        <jasp:JButton ID="btnSubmit" runat="server" Text="�� ��" />
        &nbsp;
        <asp:Button ID="btnClose" runat="server" Text="�� ��" OnClientClick="javascript:parent.CloseMsg();return false;" />
    </div>
    <br />
    <!--��������Դ-->
    <table style="width: 90%" border="0" align="center">
        <tr>
            <td>
                <b>Ȩ��ID��</b><%=Request.QueryString["AuthorityID"]%>
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
                Ȩ�޵�����
            </td>
            <td class="Caption">
                Ȩ�޵�ID
            </td>
            <td class="Caption">
                Ȩ�޵�ֵ
            </td>
        </tr>
        <asp:Repeater ID="rep1" runat="server">
            <ItemTemplate>
                <tr>
                    <td class="Data">
                        <jasp:JTextBox ID="Num" runat="server" Caption="���" AllowNullValue="false" DataType="Integer"
                            Text='<%#Eval("num") %>' Width="40" Style="text-align: center"></jasp:JTextBox>
                    </td>
                    <td class="Data">
                        <jasp:JTextBox ID="Remark" runat="server" Caption="Ȩ�޵�����" AllowNullValue="false"
                            Text='<%#Eval("Remark") %>'></jasp:JTextBox>
                    </td>
                    <td class="Data">
                        <jasp:JTextBox ID="AuthorityUnitID" runat="server" Caption="Ȩ�޵�ID" AllowNullValue="false"
                            Text='<%#Eval("AuthorityUnitID") %>' Width="250px"></jasp:JTextBox>
                    </td>
                    <td class="Data">
                        <jasp:JTextBox ID="AuthorityIDValue" runat="server" Caption="Ȩ�޵�ID" DataType="Integer"
                            AllowNullValue="false" ToolTip="�Ǹ�0-100����" Width="40" Style="text-align: center"
                            Text='<%#Eval("AuthorityIDValue") %>'></jasp:JTextBox>
                    </td>
                    
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <table border="0" align="center" style="width: 90%">
        <tr>
            <td>
                ��ʾ��0��ʾ�����1��ʾ������2��ʾ�޸ģ�3��ʾɾ����4-10��ʾ������Ȩ�޹��ܵ㡣
            </td>
        </tr>
    </table>
    <jasp:SecurityPanel ID="sec1" runat="server" AuthorityKind="DirectNoAccessPage">
    </jasp:SecurityPanel>
</asp:Content>
