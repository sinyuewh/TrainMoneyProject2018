using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WebFrame;
using WebFrame.Data;

namespace KORWeb.DDL
{
    /// <summary>
    /// ˵����Tb_Project_Person
    /// ���룺�����û�
    /// ʱ�䣺2016/8/8 14:46:48
    /// </summary>
    [Serializable]
    public class Tb_Project_PersonDD : DataEntityBase
    {
        //ʵ������
        public int? Num { get; set; }
	    public String ProjectGuidID { get; set; }
	    public String PersonID { get; set; }
	    public String PrjRole { get; set; }
	    public String GuidID { get; set; }
	    public String ManageID { get; set; }
    }
}