using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WebFrame;
using WebFrame.Data;

namespace KORWeb.DDL
{
    /// <summary>
    /// ˵����Tb_KH_Project
    /// ���룺�����û�
    /// ʱ�䣺2016/9/4 22:32:07
    /// </summary>
    [Serializable]
    public class Tb_KH_ProjectDD : DataEntityBase
    {
        //ʵ������
        public String GuidID { get; set; }
	    public int? Byear { get; set; }
	    public String ProjectGuidID { get; set; }
	    public String PrjNum { get; set; }
	    public String PrjName { get; set; }
	    public DateTime? BegDate { get; set; }
	    public DateTime? PlanEndDate { get; set; }
	    public DateTime? FactEndDate { get; set; }
	    public int? TotalDay { get; set; }
	    public int? DalayDay { get; set; }
	    public double? DalayRate { get; set; }
	    public int? TotalWorkLoad { get; set; }
	    public double? Bonus { get; set; }
	    public String Remark { get; set; }
    }
}