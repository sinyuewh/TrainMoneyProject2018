﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JRole_SetUsers.aspx.cs"
    MasterPageFile="~/SysManager/include/H-uiThird.Master" Inherits="OAWebSite2016.SysManager.WebUI.SysMng.JRole_SetUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/EasyUI/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="/EasyUI/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="/EasyUI/demo/demo.css">

    <script type="text/javascript" src="/EasyUI/jquery.min.js"></script>

    <script type="text/javascript" src="/EasyUI/jquery.easyui.min.js"></script>

    <script type="text/javascript">
        $(function() {
            InitTreeData();
        });
        function InitTreeData() {
            $('#tree').tree({
                url: '/SysManager/WebUI/PubLib/GetEasyUITreeData.aspx?dataKind=0&RoleID=<%=Request["RoleID"]%>',
                checkbox: true
            });
        }

        function getChecked() {
            var nodes = $('#tree').tree('getChecked');
            var s = '';
            for (var i = 0; i < nodes.length; i++) {
                if (nodes[i].tag == "1") {    //去掉单位的数据
                    if (s != '') s += ',';
                    s += nodes[i].ID;
                }
            }

            //alert(s);
            if (s.length == 0) 
            {
                layer.alert("错误：请至少选择一个用户！");
                return false;
            }
            else
            {
                $('#<%=this.seluserid.ClientID %>').val(s);
                return true;
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--数据Form-->
    <div style="margin-top: -20px; margin-left: -10px; border: solid 1px gray; padding: 10px;
        height: 380px; overflow:auto">
        <ul id="tree" class="easyui-tree">
        </ul>
    </div>
    <br />
    <div style="margin-left:-10px">
        <jasp:SecurityPanel ID="sec0" runat="server" RoleID="xtgl">
           <%-- <input class="btn btn-primary radius" runat="server" id="btnSubmit" type="submit"
                value=" 提 交 "  />--%>
            <asp:HiddenField ID="seluserid" runat="server" />
            <jasp:JButton ID="but1" runat ="server" Text =" 提 交 "
             CssClass="btn btn-primary radius" OnClientClick="javascript:return getChecked();"></jasp:JButton>
             
             &nbsp;&nbsp;
                <button onclick="layer_close();" class="btn btn-default radius" type="button"> 取 消 </button>
        </jasp:SecurityPanel>
    </div>
    <%--  <a href="#" class="easyui-linkbutton" onclick="getChecked()">提交</a>--%>
    <jasp:SecurityPanel ID="SecurityPanel1" runat="server" AuthorityKind="DirectNoAccessPage" RoleID="xtgl">
    </jasp:SecurityPanel>
</asp:Content>
