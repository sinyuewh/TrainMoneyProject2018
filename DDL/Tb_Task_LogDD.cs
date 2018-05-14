using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WebFrame;
using WebFrame.Data;

namespace KORWeb.DDL
{
    /// <summary>
    /// ˵����Tb_Task_Log
    /// ���룺����
    /// ʱ�䣺2016/8/11 17:28:13
    /// </summary>
    [Serializable]
    public class Tb_Task_LogDD : DataEntityBase
    {
        //ʵ������
        public int? GuidID { get; set; }
	    public int? ParentGuid { get; set; }
	    public String Stitle { get; set; }
	    public String Content { get; set; }
	    public DateTime? AddTime { get; set; }
	    public String AddUserID { get; set; }
	    public String AddUserNet { get; set; }
	    public int? Kind { get; set; }
	    public String RelateFile { get; set; }
    }
}