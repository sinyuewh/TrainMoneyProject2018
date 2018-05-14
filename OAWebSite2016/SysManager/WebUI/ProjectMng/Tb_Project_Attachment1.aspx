﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SysManager/include/H-uiSecond.Master"
    AutoEventWireup="true" %>

<script runat="server">
    KORWeb.BUL.Tb_Project_PersonBU person1 = new Tb_Project_PersonBU();
    protected override void OnInit(EventArgs e)
    {
        this.Repeater1.ItemDataBound += new RepeaterItemEventHandler(Repeater1_ItemDataBound);
        base.OnInit(e);
    }

    void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        System.Data.DataRowView dv = e.Item.DataItem as System.Data.DataRowView;
        System.Data.DataRow dr = dv.Row;
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="/JS/lhgcalendar.min.js" type="text/javascript"></script>

    <script language="javascript">
        var Arr1 = new Array();
        Arr1[0] = "未立项";
        Arr1[1] = "实施中";
        Arr1[2] = "已完成";
        Arr1[3] = "已终止";
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--导航区设置-->
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 项目文档 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
    <div class="pd-20">
        <!--查询区设置-->
        <div class="text-c">
            项目状态：<span class="select-box" style="width: 150px">
                <jasp:JDropDownList ID="Status" class="select" runat="server" >
                    <asp:ListItem Text="--全部--" Value=""></asp:ListItem>
                    <asp:ListItem Text="实施中" Value="1"></asp:ListItem>
                    <asp:ListItem Text="已完成" Value="2"></asp:ListItem>
                    <asp:ListItem Text="已终止" Value="3"></asp:ListItem>
                    <asp:ListItem Text="立项中" Value="0"></asp:ListItem>
                </jasp:JDropDownList>
            </span>&nbsp;&nbsp; 项目编号：<jasp:JTextBox ID="prjNum" runat="server" class="input-text"
                Style="width: 150px" placeholder="" autocomplete="on" list="datalist1" />
            &nbsp;&nbsp; 项目名称：<jasp:JTextBox ID="prjName" runat="server" class="input-text" Style="width: 180px"
                placeholder="" autocomplete="on" list="datalist2" />
            
            &nbsp;&nbsp;增加日期：<jasp:JTextBox ID="Time0" runat="server" class="input-text" Style="width: 100px"
                placeholder="" onclick="$.calendar();" />
            ～<jasp:JTextBox ID="Time1" runat="server" class="input-text" Style="width: 100px"
                placeholder="" onclick="$.calendar();" />
            &nbsp;&nbsp;
            <button type="submit" class="btn btn-success radius" id="butSearch" name="">
                <i class="Hui-iconfont">&#xe665;</i> 查询</button>
            <datalist id="datalist1">
                <asp:Repeater ID="rep1" runat="server" DataSourceID="data2" EnableViewState="false">
                    <ItemTemplate>
                        <option value="<%#Eval("prjNum")%>"><%#Eval("prjNum")%></option>
                    </ItemTemplate>
                </asp:Repeater>
             </datalist>
            <datalist id="datalist2">
                <asp:Repeater ID="Repeater2" runat="server" DataSourceID="data2" EnableViewState="false">
                    <ItemTemplate>
                        <option value="<%#Eval("prjName")%>"><%#Eval("prjName")%></option>
                    </ItemTemplate>
                </asp:Repeater>
             </datalist>
        </div>
        <!--操作区设置-->
        <div class="cl pd-5 bg-1 bk-gray mt-20">
            <span class="l">
                <span class="l">
                <jasp:SecurityPanel ID="sec1" runat="server">
                    <a href="javascript:;" onclick="javascript:return NewData();" class="btn btn-primary radius">
                        <i class="Hui-iconfont">&#xe600;</i> 添加新文档</a>
                </jasp:SecurityPanel>
            </span>
            </span><span class="r">共有数据：<strong><%=this.data1.TotalRow %></strong>
                条</span>
        </div>
        <!--数据源定义-->
        <jasp:JDataSource ID="data1" runat="server" JType="Table" SqlID="Tb_Project_AttachmentView"
            PageSize="-1" OrderBy="UploadTime desc">
            <ParaItems>
                <jasp:ParameterItem ParaType="Control" ParaName="prjNum" SearchOperator="Contains" />
                <jasp:ParameterItem ParaType="Control" ParaName="prjName" SearchOperator="Contains" />
                
                
                <jasp:ParameterItem ParaType="Control" ParaName="Status" DataType="NumericType" />
                <jasp:ParameterItem ParaType="Control" ParaName="Time0" DataName="UploadTime>=cdate('{0}')"
                    SearchOperator="UserDefine" />
                <jasp:ParameterItem ParaType="Control" ParaName="Time1" DataName="UploadTime<=cdate('{0} 23:59:59')"
                    SearchOperator="UserDefine" />
            </ParaItems>
        </jasp:JDataSource>
        
        <jasp:JDataSource ID="data2" runat="server" JType="Table" SqlID="Tb_ProjectView"
            PageSize="-1" OrderBy="begDate desc">
            <ParaItems>
                <jasp:ParameterItem ParaType="Control" ParaName="prjNum" SearchOperator="Contains" />
                <jasp:ParameterItem ParaType="Control" ParaName="prjName" SearchOperator="Contains" />
                <jasp:ParameterItem ParaType="Control" ParaName="Status" DataType="NumericType" />
                <jasp:ParameterItem ParaType="Control" ParaName="Time0" DataName="begDate>=cdate('{0}')"
                    SearchOperator="UserDefine" />
                <jasp:ParameterItem ParaType="Control" ParaName="Time1" DataName="begDate<=cdate('{0} 23:59:59')"
                    SearchOperator="UserDefine" />
            </ParaItems>
        </jasp:JDataSource>
        <!--数据表格-->
        <div class="mt-20" style="">
            <table class="table table-border table-bordered table-hover table-bg table-sort">
                <thead>
                    <tr class="text-c">
                        <th>
                            序号
                        </th>
                        <th>
                            项目编号
                        </th>
                        <th>
                            项目名称
                        </th>
                        <th>
                            项目状态
                        </th>
                        <th>
                            文档类别
                        </th>
                        <th style="width: 400px">
                            文档描述
                        </th>
                        <th>
                            相关附件
                        </th>
                        <th>
                            用户
                        </th>
                        <th>
                            增加时间
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="data1" EnableViewState="false">
                        <ItemTemplate>
                            <tr class="text-c">
                                <td>
                                    <%# (this.data1.CurPage-1)*this.data1.PageSize+Container.ItemIndex+1 %>
                                </td>
                                <td>
                                    <%#Eval("prjNum") %>
                                </td>
                                <td>
                                    <%#Eval("prjName") %>
                                </td>
                                <td>

                                    <script>document.write(Arr1[<%#Eval("Status")%>])</script>

                                </td>
                                <td class="operate">
                                    <a href="">
                                        <%#Eval("Kind") %></a>
                                </td>
                                <td class="text-l">
                                    <%#Eval("Describle").ToString() == "" ? "无" : Eval("Describle")%>
                                </td>
                                <td class="operate">
                                    <a href='/Comm/ScanFile.aspx?filepath=<%#Eval("EncryptFileName")%>&filename=<%#Eval("FileName")%>'><%#Eval("FileName")%></a>
                                </td>
                                <td >
                                    <%#Eval("UploadPerson")%>
                                </td>
                                <td>
                                    <%#Eval("UploadTime", "{0:yyyy-MM-dd hh:mm:ss}")%>
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
                "bStateSave": true, //状态保存
                "aoColumnDefs": [
                //                { "bVisible": false, "aTargets": [0] }, //控制列的隐藏显示
                //  {"orderable": false, "aTargets": [9]}// 制定列不参与排序
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



        //2*--新增数据
        function NewData() {
            var title = "添加新项目文档";
            var url = 'Tb_Project_Attachment_ADD.aspx';
            layer_show(title, url, 650, 500);
        }

    </script>

</asp:Content>
