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
    public class JAuthorityRolesDD : DataEntityBase
    {
        //ʵ������
        public int? Num { get; set; }
	    public int? ID { get; set; }
	    public String AuthorityUnitID { get; set; }
	    public String RoleID { get; set; }
    }
}