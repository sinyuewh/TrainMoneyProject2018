using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WebFrame;
using WebFrame.Data;

namespace KORWeb.DDL
{
    /// <summary>
    /// ˵����ʵ����
    /// ���룺jsj
    /// ʱ�䣺2013-8-2 14:53:16
    /// </summary>
    [Serializable]
    public class JUserActionLogDD : DataEntityBase
    {
        //ʵ������
        public int? ID { get; set; }
	    public DateTime? CreateTime { get; set; }
	    public String UserID { get; set; }
	    public String UserName { get; set; }
	    public String ActionName { get; set; }
	    public String MainTable { get; set; }
	    public String Remark { get; set; }
	    public String ActionInfo { get; set; }
    }
}