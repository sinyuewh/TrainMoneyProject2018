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
    public class JAuthorityDD : DataEntityBase
    {
        //ʵ������
        public int? Num { get; set; }
	    public String AuthorityID { get; set; }
	    public String AuthorityName { get; set; }
	    public String Author { get; set; }
	    public DateTime? CreateTime { get; set; }
	    public String ModelID { get; set; }
	    public String Remark { get; set; }
    }
}