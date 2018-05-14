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
    public class JUserUrlDD : DataEntityBase
    {
        //ʵ������
        public int? Num { get; set; }
	    public int? InfoID { get; set; }
	    public String UserID { get; set; }
	    public String UrlText { get; set; }
	    public String UrlValue { get; set; }
	    public DateTime? AddTime { get; set; }
    }
}