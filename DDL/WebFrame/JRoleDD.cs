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
    public class JRoleDD : DataEntityBase
    {
        //ʵ������
        public int? Num { get; set; }
	    public String RoleID { get; set; }
	    public String RoleName { get; set; }
	    public String Kind { get; set; }
	    public String Modelid { get; set; }
	    public String Remark { get; set; }
    }
}