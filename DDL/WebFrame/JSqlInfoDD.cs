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
    public class JSqlInfoDD : DataEntityBase
    {
        //ʵ������
        public int? Num { get; set; }
	    public String SqlID { get; set; }
	    public String SqlText { get; set; }
	    public String Author { get; set; }
	    public DateTime? Createtime { get; set; }
	    public String ModelID { get; set; }
	    public String Remark { get; set; }
    }
}