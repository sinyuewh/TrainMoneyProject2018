<%@ Page Language="C#" AutoEventWireup="true" Inherits="WebFrame.Designer.TopBU" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <style type="text/css">
        img
        {
            border: 0;
        }
        .menu
        {
            height: 29px;
            float: left;
        }
        .menu ul
        {
            list-style: none;
            padding: 0;
            margin: 0;
        }
        .menu ul li
        {
            background-image: url(/images/Frame/menu1.gif);
            background-repeat: repeat-x;
            width: 100px;
            height: 29px;
            float: left;
            margin-right: 5px;
            text-align: center;
            line-height: 29px;
            cursor: pointer;
        }
        .menu ul li span
        {
            font-size: 13px;
            font-weight: bolder;
            color: #FFFFFF;
        }
        a
        {
            color: #000;
            text-decoration: none;
            blr: expression(this.onFocus=this.blur());
        }
    </style>

    <script src="/Js/jquery-1.4.2.min.js" type="text/javascript"></script>

    <script src="/Js/jquery-ui-1.8.4.custom.min.js" type="text/javascript"></script>

    <script src="/js/PubLib.js" type="text/javascript"></script>

    <script type="text/javascript">

        function MyRefresh() {
            top.frames["dmMain"].document.location.reload();
        }

        function MyBack() {
            top.frames["dmMain"].history.back();
        }

        function MyForward() {
            top.frames["dmMain"].history.forward();
        }

        $(document).ready(function() {
            $('.menu ul li').click(function() {

                try {
                    var pos1 = $(this).index();
                    top.frames["menu"].ShowChildSystem(pos1);
                    var url = "";
                    var title = "";

                    //����Ĭ�ϵĵ�һ�����ӵ�ַ
                    var parent1 = $('.childSystem', top.frames["menu"].document)[pos1];
                    var title = $('.accordionContent ul li div a', parent1).first()[0].innerHTML;

                    var title1 = $('.accordionContent ul li div a', parent1).attr('title');
                    if (title1 != undefined && title1 != "") {
                        title = title1;
                    }

                    var url = $('.accordionContent ul li div a', parent1).first()[0].id;

                    if (url != "") {
                        top.frames["dmMain"].addTab(title, url);
                    }
                }
                catch (e) {
                    //alert(e.toString());
                }
            });
        });


        //�ӵ��û��Ŀ�ݷ�ʽ
        function AddFavor() {
            var urlText = "";
            var curindex1=top.frames["dmMain"].getCurrentTabIndex();

            //����Url��ַ
            //var urlValue = top.frames["dmMain"].document.location.href;
            var urlValue = top.frames["dmMain"].frames[curindex1].document.location.href;
            var pos1 = urlValue.indexOf("//") + 2;
            urlValue = urlValue.substr(pos1);
            pos1 = urlValue.indexOf("/");
            urlValue = urlValue.substr(pos1);

            //����UrlText
            var urlText = top.frames["dmMain"].frames[curindex1].document.title;

            var url1 = "/Designer/WebUI/AddUserFavor.aspx?urlValue=" + escape(urlValue) + "&urlText=" + escape(urlText);
            myShowModalDialog(url1, 200, 450);
        }


        //�۵���չ������
        var oldValue = top.document.getElementById("frm1").cols;
        function OpenOrCloseMenu() {
            var url1 = document.getElementById("zd1");
            if (url1.title == "���ص���") {
                url1.innerHTML = "<img src='/images/Frame/ico/add.png' style='vertical-align: middle' />��ʾ����";
                url1.title = "��ʾ����";
                top.document.getElementById("frm1").cols = "0,*";
            }
            else {
                url1.innerHTML = "<img src='/images/Frame/ico/del.png' style='vertical-align: middle' />���ص���";
                url1.title = "���ص���";
                top.document.getElementById("frm1").cols = oldValue;
            }
        }
    </script>

</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0"
    style="background-image: url(/images/Frame/TopBg1.gif); background-repeat: repeat-x;
    height: 96px">
    <!-- ImageReady Slices (����ҳ��.psd) -->
    <table id="__01" border="0" cellpadding="0" cellspacing="0" width="100%" style="background-image: url(/images/Frame/logo.JPG);
        background-repeat: no-repeat; height: 96px">
        <tr>
            <td colspan="2" style="height: 53px">
                <div style="width: 40%; float: right;">
                    <span style="color: White; font-family: ����; float: right; margin-right: 10px;">
                        <asp:Label ID="lblWelcome" runat="server" Text=""></asp:Label></span>
                </div>
            </td>
        </tr>
        <tr>
            <td style="height: 29px" valign="top">
                <table border="0" cellpadding="0" cellspacing="0" style="height: 29px">
                    <tr>
                        <td width="180px">
                        </td>
                        <td>
                            <div class="menu">
                                <ul>
                                    <asp:Repeater ID="rep1" runat="server" EnableViewState="false">
                                        <ItemTemplate>
                                            <li><span>
                                                <%# Container.DataItem %></span></li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
            <td height="30px" align="right" valign="middle">
                <div style="text-align: right; line-height: 30px; float: right; margin-right: 10px;">
                    <span><a href="JavaScript:MyBack();" style="color: #FFFFFF;
                        font-size: 12px; display: none">
                        <img src="/images/Frame/ico/back.gif" style="vertical-align: middle" alt="" />����</a> <a 
                            href="JavaScript:MyForward();" style="color: #FFFFFF; font-size: 12px;display: none">
                            <img src="/images/Frame/ico/forward.gif" alt="" style="vertical-align: middle" />ǰ��</a>
                        <a href="JavaScript:MyRefresh();" style="color: #FFFFFF; font-size: 12px;display: none">
                            <img src="/images/Frame/ico/refresh.gif" alt="" style="vertical-align: middle" />ˢ��</a>
                            
                        <a id="zd1" title="���ص���" href="JavaScript:OpenOrCloseMenu();" style="color: #FFFFFF;
                            font-size: 12px">
                            <img src="/images/Frame/ico/del.png" style="vertical-align: middle" />���ص���</a>
                        <a title="��ҳ��ӵ���ҳ�Ŀ�ݷ�ʽ" href="JavaScript:AddFavor();" style="color: #FFFFFF; font-size: 12px">
                            <img src="/images/Frame/ico/add1.png" style="vertical-align: middle" />������</a>
                            
                        <a href="/Login/SignOut.aspx" style="color: #FFFFFF; font-size: 12px">
                            <img src="/images/Frame/ico/exit.gif" style="vertical-align: middle" />�˳�ϵͳ</a>                      
<%--                        <a href="/Default.aspx" target="_blank" style="color: #FFFFFF; font-size: 12px">
                            <img src="/images/Frame/ico/app.gif" style="vertical-align: middle" border="0" />ǰ̨��վ</a>  --%>    
                      </span>
                </div>
            </td>
        </tr>
    </table>
    <!-- End ImageReady Slices -->
</body>
</html>
