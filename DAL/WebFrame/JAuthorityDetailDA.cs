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
    public partial  class JAuthorityDetailDA
    {
        #region ͨ�õ�����DAL
        private const String TableName = "JAuthorityDetail";
        private JConnect daConnect = null;
        
        /// <summary>
        /// �޲������캯��
        /// </summary>
        public JAuthorityDetailDA()
        {
            this.daConnect = JConnect.GetConnect();
        }
        
        /// <summary>
        /// ���������캯��
        /// </summary>
        /// <param name="conn">DAʹ�õ����ݿ�����</param>
        public JAuthorityDetailDA(JConnect conn)
        {
            this.daConnect = conn;
        }

        /// <summary>
        /// ����һ��ʵ������
        /// </summary>
        /// <param name="data1">ʵ������</param>
        public void NewData(JAuthorityDetailDD data1)
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
        public void EditData(List<SearchField> condition,JAuthorityDetailDD data1)
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
        public JAuthorityDetailDD GetFirstDataEntity(List<SearchField> condition,params String[] Fields)
        {
            JTable tab1 = new JTable(daConnect,TableName);
            JAuthorityDetailDD data1=tab1.GetFirstDataEntity<JAuthorityDetailDD>(condition, Fields);
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

        /// <summary>
        /// �õ���ɫȨ�޵�EasyUiJson��DataTable
        /// </summary>
        /// <param name="OldAuthorityID"></param>
        /// <returns></returns>
        public DataTable GetRoleAuthorityEasyUiJsonData(String RoleID)
        {
            String sql1 = @"SELECT   modelID AS id, modelName AS [text],  0 AS tag
                            FROM     JModel";

            String sql2 = @"SELECT   AuthorityID AS id, AuthorityName AS [text], ModelID AS parentid, 0 AS tag, NULL AS state, NULL AS checked
                            FROM     JAuthority";

            String sql3 = @"SELECT   AuthorityUnitID AS id, Remark AS [text], AuthorityID AS parentid, 1 AS tag, NULL AS state, NULL AS checked
                            FROM     JAuthorityDetail";


            DataTable dt1 = this.SearchSql(sql1);
            dt1.Columns.Add("parentid");
            dt1.Columns.Add("state");
            dt1.Columns.Add("checked");
            
            //����Ȩ������
            DataTable dt2 = this.SearchSql(sql2);
            DataTable dt3 = this.SearchSql(sql3);
            DataTable[] arr1 = new DataTable[] {dt2,dt3};
            foreach (DataTable dt in arr1)
            {
                foreach (DataRow dr2 in dt.Rows)
                {
                    DataRow d1 = dt1.NewRow();
                    d1["id"] = dr2["id"];
                    d1["text"] = dr2["text"];
                    d1["parentid"] = dr2["parentid"];
                    d1["tag"] = dr2["tag"];
                    d1["state"] = dr2["state"];
                    d1["checked"] = dr2["checked"];
                    dt1.Rows.Add(d1);
                }
            }

                        

            //�õ���ɫ��ԭ�е�Ȩ�޹��ܵ�
            JAuthorityRolesDA da1 = new JAuthorityRolesDA();
            if (String.IsNullOrEmpty(RoleID) == false)
            {
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("RoleID", RoleID));
                DataTable t1 = da1.GetListData(condition, -1, -1,"", "AuthorityUnitID");
                List<String> OldData = new List<string>();
                foreach (DataRow dr1 in t1.Rows)
                {
                    OldData.Add(dr1[0].ToString());
                }

                if (OldData.Count > 0)
                {
                    foreach (DataRow dr1 in dt1.Rows)
                    {
                        if (OldData.Contains(dr1["id"].ToString()))
                        {
                            dr1["checked"] = "true";
                        }
                    }
                }
            }
            return dt1;
        }
        #endregion 
        
        #region �û���չ���ݲ�������
        #endregion
    }
}
