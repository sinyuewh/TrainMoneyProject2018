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
    public class JUserDD : DataEntityBase
    {
        //ʵ������
        public int? Num { get; set; }
	    public String UserID { get; set; }
	    public String PassWord { get; set; }
	    public String UserName { get; set; }
	    public DateTime? LastLogin { get; set; }
	    public int? LoginCount { get; set; }
        public int? Status { get; set; }
        public String AuthorityID { get; set; }
        public String AuthorityGroup { get; set; }
        public String WbCardID { get; set; }
        public String DepartID { get; set; }
    }
}