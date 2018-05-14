<%@ Page Title="" Language="C#" MasterPageFile="~/Designer/include/Second.Master"
    AutoEventWireup="true" Inherits="WebFrame.Designer.CommListBU" %>

<%@ Register Src="~/Designer/Controls/MyPageChange.ascx" TagName="MyPageChange"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script language="javascript" type="text/javascript">
        //������༭����
        function EditData(dataID) {
            var url1 = "JStrInfo_Detail.aspx";
            var title = "�����ַ�����Դ";
            if (dataID != "") {
                url1 = url1 + "?StrID=" + dataID;
                title = "�ַ�����Դ��ϸ";
            }
            AlertMsg(url1, title, 800, 550, true, 75);
            return false;
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceForNavigatorTitle" runat="server">
    ����ƽ̨ �����ַ�����Դ
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceForNavigatorButtonArea"
    runat="server">
    <jasp:JHyperLink ID="hyper1" runat="server" NavigateUrl="#" onclick="javascript:return EditData('');"
        Text='<img src="/images/Frame/22.gif" width="14" height="14" border="0" alt="" />&nbsp;����'></jasp:JHyperLink>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceForContent" runat="server">
    <div style="margin: 10 0 5 5">
        &nbsp;�ַ�����ԴID��<jasp:JTextBox ID="StrID" runat="server" Width="150" />
        &nbsp;�ַ������ݣ�<jasp:JTextBox ID="StrText1" runat="server" Width="150" />
         &nbsp;��ע��<jasp:JTextBox ID="Remark" runat="server" Width="150" />
        <jasp:JButton ID="butSearch" runat="server" Text="�� ѯ" />
        <div style="display: none">
            <jasp:JButton ID="butSearch1" runat="server" Text="�� ѯ" CssClass="submitButton" /></div>
    </div>
    <!--����Դ�ؼ�ʹ�ö���ѯ-->
    <jasp:JDataSource ID="data1" runat="server" JType="Table" SqlID="JStrInfo" PageSize="13"
        FieldsList="num,StrID,kind,Author,remark,strText1" OrderBy="num">
        <ParaItems>
            <jasp:ParameterItem ParaType="Control" ParaName="StrID" SearchOperator="Contains" />
            <jasp:ParameterItem ParaType="Control" ParaName="StrText1" SearchOperator="Contains" />
            <jasp:ParameterItem ParaType="Control" ParaName="Remark" SearchOperator="Contains" />
        </ParaItems>
    </jasp:JDataSource>
    <!--��ʾ�����б�-->
    <table class="ListTable" cellspacing="1" cellpadding="0" onmouseover="changeto()"
        onmouseout="changeback()">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="data1">
            <HeaderTemplate>
                <tr>
                    <td width="5%" class="Caption">
                        <asp:CheckBox ID="checkAll" runat="server" CssClass="selAllDocument" ToolTip="ȫ��ѡ�л���ȫ����ѡ��"
                            onclick="selectChildChecked('selDocument',this.checked);" />
                    </td>
                    <td class="Caption">
                        ���
                    </td>
                    <td class="Caption">
                        �ַ�����ԴID
                    </td>
                     <td class="Caption">
                        �ַ�������
                    </td>
                    <td class="Caption">
                        ����
                    </td>
                    <td class="Caption">
                        ����
                    </td>
                    <td class="Caption">
                        ��ע
                    </td>
                    <td class="Caption">
                        ����
                    </td>
                </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td class="Data">
                        <asp:CheckBox ID="selDocument" runat="server" CssClass="selDocument" onclick="selectParentChecked('selAllDocument','selDocument');" />
                    </td>
                    <td class="Data">
                        <%#Eval("Num") %>
                    </td>
                    <td class="Data">
                        <%#Eval("StrID") %>
                    </td>
                     <td class="Data">
                        <%# WebFrame.Util.JString.GetMaxLenth(Eval("StrText1").ToString(),30,"...") %>
                    </td>
                    <td class="Data">
                        <%#Eval("Kind").ToString()=="0" ? "�û�":"ϵͳ" %>
                    </td>
                    <td class="Data">
                        <%#Eval("Author") %>
                    </td>
                    <td class="Data">
                        <%#Eval("Remark") %>
                    </td>
                    <td class="Data">
                        <a onclick="javascript:return EditData('<%#Eval("StrID") %>');" href='#'>
                            <img src="/images/Frame/edt.gif" width="16" height="16" border="0" alt="" />��ϸ</a>
                        &nbsp;
                        <jasp:JLinkButton ID="LinkButton1" CommandArgument='<%#Eval("StrID") %>' CommandName="delete"
                            runat="server" OnClientClick="return confirm('ȷ��ɾ������������')" Text='<img  alt="" src="/images/Frame/del.gif" width="16" height="16" border="0" />ɾ��'></jasp:JLinkButton>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceForPageChange" runat="server">
    <!--�û��Զ��巭ҳ�ؼ�-->
    <uc1:MyPageChange ID="MyPageChange1" runat="server" />
    <!--����ɾ���ı����͹ؼ��ֶ�ID-->
    <jasp:JTextBox ID="TableName" runat="server" Text="JStrInfo" Visible="false"></jasp:JTextBox>
    <jasp:JTextBox ID="PrimaryKeyID" runat="server" Text="StrID" Visible="false"></jasp:JTextBox>
    <!--ҳ��Ȩ�޿���-->
    <jasp:SecurityPanel ID="sec1" runat="server" AuthorityKind="DirectNoAccessPage">
    </jasp:SecurityPanel>
</asp:Content>
