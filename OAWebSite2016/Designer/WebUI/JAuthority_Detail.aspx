<%@ Page Title="" Language="C#" MasterPageFile="~/Designer/include/Third.Master"
    AutoEventWireup="true" Inherits="WebFrame.Designer.JAuthority_DetailBU" %>

<%@ Register Assembly="WebFrame" Namespace="WebFrame.ExpControl" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script language="javascript" type="text/javascript">
        $(document).ready(function () {
            $(".Data2 input").css({ 'width': '450px' });
            $(".Data2 textarea").css({ 'width': '450px' });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="script1" runat="server">
    </asp:ScriptManager>
    <br />
    <!--��������Դ-->
    <jasp:JDataSource ID="data1" runat="server" JType="Table" SqlID="JAuthority" IsNoConditionNoData="true">
        <ParaItems>
            <jasp:ParameterItem ParaType="RequestQueryString" ParaName="AuthorityID" />
            <jasp:ParameterItem ParaType="AppSettings" ParaName="AuthorityGroup" DataName="JAuthority.AuthorityGroup" />
        </ParaItems>
    </jasp:JDataSource>
    <!--�������ݶ�-->
    <jasp:JDataBean ID="bean1" runat="server" DataSourceID="data1" 
        ControlList="Num,AuthorityID,AuthorityName,Author,ModelID,RelPages,Remark,AuthUnitText,AuthUnitNum"
        TableName="JAuthority" PrimaryKeys="AuthorityID" IsAppendData="true" />
    <jasp:JTextBox ID="Author" runat="server" Visible="false"></jasp:JTextBox>
    <jasp:JDataSource ID="Data2" runat="server" JType="Table" SqlID="JModel" PageSize="-1"
        FieldsList="ModelID,ModelName" OrderBy="num" />
    <table class="DetailTable" border="0" align="center" cellpadding="1" cellspacing="1"
        style="width: 90%">
        <tr>
            <td class="Caption2">
                ��ţ�
            </td>
            <td class="Data2">
                <jasp:JTextBox ID="Num" Caption="���" AllowNullValue="false" DataType="Integer" runat="server"></jasp:JTextBox>
            </td>
        </tr>
        <tr>
            <td class="Caption2">
                ����ģ�飺
            </td>
            <td class="Data2">
                <jasp:AppDropDownList ID="ModelID" runat="server" DataSourceID="Data2" DataTextField="ModelName"
                    DataValueField="ModelId" Caption="����ģ��" AllowNullValue="false">
                </jasp:AppDropDownList>
            </td>
        </tr>
        <tr>
            <td class="Caption2">
                Ȩ��ID��
            </td>
            <td class="Data2">
                <jasp:JTextBox ID="AuthorityID" Caption="Ȩ��ID" AllowNullValue="false" IsUnique="true"
                    UniqueTable="JAuthority" runat="server"></jasp:JTextBox>
            </td>
        </tr>
        <tr>
            <td class="Caption2">
                Ȩ�����ƣ�
            </td>
            <td class="Data2">
                <jasp:JTextBox ID="AuthorityName" Caption="Ȩ������" AllowNullValue="false" runat="server"></jasp:JTextBox>
            </td>
        </tr>

        <tr>
            <td class="Caption2">
                Ȩ�޹��ܵ��ı���
            </td>
            <td class="Data2">
                <jasp:JTextBox ID="AuthUnitText" Caption="Ȩ�޹��ܵ��ı�" runat="server"></jasp:JTextBox>
            </td>
        </tr>

        <tr>
            <td class="Caption2">
                Ȩ�޹��ܵ����֣�
            </td>
            <td class="Data2">
                <jasp:JTextBox ID="AuthUnitNum" Caption="Ȩ�޹��ܵ�����" runat="server"></jasp:JTextBox>
            </td>
        </tr>

        <tr>
            <td class="Caption2">
                ���aspx��ascx�ļ�
            </td>
            <td class="Data2">
                <jasp:JTextBox ID="RelPages" Caption="��ע" runat="server" TextMode="MultiLine" Height="100"></jasp:JTextBox>
                <br />ʹ�þ���·��������ûس����зָ�
            </td>
        </tr>

        <tr>
            <td class="Caption2">
                ��ע��
            </td>
            <td class="Data2">
                <jasp:JTextBox ID="Remark" Caption="��ע" runat="server" TextMode="MultiLine" Height="60"></jasp:JTextBox>
            </td>
        </tr>
    </table>
    <div class="ButtonArea" style ="display:none">
        <asp:UpdatePanel ID="update1" runat="server">
            <ContentTemplate>
                <asp:Button ID="btnSubmit" runat="server" Text="�� ��" />
                &nbsp;
                <asp:Button ID="Button1" runat="server" Text="Ȩ���滻" />
                &nbsp;
                <asp:Button ID="Button2" runat="server" Text="Ȩ�޷��滻" />
                &nbsp;
                <asp:Button ID="btnClose" runat="server" Text="�� ��" OnClientClick="javascript:art.dialog.close();" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
