using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFrame.Util;
using KORWeb.BUL;
using WebFrame;

namespace KORWeb.WebSite.admin231402531
{
    public partial class JUser_Detail : System.Web.UI.Page 
    {
        protected override void OnInit(EventArgs e)
        {
            this.btnSubmit.ServerClick += new EventHandler(btnSubmit_ServerClick);
            base.OnInit(e);
        }

        //提交数据的代码
        void btnSubmit_ServerClick(object sender, EventArgs e)
        {
            String error = String.Empty;
            Control con1=bean1.CheckControls(out error);  //进行数据验证
            if (con1 != null)
            {
                UTools.Alert(error);
            }
            else
            {
                JUserBU bu1 = new JUserBU();
                String olduserid = String.Empty;
                if (this.UserID.Enabled == false)
                {
                    olduserid = this.UserID.Text;
                }
                int succ = bu1.SaveData(olduserid, this.Num.Text, this.UserID.Text, this.UserName.Text,
                    this.Status.SelectedValue, this.AuthorityID.SelectedValue, "");
                if (succ==1)   //submit succ
                {
                    String js1 = "layer.alert('操作成功!',function(index){;";
                    js1 = js1 + " var index = parent.layer.getFrameIndex(window.name);";
                    js1 = js1 + " parent.$('#butSearch').click();";
                    js1 = js1 + " parent.layer.close(index);});";
                    JAjax.ExecuteJS(js1);
                }
                else
                {
                    UTools.Alert("操作失败，请重试!");
                }
            }
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
               
            }
        }

        protected override void OnPreRenderComplete(EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                this.bean1.SetControlValues();       //填充数据
            }
            base.OnPreRenderComplete(e);
        }
    }
}