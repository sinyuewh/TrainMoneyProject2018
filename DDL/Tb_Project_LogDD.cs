using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WebFrame;
using WebFrame.Data;

namespace KORWeb.DDL
{
    /// <summary>
    /// ˵����Tb_Project_Log
    /// ���룺�����û�
    /// ʱ�䣺2016/8/8 22:57:51
    /// </summary>
    [Serializable]
    public class Tb_Project_LogDD : DataEntityBase
    {
        //ʵ������
        public String GuidID { get; set; }
	    public String ParentGuid { get; set; }
	    public String Stitle { get; set; }
	    public String Content { get; set; }
	    public DateTime? AddTime { get; set; }
	    public String AddUserID { get; set; }
	    public String AddUserNet { get; set; }
    }
}