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
    /// ˵����Tb_KH_Month
    /// ���룺���ټ�
    /// ʱ�䣺2016/8/27 11:04:49
    public partial  class Tb_KH_MonthBU
    {  
        public String ErrorInfo { get; set; }
        
        /// <summary>
        /// ִ�н��������
        /// </summary>
        private int executeResultCount = -1;
        public int ExecuteResultCount
        {
            get { return this.executeResultCount; }
            private set { this.executeResultCount = value; }
        }

        #region ͨ�����ݲ�������
        /// <summary>
        /// ����һ������
        /// </summary>
        /// <param name="data1">Dictionary����</param>
        public void NewData(Dictionary<String, object> data1)
        {
            try
            {
                Tb_KH_MonthDA da1 = new Tb_KH_MonthDA();
                da1.NewData(data1);
                this.executeResultCount = da1.ExecuteResultCount;
            }
            catch (Exception err)
            {
                this.ErrorInfo = err.Message.Replace("\r", "").Replace("\t", "").Replace("\n", "");
            }
        }

        
        /// <summary>
        /// ��������ɾ������
        /// </summary>
        /// <param name="condition">ɾ����������</param>
        public void DeleteData(List<SearchField> condition)
        {
            try
            {
                Tb_KH_MonthDA da1 = new Tb_KH_MonthDA();
                da1.DeleteData(condition);
                this.executeResultCount = da1.ExecuteResultCount;
            }
            catch (Exception err)
            {
                this.ErrorInfo = err.Message.Replace("\r", "").Replace("\t", "").Replace("\n", "");
            }
        }

        
        /// <summary>
        /// �����������޸�һ������
        /// </summary>
        /// <param name="condition">�޸����ݵ�����</param>
        /// <param name="data1">�µ�����</param>
        public void EditData(List<SearchField> condition, Dictionary<String, object> data1)
        {
            try
            {
                Tb_KH_MonthDA da1 = new Tb_KH_MonthDA();
                da1.EditData(condition, data1);
                this.executeResultCount = da1.ExecuteResultCount;
            }
            catch (Exception err)
            {
                this.ErrorInfo = err.Message.Replace("\r", "").Replace("\t", "").Replace("\n", "");
            }
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
            int PageSize, int CurPage, String orderBy,
            out int TotalRow, params String[] Fields)
        {
            TotalRow = 0;
            DataTable dt1 = null;
            try
            {
                Tb_KH_MonthDA da1 = new Tb_KH_MonthDA();
                dt1 = da1.GetListData(condition, PageSize, CurPage, orderBy, out TotalRow, Fields);
                this.executeResultCount = da1.ExecuteResultCount;
                return dt1;
            }
            catch (Exception err)
            {
                this.ErrorInfo = err.Message.Replace("\r", "").Replace("\t", "").Replace("\n", "");
            }
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
        /// �õ����������ĵ�һ������(����ֵΪDictionary)
        /// </summary>
        /// <param name="condition">��ѯ����</param>
        /// <param name="Fields">�����ֶ�</param>
        /// <returns>Dictionary�ֵ�</returns>
        public Dictionary<string, object> GetFirstDictionary(List<SearchField> condition, params String[] Fields)
        {
            Dictionary<string, object> data1 = null;
            try
            {
                Tb_KH_MonthDA da1 = new Tb_KH_MonthDA();
                data1 = da1.GetFirstDictionary(condition, Fields);
                this.executeResultCount = da1.ExecuteResultCount;
            }
            catch (Exception err)
            {
                this.ErrorInfo = err.Message.Replace("\r", "").Replace("\t", "").Replace("\n", "");
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
            bool result = false;
            try
            {
                Tb_KH_MonthDA da1 = new Tb_KH_MonthDA();
                result=da1.HasData(condition);
            }
            catch (Exception err)
            {
                this.ErrorInfo = err.Message.Replace("\r", "").Replace("\t", "").Replace("\n", "");
            }
            return result;
        }

        /// <summary>
        /// ���ܣ�ִ����ͨ��SQL���
        /// </summary>
        public void ExcuteSql(String sql)
        {
            try
            {
                Tb_KH_MonthDA da1 = new Tb_KH_MonthDA();
                da1.ExcuteSql(sql);
            }
            catch (Exception err)
            {
                this.ErrorInfo = err.Message.Replace("\r", "").Replace("\t", "").Replace("\n", "");
            }
        }
        #endregion
        
        #region ʵ������
        /// <summary>
        /// �����¶ȿ�������
        /// </summary>
        /// <param name="byear">�������</param>
        /// <param name="bmonth">�����·�</param>
        /// <param name="khDays">���˹�����</param>
        /// <returns></returns>
        public bool CreateMonthKHData(int byear, 
            int bmonth, 
            double khDays)
        {
            bool succ = false;

            //code��team��test�Ĺ�����ϵ��
            double rate1 = double.Parse(WebFrame.Comm.JStrInfoBU.GetStrTextByID("codeRate"));
            double rate2 = double.Parse(WebFrame.Comm.JStrInfoBU.GetStrTextByID("teamRate"));
            double rate3 = double.Parse(WebFrame.Comm.JStrInfoBU.GetStrTextByID("testRate"));

            JConnect.GetConnect().BeginTrans();
            try
            {
                //1--�õ�������Ա�嵥
                List<SearchField> condition = new List<SearchField>();
                JUserDA da1 = new JUserDA();
                condition.Add(new SearchField("gw='0' or gw='1' or gw='2'", "", SearchOperator.UserDefine));
                DataTable dt1 = da1.GetListData(condition, -1, -1, "num", "UserID,UserName");

                //2--ɾ��ԭ�еĿ�������
                Tb_KH_MonthDA da2 = new Tb_KH_MonthDA();
                condition.Clear();
                condition.Add(new SearchField("byear", byear+"", SearchFieldType.NumericType));
                condition.Add(new SearchField("bmonth", bmonth + "", SearchFieldType.NumericType));
                da2.DeleteData(condition);

                //3--���ݿ�����Ա�����γ��µ��¶ȿ�������
                DataTable khTable = new DataTable();
                khTable.Columns.Add("userid");
                khTable.Columns.Add("username");
                khTable.Columns.Add("workload1", typeof(double));
                khTable.Columns.Add("workload2", typeof(double));
                khTable.Columns.Add("workload3", typeof(double));
                khTable.PrimaryKey = new DataColumn[] { khTable.Columns["userid"]};
                foreach (DataRow dr1 in dt1.Rows)
                {
                    DataRow khrow = khTable.NewRow();
                    khrow["userid"] = dr1["userid"];
                    khrow["UserName"] = dr1["username"];
                    khrow["workload1"] = 0;     //code
                    khrow["workload2"] = 0;     //team
                    khrow["workload3"] = 0;     //test
                    khTable.Rows.Add(khrow);
                }

                //4--�����¶ȿ��˵������޸Ŀ�������
                condition.Clear();
                condition.Add(new SearchField("Status", "4"));
                condition.Add(new SearchField("DatePart('yyyy', finishDate)="+byear,"",SearchOperator.UserDefine));
                condition.Add(new SearchField("DatePart('M', finishDate)=" + bmonth, "", SearchOperator.UserDefine));
                Tb_TaskDA da3 = new Tb_TaskDA();
                DataTable dt3 = da3.GetListData(condition, -1, -1, "FinishDate", "*");

                Tb_Task_BugDA da4 = new Tb_Task_BugDA();
                foreach (DataRow dr3 in dt3.Rows)
                {
                    int load1 = int.Parse(dr3["LastWorkLoad"].ToString());
                    String Manager = dr3["Manager"].ToString();
                    String ExecuteMan = dr3["ExecuteMan"].ToString();

                    //�õ����Ե����A-3 B-2 C-1
                    Dictionary<String, double> debugDic = da4.GetTaskDebugRate(dr3["Guidid"].ToString());
                    if (debugDic.Count == 0)
                    {
                        debugDic[dr3["TestMan"].ToString()] = 1.0;
                    }

                    //���ݲ�ͬ����Ա���乤����
                    //code
                    DataRow datarow1 = khTable.Rows.Find(ExecuteMan);
                    if (datarow1 != null)
                    {
                        datarow1["workload1"] = double.Parse(datarow1["workload1"].ToString()) + load1;
                    }

                    //team
                    DataRow datarow2 = khTable.Rows.Find(Manager);
                    if (datarow2 != null)
                    {
                        datarow2["workload2"] = double.Parse(datarow2["workload2"].ToString()) + load1;
                    }

                    //test
                    foreach (string m in debugDic.Keys)
                    {
                        DataRow datarow3 = khTable.Rows.Find(m);
                        if (datarow3 != null)
                        {
                            datarow3["workload3"] = double.Parse(datarow3["workload3"].ToString()) + load1*debugDic[m];
                        }

                    }
                }

                //5--������д�뵽�¶ȿ��������
                Dictionary<String, object> dic1 = new Dictionary<string, object>();
                foreach (DataRow dr1 in khTable.Rows)
                {
                    dic1.Clear();
                    dic1["byear"] = byear;
                    dic1["bmonth"] = bmonth;
                    dic1["userid"] = dr1["userid"];
                    dic1["userName"] = dr1["username"];
                    dic1["Fullload"] = khDays * 8;
                    dic1["workload1"] = dr1["workload1"];
                    dic1["workload2"] = dr1["workload2"];
                    dic1["workload3"] = dr1["workload3"];
                    dic1["workload"] = rate1 * double.Parse(dr1["workload1"].ToString()) +
                                     rate2 * double.Parse(dr1["workload2"].ToString()) +
                                     rate3 * double.Parse(dr1["workload3"].ToString());
                    dic1["AddMoney"] = 0;

                    da2.NewData(dic1);
                }

                JConnect.GetConnect().CommitTrans();
                succ = true;
            }
            catch (Exception err)
            {
                JConnect.GetConnect().RollBackTrans();
                WebFrame.Util.JTool.WriteErrorLog(err.ToString());
            }
            return succ;
        }
        #endregion

        #region ��̬����
        #endregion

        #region ˽�з���
        #endregion
    }
}
