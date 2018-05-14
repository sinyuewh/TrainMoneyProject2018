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
    /// ˵����Tb_Project
    /// ���룺�����û�
    /// ʱ�䣺2016/8/8 14:46:52
    public partial  class Tb_ProjectDA
    {
        #region ͨ�õ�����DAL
        private String tableName = "Tb_Project";
        public String TableName
        {
            get { return this.tableName; }
            set { this.tableName = value; }
        }
        
        
        private JConnect daConnect = null;
        
        //ִ�н��������
        private int executeResultCount = -1;
        public int ExecuteResultCount
        {
            get { return this.executeResultCount; }
            private set { this.executeResultCount = value; }
         }
        
        /// <summary>
        /// �޲������캯��
        /// </summary>
        public Tb_ProjectDA()
        {
            this.daConnect = JConnect.GetConnect();
        }
        
        /// <summary>
        /// ���������캯��
        /// </summary>
        /// <param name="conn">DAʹ�õ����ݿ�����</param>
        public Tb_ProjectDA(JConnect conn)
        {
            this.daConnect = conn;
        }

        /// <summary>
        /// ����һ��ʵ������
        /// </summary>
        /// <param name="data1">ʵ������</param>
        public void NewData(Tb_ProjectDD data1)
        {
             JTable tab1 = new JTable(daConnect,TableName);
             tab1.InsertData(data1);
             this.executeResultCount = tab1.ExecuteResultCount;
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
            this.executeResultCount = tab1.ExecuteResultCount;
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
            this.executeResultCount = tab1.ExecuteResultCount;
            tab1.Close();
        }

        /// <summary>
        /// �����������޸�һ��ʵ������
        /// </summary>
        /// <param name="condition">�޸����ݵ�����</param>
        /// <param name="data1">�µ�����</param>
        public void EditData(List<SearchField> condition,Tb_ProjectDD data1)
        {
            JTable tab1 = new JTable(daConnect,TableName);
            tab1.EditData(data1,condition);
            this.executeResultCount = tab1.ExecuteResultCount;
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
            this.executeResultCount = tab1.ExecuteResultCount;
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
            this.executeResultCount = tab1.ExecuteResultCount;
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
        public Tb_ProjectDD GetFirstDataEntity(List<SearchField> condition,params String[] Fields)
        {
            JTable tab1 = new JTable(daConnect,TableName);
            Tb_ProjectDD data1=tab1.GetFirstDataEntity<Tb_ProjectDD>(condition, Fields);
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
        #endregion 
        
        #region �û���չ���ݲ�������
        /// <summary>
        /// �õ���Ŀ�Ĺ��׶�
        /// </summary>
        /// <param name="ProjectGuid">��Ŀ��Guidid</param>
        /// <returns></returns>
        public DataTable GetProjectGXDData(String ProjectGuid)
        {
            String sql1 = @"SELECT Tb_Task.AddUser AS userid, JUser.UserName AS username,Tb_Project.HSMoney,DatePart('yyyy',Tb_Project.FinishDate) as KhYear, Sum(Tb_Task.Workload) AS workload
                            FROM (Tb_Task INNER JOIN JUser ON Tb_Task.AddUser = JUser.UserID) INNER JOIN Tb_Project ON Tb_Task.ProjectGuidID = Tb_Project.GuidID
                            WHERE (((Tb_Project.GuidID)='{0}') AND ((Tb_Task.Status)='3'))
                            GROUP BY Tb_Task.AddUser, JUser.UserName,Tb_Project.HSMoney,DatePart('yyyy',Tb_Project.FinishDate)";

            sql1 = String.Format(sql1, ProjectGuid);
            JTable tab1 = new JTable();
            tab1.CommandText = sql1;
            DataTable dt1= tab1.SearchData(-1).Tables[0];
            tab1.Close();
            return dt1;
        }
        #endregion
    }
}
