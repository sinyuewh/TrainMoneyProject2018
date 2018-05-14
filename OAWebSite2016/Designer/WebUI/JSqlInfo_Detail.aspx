<%@ Page Title="" Language="C#" MasterPageFile="~/Designer/include/Third.Master"
    AutoEventWireup="true" Inherits="WebFrame.Designer.JSqlInfo_DetailBU" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script language="javascript" type="text/javascript">
        $(document).ready(function () {
            $(".Data2 input").css({ 'width': '400px' });
            $(".Data2 textarea").css({ 'width': '400px' });
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="script1" runat="server">
    </asp:ScriptManager>
    <br />
    <!--��������Դ-->
    <jasp:JDataSource ID="data1" runat="server" JType="Table" SqlID="JSqlInfo" IsNoConditionNoData="true">
        <ParaItems>
            <jasp:ParameterItem ParaType="RequestQueryString" ParaName="SqlID" />
        </ParaItems>
    </jasp:JDataSource>
    </jasp:JDataSource>
    <!--�������ݶ�-->
    <jasp:JDataBean ID="bean1" runat="server" DataSourceID="data1" ControlList="Num,SqlID,SqlText,Remark,Author"
        TableName="JSqlInfo" PrimaryKeys="SqlID" IsAppendData="true" />
    
    <table class="DetailTable" border="0" align="center" cellpadding="1" cellspacing="1"
        style="width: 90%">
        <tr>
            <td class="Caption2">
                ��ţ�
            </td>
            <td class="Data2">
                <jasp:JTextBox ID="Num" runat="server" AllowNullValue="false" Caption="���" DataType="Integer"></jasp:JTextBox>
            </td>
        </tr>
        <tr>
            <td class="Caption2">
                SqlID��
            </td>
            <td class="Data2">
                <jasp:JTextBox ID="SqlID" runat="server" Caption="SqlID" AllowNullValue="false" IsUnique="true"
                    UniqueTable="JSqlInfo"></jasp:JTextBox>
            </td>
        </tr>
        <tr>
            <td class="Caption2">
                Sql�ı���
            </td>
            <td class="Data2">
                <jasp:JTextBox ID="SqlText" runat="server" TextMode="MultiLine" Height="150"></jasp:JTextBox>
            </td>
        </tr>
        <tr>
            <td class="Caption2">
                ���ߣ�
            </td>
            <td class="Data2">
                <jasp:JTextBox ID="Author" runat="server" ></jasp:JTextBox>
            </td>
        </tr>
        <tr>
            <td class="Caption2">
                ��ע��
            </td>
            <td class="Data2">
                <jasp:JTextBox ID="Remark" runat="server"></jasp:JTextBox>
            </td>
        </tr>
    </table>
    <div class="ButtonArea">
        <asp:UpdatePanel ID="update1" runat="server">
            <ContentTemplate>
                <asp:Button ID="btnSubmit" runat="server" Text="�� ��" />
                &nbsp;
                <asp:Button ID="btnClose" runat="server" Text="�� ��" OnClientClick="javascript:art.dialog.close();" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
