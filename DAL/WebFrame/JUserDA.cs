using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using WebFrame;
using WebFrame.Data;
using WebFrame.Util;
using KORWeb.DDL;

namespace KORWeb.DAL
{
    /// ˵�������ݲ�����
    /// ���룺jsj
    /// ʱ�䣺2013-8-2 14:54:49
    public partial  class JUserDA
    {
        #region ͨ�õ�����DAL
        private const String TableName = "JUser";
        private JConnect daConnect = null;
        
        /// <summary>
        /// �޲������캯��
        /// </summary>
        public JUserDA()
        {
            this.daConnect = JConnect.GetConnect();
        }
        
        /// <summary>
        /// ���������캯��
        /// </summary>
        /// <param name="conn">DAʹ�õ����ݿ�����</param>
        public JUserDA(JConnect conn)
        {
            this.daConnect = conn;
        }

        /// <summary>
        /// ����һ��ʵ������
        /// </summary>
        /// <param name="data1">ʵ������</param>
        public void NewData(JUserDD data1)
        {
             JTable tab1 = new JTable(daConnect,TableName);
             tab1.InsertData(data1);
             tab1.Close();
        }
        
        /// <summary>
        /// ����һ������
        /// </summary>
        /// <param name="data1">Dictionary����</param>
        public void NewData(Dictionary<String, object> data1)
        {
            JTable tab1 = new JTable(daConnect,TableName);
            tab1.InsertData(data1);
            tab1.Close();
        }
        
         /// <summary>
        /// ����һ������
        /// </summary>
        /// <param name="data1"></param>
        public void NewData(DataRow  data1)
        {
            Dictionary<string, object> data2 = FrameLib.GetDictionaryByDataRow(data1);
            NewData(data2);
        }

        /// <summary>
        /// ��������ɾ������
        /// </summary>
        /// <param name="condition">ɾ����������</param>
        public void DeleteData(List<SearchField> condition)
        {
            JTable tab1 = new JTable(daConnect,TableName);
            tab1.DeleteData(condition);
            tab1.Close();
        }

        /// <summary>
        /// �����������޸�һ��ʵ������
        /// </summary>
        /// <param name="condition">�޸����ݵ�����</param>
        /// <param name="data1">�µ�����</param>
        public void EditData(List<SearchField> condition,JUserDD data1)
        {
            JTable tab1 = new JTable(daConnect,TableName);
            tab1.EditData(data1,condition);
            tab1.Close();
        }
        
        /// <summary>
        /// �����������޸�һ������
        /// </summary>
        /// <param name="condition">�޸����ݵ�����</param>
        /// <param name="data1">�µ�����</param>
        public void EditData(List<SearchField> condition, Dictionary<String,object> data1)
        {
            JTable tab1 = new JTable(daConnect,TableName);
            tab1.EditData(data1, condition);
            tab1.Close();
        }

        /// <summary>
        /// ���������õ��б�����
        /// </summary>
        /// <param name="condition">��ѯ����</param>
        /// <param name="PageSize">ҳ��С</param>
        /// <param name="CurPage">��ǰҳ</param>
        /// <param name="Fields">�����ֶ�</param>
        /// <param name="orderBy">������ʽ</param>
        /// <param name="TotalRow">����������</param>
        /// <param name="Fields">Ҫ��ʾ���ֶ�</param>
        /// <returns>�б�����</returns>
        public DataTable GetListData(List<SearchField> condition,
            int PageSize, int CurPage,String orderBy,
            out int TotalRow,params String[] Fields)
        {
            TotalRow = 0;
            DataTable dt1 = null;
            JTable tab1 = new JTable(daConnect,TableName);
            tab1.PageSize = PageSize;
            if (String.IsNullOrEmpty(orderBy) == false)
            {
                tab1.OrderBy = orderBy;
            }
            dt1=tab1.SearchData(condition, CurPage, Fields).Tables[0];
            TotalRow = tab1.GetTotalRow();          //�õ��ܵ�������
            tab1.Close();
            return dt1;
        }
        
        //�õ��б�����
        public DataTable GetListData(List<SearchField> condition,
            int PageSize, int CurPage, String orderBy, params String[] Fields)
        {
            int totalRow = 0;
            return this.GetListData(condition, PageSize, CurPage, orderBy, out totalRow, Fields);
        }


        /// <summary>
        /// ���������õ�����ĵ�һ��ʵ��
        /// </summary>
        /// <param name="condition">��ѯ����</param>
        /// <param name="Fields">�����ֶ�</param>
        /// <returns>ʵ������</returns>
        public JUserDD GetFirstDataEntity(List<SearchField> condition,params String[] Fields)
        {
            JTable tab1 = new JTable(daConnect,TableName);
            JUserDD data1=tab1.GetFirstDataEntity<JUserDD>(condition, Fields);
            tab1.Close();
            return data1;
        }    
        
        /// <summary>
        /// �õ����������ĵ�һ������
        /// </summary>
        /// <param name="condition">��ѯ����</param>
        /// <param name="Fields">�����ֶ�</param>
        /// <returns>������������</returns>
        public DataRow  GetFirstDataRow(List<SearchField> condition, params String[] Fields)
        {
            JTable tab1 = new JTable(daConnect,TableName);
            DataRow data1 = tab1.GetFirstDataRow(condition, Fields);
            tab1.Close();
            return data1;
        }    
        
        
        /// <summary>
        /// �õ����������ĵ�һ������(����ֵΪDictionary)
        /// </summary>
        /// <param name="condition">��ѯ����</param>
        /// <param name="Fields">�����ֶ�</param>
        /// <returns>Dictionary�ֵ�</returns>
        public Dictionary<string, object> GetFirstDictionary(List<SearchField> condition, params String[] Fields)
        {
            DataRow dr = GetFirstDataRow(condition, Fields);
            Dictionary<string, object> data1 = new Dictionary<string, object>(StringComparer.CurrentCultureIgnoreCase);
            if (dr != null)
            {
                foreach (DataColumn col in dr.Table.Columns)
                {
                    data1.Add(col.ColumnName, dr[col.ColumnName]);
                }
            }
            return data1;
        } 
        
        /// <summary>
        /// �ж��Ƿ��з�������������
        /// </summary>
        ///<param name="condition">��ѯ����</param>
        /// <returns></returns>
        public bool HasData(List<SearchField> condition)
        {
            JTable tab1 = new JTable(daConnect,TableName);
            bool result = tab1.HasData(condition);
            tab1.Close();
            return result;
        }
               
        /// <summary>
        /// ���ܣ�ִ����ͨ��SQL���
        /// </summary>
        public void ExcuteSql(String sql)
        {
            JCommand command = new JCommand(daConnect);
            command.CommandText = sql;
            command.ExecuteNoQuery();
            command.Close();
        }


        /// <summary>
        /// ���ܣ�ִ�в�ѯSQL���
        /// </summary>
        /// <returns>���ؽ����</returns>
        public DataTable SearchSql(String sql)
        {
            JCommand command = new JCommand(daConnect);
            command.CommandText = sql;
            DataTable dt1 = command.SearchData(-1).Tables[0];
            command.Close();
            return dt1;
        }
        #endregion 
        
        #region �û���չ���ݲ�������
        /// <summary>
        /// �õ���һ���û��ı��
        /// </summary>
        /// <returns></returns>
        public int GetNextNum()
        {
            int num1 = 1;
            JTable tab1 = new JTable(this.daConnect, TableName);
            DataRow dr1 = tab1.GetFirstDataRow(null, "max(num)");
            if (dr1 != null && dr1[0].ToString() != String.Empty)
            {
                num1 = int.Parse(dr1[0].ToString()) + 1;
            }
            return num1;
        }


        /// <summary>
        /// �õ�ѡ���û���Json������DataTable
        /// </summary>
        /// <returns></returns>
        public DataTable GetSelectUserEasyUiJsonData(List<String> OldUserID)
        {
            /*
            String sql1 = @"SELECT   OrgID AS id, OrgName AS [text], parent AS parentid,0 as tag,null as state,null as checked
                            FROM      JOrg
                            WHERE   (status = 1) AND EXISTS
                                                (SELECT   1 AS Expr1
                                                 FROM      (JOrgUsers INNER JOIN
                                                                 JUser ON JOrgUsers.UserID = JUser.UserID)
                                                 WHERE   (JOrgUsers.OrgID = JOrg.OrgID) AND (JUser.status = 1))

                            UNION
                            SELECT   JUser_1.UserID AS id, JUser_1.UserName AS [text], JOrgUsers_1.OrgID AS parent,1 as tag,null as state,null as checked
                            FROM      (JUser JUser_1 INNER JOIN
                                            JOrgUsers JOrgUsers_1 ON JUser_1.UserID = JOrgUsers_1.UserID)
                            WHERE   (JUser_1.status = 1)"; */

           String sql1 = @"SELECT   OrgID AS id, OrgName AS [text], parent AS parentid,0 as tag,null as state,null as checked
                            FROM      JOrg
                            WHERE   (status = 1) 

                            UNION
                            SELECT   JUser_1.UserID AS id, JUser_1.UserName AS [text], DepartID AS parent,1 as tag,null as state,null as checked
                            FROM      JUser JUser_1
                            WHERE   (JUser_1.status = 1) and userid<>'admin' ";

            DataTable dt1= this.SearchSql(sql1);
            if (OldUserID.Count > 0)
            {
                foreach (DataRow dr1 in dt1.Rows)
                {
                    if (OldUserID.Contains(dr1["id"].ToString()))
                    {
                        dr1["checked"] = "true";
                    }
                }
            }
            return dt1;
        }
        #endregion
    }
}
