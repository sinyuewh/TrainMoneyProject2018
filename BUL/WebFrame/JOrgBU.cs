using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

using WebFrame;
using WebFrame.Data;
using WebFrame.Util;
using KORWeb.DDL;
using KORWeb.DAL;

namespace KORWeb.BUL
{
    /// ˵����JOrg
    /// ���룺���ټ�
    /// ʱ�䣺2014-12-27 13:52:09
    public partial  class JOrgBU
    {  
        public String ErrorInfo { get; set; }
        
                       
        #region ʵ������
        /// <summary>
        /// �õ������������б�����
        /// </summary>
        /// <param name="condition"></param>
        /// <returns></returns>
        public DataTable GetDepartTable(List<SearchField> condition,String fields)
        {
            JOrgDA da1 = new JOrgDA();
            DataTable dt1= da1.GetListData(condition, -1, -1, "num", fields);
            return dt1;
        }
        #endregion

        #region ��̬����
        /// <summary>
        /// ���ݲ��ŵ�ID�õ����ŵ�Name
        /// </summary>
        /// <param name="OrgID">����ID</param>
        /// <returns>����Name</returns>
        public static String GetOrgNameByID(String OrgID)
        {
            String result = String.Empty;
            if (String.IsNullOrEmpty(OrgID) == false)
            {
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("OrgID", OrgID));
                JOrgDA da1 = new JOrgDA();
                DataRow dr1 = da1.GetFirstDataRow(condition, "OrgName");
                if (dr1 != null) result = dr1[0].ToString();
            }
            return result;
        }
        #endregion

        #region ˽�з���
        #endregion
    }
}
