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
    public class JStrInfoDD : DataEntityBase
    {
        //ʵ������
        public int? Num { get; set; }
	    public String StrID { get; set; }
	    public String StrText { get; set; }
	    public String Author { get; set; }
	    public DateTime? Createtime { get; set; }
	    public String Modelid { get; set; }
	    public String Remark { get; set; }
        public String Kind { get; set; }
    }
}