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
    /// ˵����Tb_Task_Bug
    /// ���룺Ф����
    /// ʱ�䣺2016/8/18 16:23:27
    public partial  class Tb_Task_BugDA
    {
        #region ͨ�õ�����DAL
        private String tableName = "Tb_Task_Bug";
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
        public Tb_Task_BugDA()
        {
            this.daConnect = JConnect.GetConnect();
        }
        
        /// <summary>
        /// ���������캯��
        /// </summary>
        /// <param name="conn">DAʹ�õ����ݿ�����</param>
        public Tb_Task_BugDA(JConnect conn)
        {
            this.daConnect = conn;
        }

        /// <summary>
        /// ����һ��ʵ������
        /// </summary>
        /// <param name="data1">ʵ������</param>
        public void NewData(Tb_Task_BugDD data1)
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
        public void EditData(List<SearchField> condition,Tb_Task_BugDD data1)
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
        public Tb_Task_BugDD GetFirstDataEntity(List<SearchField> condition,params String[] Fields)
        {
            JTable tab1 = new JTable(daConnect,TableName);
            Tb_Task_BugDD data1=tab1.GetFirstDataEntity<Tb_Task_BugDD>(condition, Fields);
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
        /// �õ���������Ա���Ա�����AΪ3BΪ2CΪ1
        /// </summary>
        /// <param name="TaskID"></param>
        /// <returns></returns>
        public Dictionary<String, double> GetTaskDebugRate(String TaskID)
        {
            Dictionary<String, double> dic1 = new Dictionary<string, double>();

            String sql = "select AddUserID,sum(BugA*3+BugB*2+BugC) from Tb_Task_Bug where parentGuid='" + TaskID + "' group by AddUserID";
            JTable tab1 = new JTable(daConnect, TableName);
            tab1.CommandText = sql;
            DataTable dt1= tab1.SearchData(-1).Tables[0];
            double t1 = 0;
            foreach (DataRow dr1 in dt1.Rows)
            {
                dic1.Add(dr1[0].ToString(),double.Parse(dr1[1].ToString()));
                t1 = t1 + double.Parse(dr1[1].ToString());
            }
            tab1.Close();

            //t1>0
            if (t1 > 0)
            {
                String[] keys=dic1.Keys.ToArray();
                for(int i=0;i<keys.Length;i++)
                {
                    String m1 = keys[i];
                    dic1[m1] = Math.Round(dic1[m1] / t1, 2);
                }
            }
            else
            {
                dic1.Clear();
            }
            return dic1;
        }
        #endregion
    }
}
