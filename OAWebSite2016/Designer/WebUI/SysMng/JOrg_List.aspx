<%@ Page Language="C#" AutoEventWireup="true"
 Title ="��֯�ṹ"
MasterPageFile="~/Designer/include/Second.Master"
Inherits="WebFrame.SysMng.JOrg_ListBU" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script language="javascript" type="text/javascript">
        //����ӽڵ�
        function AddChildNode() {
            var url1 = "JOrg_Detail.aspx";
            var parentID = $("#<%=this.curNode.ClientID %>").val();
            url1 = url1 + "?ParentID=" + parentID;

            AlertMsg(url1, "�����µ���֯�ṹ", 500, 250, true, 75);
            return false;
        }

        //�޸��ӽڵ�
        function EditChildNode() {
            var url1 = "JOrg_Detail.aspx";
            var OrgID = $("#<%=this.curNode.ClientID %>").val();
            if (OrgID != "") {
                url1 = url1 + "?OrgID=" + OrgID;

                AlertMsg(url1, "�޸���֯�ṹ", 500, 250, true, 75);
            }
            else {
                alert("������ѡһ��Ҫ�޸ĵ���֯������");
            }
            return false;
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceForNavigatorTitle" runat="server">
    ϵͳ���� ������֯����
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceForNavigatorButtonArea"
    runat="server">
    <div style="display: none">
        <asp:TextBox ID="curNode" runat="server"></asp:TextBox>
    </div>
    <jasp:JHyperLink ID="hyper1" AuthorityID="A1" runat="server" NavigateUrl="#"
        onclick="javascript:return AddChildNode();" Text='<img src="/images/Frame/contextMenu/add.png" width="14" height="14" border="0" alt="" />&nbsp;��Ӳ���'></jasp:JHyperLink>
    &nbsp;&nbsp;
    <jasp:JHyperLink ID="hyper2" AuthorityID="A1" runat="server" NavigateUrl="#"
        onclick="javascript:return EditChildNode();" Text='<img src="/images/Frame/contextMenu/edit.gif" width="14" height="14" border="0" alt="" />&nbsp;�޸Ĳ���'></jasp:JHyperLink>
    &nbsp;
    <jasp:JLinkButton ID="linkDel" AuthorityID="A1" runat="server" Text='<img src="/images/Frame/contextMenu/delete.png" width="14" height="14" border="0"/>&nbsp;ɾ������'
        OnClientClick="javascript:return confirm('��ʾ��ȷ��Ҫɾ���ò�����')"></jasp:JLinkButton>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceForContent" runat="server">
    <div style="margin: 10 0 5 5">
        &nbsp;״̬��<jasp:AppDropDownList ID="Status" runat="server">
            <asp:ListItem Text="����" Value="1"></asp:ListItem>
            <asp:ListItem Text="���ޣ�����ͣ�ã�" Value=""></asp:ListItem>
        </jasp:AppDropDownList>
        &nbsp;&nbsp;
        <jasp:JButton ID="butSearch1" runat="server" Text="�� ��" CssClass="submitButton" />
    </div>
    <hr size="1" />
    <asp:TreeView ID="tvCommittee" runat="server" ImageSet="Arrows" ShowLines="True"
        ExpandDepth="1">
        <ParentNodeStyle Font-Bold="False" />
        <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
        <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px"
            VerticalPadding="0px" BackColor="Gray" />
        <NodeStyle Font-Names="Verdana" Font-Size="11pt" ForeColor="Black" HorizontalPadding="5px"
            NodeSpacing="0px" VerticalPadding="0px" />
    </asp:TreeView>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceForPageChange" runat="server">
    &nbsp;
    <!--ҳ��Ȩ�޿���-->
    <jasp:SecurityPanel ID="sec1" AuthorityID="$$0" runat="server" AuthorityKind="DirectNoAccessPage">
    </jasp:SecurityPanel>
</asp:Content>
