<%-- Author:admin--%>
<%-- DateTime:2016/5/31 14:28:09--%>

<%@ Page Title="�û��б�" Language="C#" MasterPageFile="~/SysManager/include/H-uiSecond.Master"
    AutoEventWireup="true" CodeBehind="JUserLoginLog_List.aspx.cs" Inherits="KORWeb.WebSite.admin47142725.JUserLoginLog_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--����������-->
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> ��ҳ <span class="c-gray en">&gt;</span> ��Ա���� <span class="c-gray en">&gt;</span> ��¼��־ <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="ˢ��" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
    <div class="pd-20">
        <!--��ѯ������-->
        <div class="text-c">
            �û�����<jasp:JTextBox ID="UserName" runat="server" class="input-text" Style="width: 150px"
                placeholder="�����û���" />&nbsp;
            �û�ID��<jasp:JTextBox ID="UserID" runat="server" class="input-text" Style="width: 150px"
                placeholder="�����û�ID" />&nbsp;
                  ��¼ʱ�䣺<jasp:JTextBox ID="beginDate" runat="server" class="input-text" Style="width: 150px"
                placeholder="��ʼʱ��" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" />&nbsp; ����<jasp:JTextBox
                    ID="endDate" runat="server" class="input-text" Style="width: 150px" placeholder="����ʱ��"
                    onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" />
            <button type="submit" class="btn btn-success radius" id="butSearch" name="">
                <i class="Hui-iconfont">&#xe665;</i> ��ѯ</button>
        </div>
        <!--����������-->
        <div class="cl pd-5 bg-1 bk-gray mt-20">
            <span class="l">
                <jasp:SecurityPanel ID="sec3" runat="server" AuthorityID="$$0" Visible="false">
                    <a href="javascript:;" onclick="javascript:return DeleteData('');" class="btn btn-danger radius">
                        <i class="Hui-iconfont">&#xe6e2;</i> ����ɾ��</a>
                </jasp:SecurityPanel>
                <jasp:SecurityPanel ID="sec1" runat="server" IsAlwaysReload="true" AuthorityID="$$1" Visible="false">
                    <a href="javascript:;" onclick="javascript:return EditData('');" class="btn btn-primary radius">
                        <i class="Hui-iconfont">&#xe600;</i> ���JUserLoginLog</a>
                </jasp:SecurityPanel>
            </span><span class="r"  style="display:none">�������ݣ�<strong><%=this.data1.TotalRow %></strong> ��</span>
        </div>
        <!--����Դ����-->
        <jasp:JDataSource ID="data1" runat="server" JType="Table" SqlID="V_JUserLoginLog" PageSize="-1"
            FieldsList="top(300) *">
            <ParaItems>
                 <jasp:ParameterItem ParaType="FrameLibPara" FrameLibParaName="UseObj8" DataName ="Province"   ParaName="xx" />
                <jasp:ParameterItem ParaType="FrameLibPara" FrameLibParaName="UseObj9" DataName ="City"  ParaName="xx"  />
                <jasp:ParameterItem ParaType="FrameLibPara" FrameLibParaName="UseObj10" DataName ="District"  ParaName="xx" />
                <jasp:ParameterItem ParaType="FrameLibPara" FrameLibParaName="DepartID" DataName ="DepartID"   ParaName="xx" />
                <jasp:ParameterItem ParaType="Control" ParaName="UserName" SearchOperator="Contains" />
                <jasp:ParameterItem ParaType="Control" ParaName="UserID" SearchOperator="Contains" />
                <jasp:ParameterItem ParaType="Control" ParaName="beginDate" DataName ="CreateTime" SearchOperator="BiggerAndEqual" />
                <jasp:ParameterItem ParaType="Control" ParaName="endDate" DataName ="CreateTime" SearchOperator="SmallerAndEqual" />
            </ParaItems>
        </jasp:JDataSource>
        <!--���ݱ��-->
        <div class="mt-20" style="display: none">
            <table class="table table-border table-bordered table-hover table-bg table-sort">
                <thead>
                    <tr class="text-c">
                        <th width="25">
                            <input type="checkbox" name="" value="">
                        </th>
                        <th>
                            �û�ID
                        </th>
                        <th>
                            �û�����
                        </th>
                        <th>
                            ��¼ʱ��
                        </th>
                        <th>
                            ��¼IP
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="data1" EnableViewState="false">
                        <ItemTemplate>
                            <tr class="text-c">
                                <td>
                                    <input type="checkbox" value='<%#Eval("ID") %>' name="selectdoc">
                                </td>
                                <td>
                                    <%#Eval("UserID")%>
                                </td>
                                <td>
                                    <%#Eval("UserName")%>
                                </td>
                                  <td>
                                    <%#Eval("CreateTime", "{0:yyyy-MM-dd HH:mm:ss}")%>
                                </td>
                                 <td>
                                    <%#Eval("Remark")%>
                                </td>
                           <%--     <td class="operate">
                                    <a style="display:none" onclick="javascript:return EditData('<%#Eval("ID") %>');" href='#'>��ϸ</a>
                                    <jasp:SecurityPanel ID="sec30" runat="server" IsAlwaysReload="true" AuthorityID="$$3">
                                        <a onclick="javascript:return DeleteData('<%#Eval("ID") %>');" href='#'>
                                            ɾ��</a>
                                    </jasp:SecurityPanel>
                                </td>--%>
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
                "aaSorting": [[1, "desc"]], //Ĭ�ϵڼ�������
                "bStateSave": true, //״̬����
                "aoColumnDefs": [
                {"bVisible": false, "aTargets": [0]}, //�����е�������ʾ
		          {"orderable": false, "aTargets": [0]}// �ƶ��в���������
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

        //1*---ɾ������(�����������
        function DeleteData(dataid) {
            var seldata = "";
            var first = true;
            if (dataid == "") {
                $('input[name="selectdoc"]:checked').each(function() {
                    if (first) {
                        first = false;
                        seldata += $(this).val();
                    }
                    else {
                        seldata += ",";
                        seldata += $(this).val();
                    }
                });
            }
            else {
                seldata = dataid;
            }

            if (seldata == "") {
                layer.alert('û��ѡ���κ�Ҫɾ��������!');
            }
            else {
                layer.confirm('ȷ��Ҫɾ��ѡ�е�������', function(index) {
                    var succ = KORWeb.WebSite.admin47142725.JUserLoginLog_List.DeleteData(seldata).value;
                    if (succ) {
                        layer.msg("ɾ���ɹ���", { icon: 1, time: 1000 });
                        $('#butSearch').click();
                    }
                    else {
                        layer.msg("ɾ��ʧ�ܣ������ԣ�", { icon: 1, time: 1000 });
                    }
                });
            }
        }

        //2*--������༭����
        function EditData(dataid) {
            var title = "";
            var url = "";
            if (dataid == "") {
                title = "����JUserLoginLog";
                url = "JUserLoginLog_Detail.aspx";
            }
            else {
                title = "�༭JUserLoginLog";
                url = "JUserLoginLog_Detail.aspx?ID="+dataid;
            }

            layer_show(title, url, 800, 600);
        }
    </script>

    <jasp:SecurityPanel ID="sec0" runat="server" AuthorityKind="DirectNoAccessPage" AuthorityID="$$0">
    </jasp:SecurityPanel>
</asp:Content>
