using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WebFrame;
using WebFrame.Data;

namespace KORWeb.DDL
{
    /// <summary>
    /// ˵����Tb_KH_Project_Person
    /// ���룺�����û�
    /// ʱ�䣺2016/9/4 22:32:07
    /// </summary>
    [Serializable]
    public class Tb_KH_Project_PersonDD : DataEntityBase
    {
        //ʵ������
        public int? DataID { get; set; }
	    public String ParentID { get; set; }
	    public String UserID { get; set; }
	    public String UserName { get; set; }
	    public int? WorkLoad { get; set; }
	    public int? FactWorkLoad { get; set; }
	    public double? Bonus { get; set; }
	    public String Remark { get; set; }
    }
}