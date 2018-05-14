<%@ Page Title="" Language="C#" MasterPageFile="~/Designer/include/Third.Master"
    AutoEventWireup="true" Inherits="WebFrame.Designer.SelectTableBU" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script language ="javascript" type ="text/javascript">
        $(document).ready(function () {
            $(".Caption2 :checkbox").click(function () {
                if (this.checked) {
                    $(this).siblings("#info").text("ȫ��ѡ");
                    $(".Data2 :checkbox").attr({ 'checked': 'true' });
                }
                else {
                    $(this).siblings("#info").text("ȫѡ");
                    $(".Data2 :checkbox").attr({ 'checked': '' });
                }
            });

            //��ť��click�¼�-----------------------------------------------------------
            $(".ButtonArea :submit").first().click(function () {
                var selvalue = "";
                $(".Data2 :checkbox").each(function () {
                    if (this.checked) {
                        if (selvalue == "") {
                            selvalue = $(this).siblings("label").text();
                        }
                        else {
                            selvalue = selvalue + "," + $(this).siblings("label").text();
                        }
                    }
                });


                var win = art.dialog.open.origin;
                $('#<%=Request["parentID"]%>', win.document).val(selvalue);
                
                //$('#<%=Request["parentID"]%>', parent.document).val(selvalue);
                art.dialog.close();
                return false;
            });
            //---------------------------------------------------------------
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="script1" runat="server">
    </asp:ScriptManager>
    <br />
    <!--��������Դ-->
    
    <table class="DetailTable" border="0" align="center" cellpadding="1" cellspacing="1"
        style="width: 90%">
        <tr>
            <td class="Caption2" style ="width:20%">
                ��ѡ�������<br />
                <span id="info" style="font-weight:normal">ȫѡ</span>
                <asp:CheckBox ID="chk1" runat ="server"  />
            </td>
            <td class="Data2">
                <asp:CheckBoxList ID="chkTable" runat ="server" RepeatColumns="3" Width ="95%">
                </asp:CheckBoxList>
            </td>
        </tr>
    </table>
    <div class="ButtonArea">
        <asp:UpdatePanel ID="update1" runat="server">
            <ContentTemplate>
                <asp:Button ID="btnSubmit" runat="server" Text="ȷ ��" />
                &nbsp;
                <asp:Button ID="btnClose" runat="server" Text="�� ��" OnClientClick="javascript:art.dialog.close();" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
