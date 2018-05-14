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
    public class JModelDD : DataEntityBase
    {
        //ʵ������
        public int? Num { get; set; }
        public String ModelGroup { get; set; }
	    public String ModelID { get; set; }
	    public String ModelName { get; set; }
	    public String ModelText { get; set; }
	    public String ModelICo { get; set; }
	    public String ModelUrl { get; set; }
	    public int? MenuID { get; set; }
	    public String AuthorityUnitID { get; set; }
	    public String Remark { get; set; }
    }
}