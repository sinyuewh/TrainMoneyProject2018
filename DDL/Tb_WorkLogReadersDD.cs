using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WebFrame;
using WebFrame.Data;

namespace KORWeb.DDL
{
    /// <summary>
    /// ˵����Tb_WorkLogReaders
    /// ���룺��Ŧ��
    /// ʱ�䣺2016/8/19 16:11:48
    /// </summary>
    [Serializable]
    public class Tb_WorkLogReadersDD : DataEntityBase
    {
        //ʵ������
        public int? DataID { get; set; }
	    public String ParentID { get; set; }
	    public String ReaderID { get; set; }
    }
}