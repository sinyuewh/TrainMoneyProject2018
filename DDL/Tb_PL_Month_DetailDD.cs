using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WebFrame;
using WebFrame.Data;

namespace KORWeb.DDL
{
    /// <summary>
    /// ˵����Tb_PL_Month_Detail
    /// ���룺�����û�
    /// ʱ�䣺2016/10/27 16:48:36
    /// </summary>
    [Serializable]
    public class Tb_PL_Month_DetailDD : DataEntityBase
    {
        //ʵ������
        public int? DataID { get; set; }
	    public int? CheckDataID { get; set; }
	    public int? Num { get; set; }
	    public String PrjNum { get; set; }
	    public String PlanContent { get; set; }
	    public String CompleteContent { get; set; }
	    public int? Status { get; set; }
	    public int? WorkLoad { get; set; }
	    public int? Score { get; set; }
	    public String Remark { get; set; }
    }
}