﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SysManager/include/H-uiSecond.Master"
    AutoEventWireup="true" CodeBehind="WorkLogList1.aspx.cs" 
    Inherits="OAWebSite2016.SysManager.WebUI.WorkLogMng.WorkLogList1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="/JS/lhgcalendar.min.js" type="text/javascript"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--导航区设置-->
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 时间管理 <span class="c-gray en">&gt;</span> 工作日志 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
    <div class="pd-20">
        <!--查询区设置-->
        <div class="text-c">
            
            日志作者：<jasp:JTextBox ID="AddUserName" runat="server" class="input-text" Style="width: 120px"
                placeholder=""  />
            &nbsp;&nbsp;
            日志日期：<jasp:JTextBox ID="Time0" runat="server" class="input-text" Style="width: 120px"
                placeholder="" onclick="$.calendar();" />
            ～<jasp:JTextBox ID="Time1" runat="server" class="input-text" Style="width: 120px"
                placeholder="" onclick="$.calendar();" />
                
            &nbsp;&nbsp; 日志内容：<jasp:JTextBox ID="LogContent" runat="server" class="input-text"
                Style="width: 300px" placeholder="" />
            &nbsp;&nbsp;
            <button type="submit" class="btn btn-success radius" id="butSearch" name="">
                <i class="Hui-iconfont">&#xe665;</i> 查询</button>
        </div>
        <!--操作区设置-->
        <div class="cl pd-5 bg-1 bk-gray mt-20">
            <span class="l"><a href="javascript:;" onclick="javascript:return NewData();" class="btn btn-primary radius">
                <i class="Hui-iconfont">&#xe600;</i> 今日日志</a>
                &nbsp;&nbsp;
                <a href="javascript:;" onclick="javascript:return NewData1();" class="btn btn-primary radius">
                <i class="Hui-iconfont">&#xe600;</i> 补登日志</a>
                
                 &nbsp;&nbsp;                
                <button id="but1" runat="server"  class="btn btn-primary radius"><i class="Hui-iconfont">&#xe644;</i> 导出日志到Excel</button>
                
                 </span><span class="r">共有数据：<strong><%=this.data1.TotalRow %></strong>
                    条</span>
        </div>
        <!--数据源定义-->
        <jasp:JDataSource ID="data1" runat="server" JType="Table" SqlID="Tb_WorkLog" PageSize="-1"
            FieldsList="*" OrderBy="begDate desc">
            <ParaItems>
                <jasp:ParameterItem ParaType="Control" ParaName="LogContent" SearchOperator="Contains" />
                <jasp:ParameterItem ParaType="Control" ParaName="Time0" DataName="begDate>=cdate('{0}')"
                    SearchOperator="UserDefine" />
                <jasp:ParameterItem ParaType="Control" ParaName="Time1" DataName="begDate<=cdate('{0} 23:59:59')"
                    SearchOperator="UserDefine" />
                <jasp:ParameterItem ParaType="Control"  ParaName="AddUserName" SearchOperator="Contains" />
            </ParaItems>
        </jasp:JDataSource>
        
        <!--数据表格-->
        <div class="mt-20" style="display: none">
            <table class="table table-border table-bordered table-hover table-bg table-sort">
                <thead>
                    <tr class="text-c">
                        <th style="width:150px">
                            日志日期
                        </th>
                        <th style="width: 120px">
                            日志作者
                        </th>
                        <th style="width:850px">
                            日志内容
                        </th>
                        <th style="width:60px">
                            是否补登
                        </th>
                        <th style="width:150px">
                            操作
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="data1" EnableViewState="false">
                        <ItemTemplate>
                            <tr class="text-c" style="width:150px">
                                <td>
                                    <%#Eval("begDate", "{0:yyyy-MM-dd dddd}")%>
                                </td>
                                <td >
                                    <%#Eval("AddUserName")%>
                                </td>
                                <td class="text-l">
                                    <%#Eval("LogContent") %>
                                </td>
                                <td class="text-c">
                                    <%#(bool)Eval("IsBuDeng")==true ? "<span style='color:red'>√</span>":""%>
                                </td>
                                <td class="operate" style="width:150px">
                                    <a onclick="javascript:return ReadData('<%#Eval("LogID") %>');" href='#'>
                                        <img src="/images/Frame/edt.gif" width="16" height="16" border="0" alt="" />明细</a>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </div>
    </div>

    <script type="text/javascript">
        $(function() {
            $('.table-sort').dataTable({
                "aaSorting": [[0, "desc"]], //默认第几个排序
                "bStateSave": false, //状态保存
                "aoColumnDefs": [
                //                { "bVisible": false, "aTargets": [0] }, //控制列的隐藏显示
		          {"orderable": false, "aTargets": [3]}// 制定列不参与排序
		        ]
            });
            $('.table-sort tbody').on('click', 'tr', function() {
                if ($(this).hasClass('selected')) {
                    $(this).removeClass('selected');
                }
                else {
                    table.$('tr.selected').removeClass('selected');
                    $(this).addClass('selected');
                }
            });

            //Load Table
            $(".mt-20").css("display", "");
        });


        //1*--浏览或修改日志
        function ReadData(dataid) {
            var title = "工作日志";
            var url = "WorkLogDetail.aspx?LogID=" + dataid;
            layer_show(title, url, 900, 650);
        }

        //2*--新增数据
        function NewData() {
            var title = "工作日志";
            var url = "WorkLogDetail.aspx";
            layer_show(title, url, 900, 650);
        }


        //2*--ReAdd Log
        function NewData1() {
            var title = "补登日志";
            var url = "WorkLogDetail1.aspx";
            layer_show(title, url, 900, 650);
        }
    </script>

    <jasp:SecurityPanel ID="sec0" runat="server" AuthorityKind="DirectNoAccessPage">
    </jasp:SecurityPanel>
</asp:Content>
