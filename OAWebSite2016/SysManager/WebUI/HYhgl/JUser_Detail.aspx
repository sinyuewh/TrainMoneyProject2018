<%-- Author:admin--%>
<%-- DateTime:2016/5/31 14:28:39--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/SysManager/include/H-uiThird.Master"
    AutoEventWireup="true" CodeBehind="JUser_Detail.aspx.cs" Inherits="KORWeb.WebSite.admin231402531.JUser_Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--��������Դ-->
    <jasp:JDataSource ID="data1" runat="server" JType="Table" SqlID="JUser" IsNoConditionNoData="true">
        <ParaItems>
            <jasp:ParameterItem ParaType="RequestQueryString" ParaName="UserID" />
        </ParaItems>
    </jasp:JDataSource>
    <!--�������ݶ�-->
    <jasp:JDataBean ID="bean1" runat="server" DataSourceID="data1" ControlList="Num,UserID,UserName,Status,AuthorityID"
        NoSaveControlList="" TableName="JUser" PrimaryKeys="UserID" IsAppendData="true" />
    <!--����Form-->
    <div class="row cl">
        <label class="form-label col-3">
            ����</label>
        <div class="formControls col-5">
            <jasp:JTextBox class="input-text" AllowNullValue="false" ID="Num" runat="server"
                Caption="����" DataType="Integer" TextDefaultValue="String0" mydatatype="n" />
        </div>
        <div class="col-4">
        </div>
    </div>
    <div class="row cl">
        <label class="form-label col-3">
            �û�ID��</label>
        <div class="formControls col-5">
            <jasp:JTextBox class="input-text" AllowNullValue="false" ID="UserID" runat="server"
                Caption="�û�ID" IsUnique="true" UniqueTable="JUser" mydatatype="*3-20" />
        </div>
        <div class="col-4">
        </div>
    </div>
    <div class="row cl">
        <label class="form-label col-3">
            �û�����</label>
        <div class="formControls col-5">
            <jasp:JTextBox class="input-text" ID="UserName" runat="server" AllowNullValue="false"
                Caption="�û���" mydatatype="*3-20" />
        </div>
        <div class="col-4">
        </div>
    </div>
    <div class="row cl">
        <label class="form-label col-3">
            �û�״̬��</label>
        <div class="formControls col-5">
            <span class="select-box">
                <jasp:JDropDownList ID="Status" class="select" runat="server" Caption="�û�״̬">
                    <asp:ListItem Text="����" Value="1"></asp:ListItem>
                    <asp:ListItem Text="ͣ��" Value="0"></asp:ListItem>
                </jasp:JDropDownList>
                <%--          <select id="Status" class="select" >
                    <option value="1">����</option>
                    <option value="0">ͣ��</option>
                </select>--%>
            </span>
            <div class="col-4">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-3">
                �û�����</label>
            <div class="formControls col-5">
                <span class="select-box">
                    <jasp:JDropDownList ID="AuthorityID" class="select" runat="server" Caption="�û�����">
                        <asp:ListItem Text="����" Value="A3"></asp:ListItem>
                        <asp:ListItem Text="������" Value="A2"></asp:ListItem>
                        <asp:ListItem Text="������" Value="A1"></asp:ListItem>
                    </jasp:JDropDownList>
                </span>
            </div>
            <div class="col-4">
            </div>
        </div>
        <div class="col-9 col-offset-3">
            <input class="btn btn-primary radius" runat="server" id="btnSubmit" type="submit"
                value="&nbsp;&nbsp;�ύ&nbsp;&nbsp;" />
            &nbsp;&nbsp;
            <button onclick="layer_close();" class="btn btn-default radius" type="button">
                &nbsp;&nbsp;ȡ��&nbsp;&nbsp;</button>
        </div>
    </div>
    

    <script type="text/javascript">
        $(function() {
            $("#aspnetForm").Validform({
                tiptype: 2,
                callback: function(form) {

                }
            });

        });
</script>

</asp:Content>
