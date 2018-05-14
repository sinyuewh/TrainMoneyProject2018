using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WebFrame;
using WebFrame.Data;

namespace KORWeb.DDL
{
    /// <summary>
    /// 说明：实体类
    /// 编码：jsj
    /// 时间：2013-8-2 14:53:16
    /// </summary>
    [Serializable]
    public class JStrInfoDD : DataEntityBase
    {
        //实体属性
        public int? Num { get; set; }
	    public String StrID { get; set; }
	    public String StrText { get; set; }
	    public String Author { get; set; }
	    public DateTime? Createtime { get; set; }
	    public String Modelid { get; set; }
	    public String Remark { get; set; }
        public String Kind { get; set; }
    }
}