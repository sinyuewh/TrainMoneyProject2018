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
using System.Web.UI.WebControls;

namespace KORWeb.BUL
{
    /// ˵����Tb_Project
    /// ���룺�����û�
    /// ʱ�䣺2016/8/8 14:46:57
    public partial  class Tb_ProjectBU
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
                Tb_ProjectDA da1 = new Tb_ProjectDA();
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
                Tb_ProjectDA da1 = new Tb_ProjectDA();
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
                Tb_ProjectDA da1 = new Tb_ProjectDA();
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
                Tb_ProjectDA da1 = new Tb_ProjectDA();
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
                Tb_ProjectDA da1 = new Tb_ProjectDA();
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
                Tb_ProjectDA da1 = new Tb_ProjectDA();
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
                Tb_ProjectDA da1 = new Tb_ProjectDA();
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
        /// �õ��û�������Ŀ�б�
        /// admin�û������е���Ŀ
        /// �û���������Ŀ + ��Ŀ��ɫδ0��1����Ŀ����Ŀ����Ա����Ŀ����
        /// </summary>
        /// <param name="userid">�û�ID</param>
        /// <returns></returns>
        public Dictionary<String, String> GetUserManagerProject(String userid)
        {
            Dictionary<String, String> dic1 = new Dictionary<string, string>();
            List<SearchField> condition = new List<SearchField>();
            String st1 = "author='{0}' or exists (select 1 from tb_project_person where parentguid=tb_project.guidid and (PrjRole='0' or PrjRole='1') and UserID='{0}')";
            if (userid != "admin")
            {
                condition.Add(new SearchField(String.Format(st1, userid), "", SearchOperator.UserDefine));
            }
            DataTable dt1 = this.GetListData(condition, -1, -1, "CreateTime desc", "prjNum,prjName,GuidID");
            foreach (DataRow dr1 in dt1.Rows)
            {
                String key1 = dr1["GuidID"].ToString();
                String value1 = dr1["prjName"].ToString() + "(" + dr1["prjNum"].ToString() + ")";
                dic1[key1] = value1;
            }
            return dic1;
        }

        /// <summary>
        /// �õ��û�������Ŀ�б�2
        /// admin�û������е���Ŀ
        /// �û���������Ŀ + ��Ŀ��ɫΪ0����Ŀ����Ա��
        /// ��Ŀ��״̬Ϊ����ʵʩ��
        /// </summary>
        /// <param name="userid">�û�ID</param>
        /// <returns></returns>
        public Dictionary<String, String> GetUserManagerProjectForPlan(String userid)
        {
            Dictionary<String, String> dic1 = new Dictionary<string, string>();
            List<SearchField> condition = new List<SearchField>();
            condition.Add(new SearchField("Status", "1", SearchFieldType.NumericType));
            String st1 = "author='{0}' or exists (select 1 from tb_project_person where parentguid=tb_project.guidid and (PrjRole='0') and UserID='{0}')";
            if (userid != "admin")
            {
                condition.Add(new SearchField(String.Format(st1, userid), "", SearchOperator.UserDefine));
            }
            
            DataTable dt1 = this.GetListData(condition, -1, -1, "CreateTime desc", "prjNum,prjName,GuidID");
            foreach (DataRow dr1 in dt1.Rows)
            {
                String key1 = dr1["GuidID"].ToString();
                String value1 = dr1["prjName"].ToString() + "(" + dr1["prjNum"].ToString() + ")";
                dic1[key1] = value1;
            }
            return dic1;
        }

        /// <summary>
        /// �õ��û�������Ŀ�б�2
        /// admin�û������е���Ŀ
        /// �û���������Ŀ + ��Ŀ��ɫΪ0����Ŀ����Ա����Ŀ����
        /// ��Ŀ��״̬Ϊ����ʵʩ��
        /// </summary>
        /// <param name="userid">�û�ID</param>
        /// <returns></returns>
        public Dictionary<String, String> GetUserManagerProjectForMonthPlan(String userid)
        {
            Dictionary<String, String> dic1 = new Dictionary<string, string>();
            List<SearchField> condition = new List<SearchField>();
            condition.Add(new SearchField("Status", "1", SearchFieldType.NumericType));
            String st1 = "author='{0}' or exists (select 1 from tb_project_person where parentguid=tb_project.guidid and (PrjRole='0' or PrjRole='1') and UserID='{0}')";
            if (userid != "admin")
            {
                condition.Add(new SearchField(String.Format(st1, userid), "", SearchOperator.UserDefine));
            }

            DataTable dt1 = this.GetListData(condition, -1, -1, "CreateTime desc", "prjNum,prjName,GuidID");
            foreach (DataRow dr1 in dt1.Rows)
            {
                String key1 = dr1["GuidID"].ToString();
                String value1 = dr1["prjName"].ToString() + "(" + dr1["prjNum"].ToString() + ")";
                dic1[key1] = value1;
            }
            return dic1;
        }

        /// <summary>
        /// ������ĿID����ʼʱ�䣬����ʱ�䣬ͳ����Ŀ�Ĺ���
        /// </summary>
        /// <param name="projectGuid"></param>
        /// <param name="Time0"></param>
        /// <param name="Time1"></param>
        /// <returns></returns>
        public DataTable GetTj1Data(String projectGuid,String Time0,String Time1)
        {
            DataTable dt1 = new DataTable();

            dt1.Columns.Add("UserID");                          //�û�ID
            dt1.Columns.Add("UserName");                        //�û�����

            dt1.Columns.Add("pds",typeof(int));                 //�ɵ���
            dt1.Columns.Add("pdl", typeof(int));                //�ɵ���

            dt1.Columns.Add("wcs", typeof(int));                //��ɹ�����
            dt1.Columns.Add("wcRate", typeof(double));          //��ɹ�����

            dt1.Columns.Add("wcl", typeof(int));                //��ɹ�����
            dt1.Columns.Add("wclRate", typeof(double));         //��ɹ�����

            dt1.Columns.Add("bug1", typeof(int));               //BUG��
            dt1.Columns.Add("bug2", typeof(int));               //���BUG��
            dt1.Columns.Add("bugRate", typeof(double));         //���BUG��

            //�����е�����
            dt1.PrimaryKey = new DataColumn[] {dt1.Columns["UserID"] };


            //�õ�������Ŀ�����Ա�б�
            String sql1 = @"SELECT DISTINCT UserID, UserName  FROM  Tb_Project_Person
                            WHERE   EXISTS
                            (SELECT   1 AS Expr1
                             FROM      Tb_Project
                             WHERE   (GuidID = Tb_Project_Person.parentGuid) AND (Status = 1 OR Status = 2)) ";

            if (String.IsNullOrEmpty(projectGuid) == false)
            {
                sql1 = sql1 + " and parentGuid='" + projectGuid + "'";
            }
            JTable tab1 = new JTable();
            tab1.CommandText = sql1;
            DataTable dt0= tab1.SearchData(-1).Tables[0];
            foreach (DataRow dr1 in dt0.Rows)
            {
                DataRow dr = dt1.NewRow();
                dr["UserID"] = dr1["UserID"];
                dr["UserName"] = dr1["UserName"];
                dr["pds"] = 0;
                dr["pdl"] = 0;
                dr["wcs"] = 0;
                dr["wcl"] = 0;
                dr["bug1"] = 0;
                dr["bug2"] = 0;

                dt1.Rows.Add(dr);
            }

            //ͳ�ƹ�������BUG
            sql1 = @"SELECT   ExecuteManID, ExecuteManName,BigKind,Status, COUNT(*) AS pds, SUM(Workload) AS pdl
                        FROM      Tb_Task
                        WHERE   (ExecuteManID IS NOT NULL) and (Status='1' or Status='2' or Status='3' or Status='4') ";

            if (String.IsNullOrEmpty(projectGuid) == false)
            {
                sql1 = sql1 + " and parentGuid='" + projectGuid + "'";
            }
            if (String.IsNullOrEmpty(Time0) == false)
            {
                sql1 = sql1 + String.Format(" and begDate>=cdate('{0}') ", Time0);
            }
            if (String.IsNullOrEmpty(Time1) == false)
            {
                sql1 = sql1 + String.Format(" and begDate<=cdate('{0} 23:59:59') ", Time1);
            }

            sql1 = sql1 + " GROUP BY ExecuteManID, ExecuteManName,BigKind,Status";
            tab1.CommandText = sql1;
            dt0 = tab1.SearchData(-1).Tables[0];
            foreach (DataRow dr1 in dt0.Rows)
            {
                String bigkind = dr1["BigKind"].ToString();
                String Status = dr1["Status"].ToString();
                String userid = dr1["ExecuteManID"].ToString();
                int t1 = 0;
                int t2 = 0;
                int.TryParse(dr1["pds"].ToString(), out t1);
                int.TryParse(dr1["pdl"].ToString(), out t2);

                //����������������
                DataRow dr = dt1.Rows.Find(userid);
                if (dr != null)
                {
                    if (bigkind == "0")  //��������
                    {
                        dr["pds"] = int.Parse(dr["pds"].ToString()) + t1;
                        dr["pdl"] = int.Parse(dr["pdl"].ToString()) + t2;
                        if (Status == "3")  //��ʾ��ɵĹ���
                        {
                            dr["wcs"] = int.Parse(dr["wcs"].ToString()) + t1;
                            dr["wcl"] = int.Parse(dr["wcl"].ToString()) + t2;
                        }
                    }
                    else                //bug����
                    {
                        dr["bug1"] = int.Parse(dr["bug1"].ToString()) + t1;
                        if (Status == "3")
                        {
                            dr["bug2"] = int.Parse(dr["bug2"].ToString()) + t1;
                        }
                    }
                }
            }

            //�������
            foreach (DataRow dr0 in dt1.Rows)
            {
                //���������
                double t1 = 0;
                double t2 = 0;

                double.TryParse(dr0["wcs"].ToString(),out t1);
                double.TryParse(dr0["pds"].ToString(),out t2);
                if (t2 == 0)
                {
                    dr0["wcrate"] = 0;
                }
                else
                {
                    dr0["wcrate"] = Math.Round(t1 / t2, 2);
                }

                //���������
                t1 = 0;
                t2 = 0;
                double.TryParse(dr0["wcl"].ToString(), out t1);
                double.TryParse(dr0["pdl"].ToString(), out t2);
                if (t2 == 0)
                {
                    dr0["wclrate"] = 0;
                }
                else
                {
                    dr0["wclrate"] = Math.Round(t1 / t2, 2);
                }


                //����BUG1
                t1 = 0;
                t2 = 0;
                double.TryParse(dr0["bug2"].ToString(), out t1);
                double.TryParse(dr0["bug1"].ToString(), out t2);
                if (t2 == 0)
                {
                    dr0["bugrate"] = 0;
                }
                else
                {
                    dr0["bugrate"] = Math.Round(t1 / t2, 2);
                }
            }

            return dt1;
        }

        /// <summary>
        /// ������ĿID����ʼʱ�䣬����ʱ�䣬ͳ����Ŀ�ķ���
        /// </summary>
        /// <param name="projectGuid"></param>
        /// <param name="Time0"></param>
        /// <param name="Time1"></param>
        /// <returns></returns>
        public DataTable GetTj2Data(String projectGuid, String Time0, String Time1)
        {
            DataTable dt1 = new DataTable();
            String sql1 = @"SELECT   UserID, UserName, SUM(ProjectMoney) AS projectMoney
                            FROM    Tb_Project_Money where 1=1 ";

            if (String.IsNullOrEmpty(projectGuid) == false)
            {
                sql1 = sql1 + " and parentGuid='" + projectGuid + "'";
            }
            if (String.IsNullOrEmpty(Time0) == false)
            {
                sql1 = sql1 + String.Format(" and MoneyTime>=cdate('{0}') ", Time0);
            }
            if (String.IsNullOrEmpty(Time1) == false)
            {
                sql1 = sql1 + String.Format(" and MoneyTime<=cdate('{0} 23:59:59') ", Time1);
            }

            sql1 = sql1 + "GROUP BY UserID, UserName";

            JTable tab1 = new JTable();
            tab1.CommandText = sql1;
            dt1 = tab1.SearchData(-1).Tables[0];

            return dt1;
        }


        /// <summary>
        /// ɾ����Ŀ�Ĳ�������
        /// </summary>
        /// <param name="dataid"></param>
        /// <returns></returns>
        public bool DelteProjectMoneyData(String dataid)
        {
            bool succ = false;
            try
            {
                Tb_ProjectDA da1 = new Tb_ProjectDA();
                da1.TableName = "Tb_Project_Money";
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("DataID", dataid, SearchFieldType.NumericType));
                da1.DeleteData(condition);
                succ = true;
            }
            catch (Exception err)
            {
                succ = false;
            }
            return succ;
        }
        /// <summary>
        /// ɾ��һ��δȷ������Ŀ
        /// </summary>
        /// <param name="PrjNum"></param>
        /// <returns></returns>
        public bool DeleteData(String GuidID)
        {
            bool succ = false;
            try
            {
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("GuidID", GuidID));
                condition.Add(new SearchField("Status", "0",SearchFieldType.NumericType));

                Tb_ProjectDA da1 = new Tb_ProjectDA();
                da1.DeleteData(condition);
                succ = true;
            }
            catch (Exception err)
            {
                WebFrame.Util.JTool.WriteErrorLog(err.ToString());
            }
            return succ;
        }


        /// <summary>
        /// ȷ��һ����Ŀ
        /// </summary>
        /// <param name="PrjNum"></param>
        /// <returns></returns>
        public bool SureProjectData(String GuidID)
        {
            bool succ = false;
            JConnect.GetConnect().BeginTrans();
            try
            {
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("GuidID", GuidID));
                condition.Add(new SearchField("Status", "0",SearchFieldType.NumericType));

                //1--������Ŀ״̬
                Tb_ProjectDA da1 = new Tb_ProjectDA();
                if (da1.HasData(condition))
                {
                    Dictionary<String, object> dic1 = new Dictionary<string, object>();
                    dic1["Status"] = "1";
                    da1.EditData(condition, dic1);

                    //2--������Ŀ��־
                    dic1.Clear();
                    dic1["guidid"] = WebFrame.Util.JString.GetUnique32ID();
                    dic1["parentGuid"] = GuidID;
                    dic1["Stitle"] = "��Ŀ����";
                    dic1["AddTime"] = DateTime.Now;
                    dic1["AddUserID"] = FrameLib.UserID;
                    dic1["AddUserName"] = FrameLib.UserName;
                    dic1["kind"] = "0";

                    Tb_Project_LogDA da2 = new Tb_Project_LogDA();
                    da2.NewData(dic1);
                    succ = true;
                }

                JConnect.GetConnect().CommitTrans();
            }
            catch (Exception err)
            {
                JConnect.GetConnect().RollBackTrans();
                WebFrame.Util.JTool.WriteErrorLog(err.ToString());
            }
            return succ;
        }


        /// <summary>
        /// ����Ŀ��Ϊ���2
        /// </summary>
        /// <param name="PrjNum"></param>
        /// <returns></returns>
        public bool CompleteProjectData(String GuidID, DateTime completeTime)
        {
            bool succ = false;
            JConnect.GetConnect().BeginTrans();
            try
            {
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("GuidID", GuidID));
                condition.Add(new SearchField("Status", "1", SearchFieldType.NumericType));

                //1--������Ŀ״̬
                Tb_ProjectDA da1 = new Tb_ProjectDA();
                if (da1.HasData(condition))
                {
                    Dictionary<String, object> dic1 = new Dictionary<string, object>();
                    dic1["Status"] = "2";
                    dic1["FinishDate"] = completeTime;
                    da1.EditData(condition, dic1);

                    //2--������Ŀ��־
                    dic1.Clear();
                    dic1["guidid"] = WebFrame.Util.JString.GetUnique32ID();
                    dic1["parentGuid"] = GuidID;
                    dic1["Stitle"] = "��Ŀ���";
                    dic1["Content"] = "���ʱ�䣺" + completeTime.ToString("yyyy-MM-dd");
                    dic1["AddTime"] = DateTime.Now;
                    dic1["AddUserID"] = FrameLib.UserID;
                    dic1["AddUserName"] = FrameLib.UserName;
                    dic1["kind"] = "0";


                    Tb_Project_LogDA da2 = new Tb_Project_LogDA();
                    da2.NewData(dic1);
                    succ = true;
                }

                JConnect.GetConnect().CommitTrans();
                
            }
            catch (Exception err)
            {
                JConnect.GetConnect().RollBackTrans();
                WebFrame.Util.JTool.WriteErrorLog(err.ToString());
            }
            return succ;
        }

        /// <summary>
        /// ����Ŀ��Ϊȡ��3
        /// </summary>
        /// <param name="PrjNum"></param>
        /// <returns></returns>
        public bool CancelProjectData(String GuidID, String Remark)
        {
            bool succ = false;
            JConnect.GetConnect().BeginTrans();
            try
            {
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("GuidID", GuidID));
                condition.Add(new SearchField("Status", "1", SearchFieldType.NumericType));

                //1--������Ŀ״̬
                Tb_ProjectDA da1 = new Tb_ProjectDA();
                if (da1.HasData(condition))
                {
                    Dictionary<String, object> dic1 = new Dictionary<string, object>();
                    dic1["Status"] = "3";
                    dic1["FinishDate"] = DateTime.Now;
                    da1.EditData(condition, dic1);

                    //2--������Ŀ��־
                    dic1.Clear();
                    dic1["guidid"] = WebFrame.Util.JString.GetUnique32ID();
                    dic1["parentGuid"] = GuidID;
                    dic1["Stitle"] = "��Ŀ��ֹ";
                    dic1["AddTime"] = DateTime.Now;
                    dic1["AddUserID"] = FrameLib.UserID;
                    dic1["AddUserName"] = FrameLib.UserName;
                    dic1["Content"] = Remark;
                    dic1["kind"] = "0";

                    Tb_Project_LogDA da2 = new Tb_Project_LogDA();
                    da2.NewData(dic1);
                    succ = true;
                }
                JConnect.GetConnect().CommitTrans();
                
            }
            catch (Exception err)
            {
                JConnect.GetConnect().RollBackTrans();
                WebFrame.Util.JTool.WriteErrorLog(err.ToString());
            }
            return succ;
        }


        /// <summary>
        /// ����Ŀ���Ϊ���·���
        /// </summary>
        /// <param name="GuidID"></param>
        /// <param name="Remark"></param>
        /// <returns></returns>
        public bool ReturnWorkProject(String GuidID, String Remark)
        {
            bool succ = false;
            JConnect.GetConnect().BeginTrans();
            try
            {
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("GuidID", GuidID));
                condition.Add(new SearchField("Status=3 or Status=2", "", SearchOperator.UserDefine ));

                //1--������Ŀ״̬
                Tb_ProjectDA da1 = new Tb_ProjectDA();
                if (da1.HasData(condition))
                {
                    Dictionary<String, object> dic1 = new Dictionary<string, object>();
                    dic1["Status"] = "1";
                    dic1["FinishDate"] = DateTime.Now;
                    da1.EditData(condition, dic1);

                    //2--������Ŀ��־
                    dic1.Clear();
                    dic1["guidid"] = WebFrame.Util.JString.GetUnique32ID();
                    dic1["parentGuid"] = GuidID;
                    dic1["Stitle"] = "��Ŀ����";
                    dic1["AddTime"] = DateTime.Now;
                    dic1["AddUserID"] = FrameLib.UserID;
                    dic1["AddUserName"] = FrameLib.UserName;
                    dic1["Content"] = Remark;
                    dic1["kind"] = "0";

                    Tb_Project_LogDA da2 = new Tb_Project_LogDA();
                    da2.NewData(dic1);
                    succ = true;
                }
                JConnect.GetConnect().CommitTrans();

            }
            catch (Exception err)
            {
                JConnect.GetConnect().RollBackTrans();
                WebFrame.Util.JTool.WriteErrorLog(err.ToString());
            }
            return succ;
        }

        /// <summary>
        /// ��Ŀ����
        /// </summary>
        /// <param name="PrjNum"></param>
        /// <param name="delay"></param>
        /// <param name="Remark"></param>
        /// <returns></returns>
        public bool DelayProjectData(String GuidID, DateTime delay, String Remark)
        {
            bool succ = false;
            JConnect.GetConnect().BeginTrans();
            try
            {
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("GuidID", GuidID));
                condition.Add(new SearchField("Status", "1", SearchFieldType.NumericType));

                //1--������Ŀ״̬
                Tb_ProjectDA da1 = new Tb_ProjectDA();
                if (da1.HasData(condition))
                {
                    Dictionary<String, object> dic1 = new Dictionary<string, object>();
                    //dic1["Status"] = "3";
                    dic1["endDate"] = delay;
                    da1.EditData(condition, dic1);

                    //2--������Ŀ��־
                    dic1.Clear();
                    dic1["guidid"] = WebFrame.Util.JString.GetUnique32ID();
                    dic1["parentGuid"] = GuidID;
                    dic1["Stitle"] = "��Ŀ����";
                    dic1["Content"] = "��Ŀ������" + delay.ToString("yyyy-MM-dd") + " ����˵����" + Remark;

                    dic1["AddTime"] = DateTime.Now;
                    dic1["AddUserID"] = FrameLib.UserID;
                    dic1["AddUserName"] = FrameLib.UserName;
                    dic1["Content"] = Remark;
                    dic1["kind"] = "0";

                    Tb_Project_LogDA da2 = new Tb_Project_LogDA();
                    da2.NewData(dic1);
                    succ = true;
                }
                JConnect.GetConnect().CommitTrans();
                
            }
            catch (Exception err)
            {
                JConnect.GetConnect().RollBackTrans();
                WebFrame.Util.JTool.WriteErrorLog(err.ToString());
            }
            return succ;
        }



        /// <summary>
        /// �ж��û��ܷ����Ŀ��־����Ŀ�����ݽ��б༭���޸�
        /// </summary>
        /// <param name="projectGuidID"></param>
        /// <param name="UserID"></param>
        /// <returns></returns>
        public bool IsCanEditProject(String projectGuidID,String UserID)
        {
            bool result = false;
            if (UserID == "admin")
            {
                result = true;
            }
            else
            {
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("parentGuid", projectGuidID));
                condition.Add(new SearchField("UserID", UserID));
                condition.Add(new SearchField("PrjRole", "0"));
                Tb_Project_PersonBU bu1 = new Tb_Project_PersonBU();
                result = bu1.HasData(condition);
            }
            return result;
        }


        /// <summary>
        /// �ж��û��ܷ����ĿBUG���ݽ��б༭���޸�
        /// </summary>
        /// <param name="projectGuidID"></param>
        /// <param name="UserID"></param>
        /// <returns></returns>
        public bool IsCanEditProjectForBug(String projectGuidID, String UserID)
        {
            bool result = false;
            if (UserID == "admin")
            {
                result = true;
            }
            else
            {
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("parentGuid", projectGuidID));
                condition.Add(new SearchField("UserID", UserID));
                condition.Add(new SearchField("PrjRole='0' or PrjRole='3' ", "",SearchOperator.UserDefine));
                Tb_Project_PersonBU bu1 = new Tb_Project_PersonBU();
                result = bu1.HasData(condition);
            }
            return result;
        }


        /// <summary>
        /// �ж��û��ܷ����Ŀ��־����Ŀ�����ݽ��б༭���޸ģ�������Ŀ�ı�ţ�
        /// </summary>
        /// <param name="projectGuidID"></param>
        /// <param name="UserID"></param>
        /// <returns></returns>
        public bool IsCanEditProjectByProjectNum(String projectNum, String UserID)
        {
            bool result = false;
            if (UserID == "admin")
            {
                result = true;
            }
            else
            {
                //������Ŀ��ŵõ���Ŀ��Guidid
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("prjNum", projectNum));
                Dictionary<String, object> dic1 = this.GetFirstDictionary(condition, "GuidID");
                if (dic1 != null && dic1.Count > 0)
                {
                    String projectGuidID = dic1["GuidID"].ToString();

                    condition.Clear();
                    condition.Add(new SearchField("parentGuid", projectGuidID));
                    condition.Add(new SearchField("UserID", UserID));
                    condition.Add(new SearchField("PrjRole", "0"));
                    Tb_Project_PersonBU bu1 = new Tb_Project_PersonBU();
                    result = bu1.HasData(condition);
                }
            }
            return result;
        }

        /// <summary>
        /// ����BUG
        /// </summary>
        /// <param name="projectNum"></param>
        /// <param name="UserID"></param>
        /// <returns></returns>
        public bool IsCanEditProjectByProjectNumForBug(String projectNum, String UserID)
        {
            bool result = false;
            if (UserID == "admin")
            {
                result = true;
            }
            else
            {
                //������Ŀ��ŵõ���Ŀ��Guidid
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("prjNum", projectNum));
                Dictionary<String, object> dic1 = this.GetFirstDictionary(condition, "GuidID");
                if (dic1 != null && dic1.Count > 0)
                {
                    String projectGuidID = dic1["GuidID"].ToString();

                    condition.Clear();
                    condition.Add(new SearchField("parentGuid", projectGuidID));
                    condition.Add(new SearchField("UserID", UserID));
                    condition.Add(new SearchField("PrjRole='0' or PrjRole='3' ", "", SearchOperator.UserDefine));
                    Tb_Project_PersonBU bu1 = new Tb_Project_PersonBU();
                    result = bu1.HasData(condition);
                }
            }
            return result;
        }

        #endregion

        #region ��̬����
        /// <summary>
        /// �õ���ǰ�û�����Ŀ�ķ��ʻ���Ȩ��  0--��Ŀ������ 1--��Ŀ���� 2--������Ա 3--������Ա
        /// 0---û��Ȩ��
        /// 1---������Ա   ����Ŀ��ɫΪ3)
        /// 2---������Ա   ����Ŀ��ɫΪ2)
        /// 
        /// 3---��Ŀ����   ����Ŀ��ɫΪ1)
        /// 4---��Ŀ������ ������admin 0)
        /// </summary>
        /// <param name="ProjectGuidID">��Ŀ��GuidID</param>
        /// <param name="userid">�û�id</param>
        /// <returns></returns>
        public static int GetProjectClassByUserID(String ProjectGuidID,String userid)
        {
            int result = 0;
            if (userid == "admin")
            {
                result = 4;         //admin�û�
            }
            else
            {
                if (String.IsNullOrEmpty(ProjectGuidID) == false)
                {
                    List<SearchField> condition = new List<SearchField>();
                    condition.Add(new SearchField("GuidID", ProjectGuidID));
                    Dictionary<String, object> dic1 = (new Tb_ProjectBU()).GetFirstDictionary(condition, "Author");
                    if (dic1 != null && dic1.Count > 0)
                    {
                        if (dic1["Author"].ToString() == userid)
                        {
                            result = 4;     //��Ŀ������
                        }
                    }
                    
                    //������Ŀ�û��б�����ж�
                    if(result==0)
                    {
                        condition.Clear();
                        dic1.Clear();
                        condition.Add(new SearchField("parentGuid", ProjectGuidID));
                        condition.Add(new SearchField("UserID",userid));
                        Tb_Project_PersonBU bu1 = new Tb_Project_PersonBU();
                        dic1 = bu1.GetFirstDictionary(condition, "PrjRole");
                        if (dic1 != null && dic1.Count > 0)
                        {
                            int t1 = 0;
                            int.TryParse(dic1["PrjRole"].ToString(), out t1);
                            result = 4 - t1;
                        }
                    }
               }
            }
            return result;
        }

        /// <summary>
        /// ������Ŀ��ID����Ա�ĸ�λ���õ���Ӧ��������ID
        /// </summary>
        /// <param name="ProjectGuidID"></param>
        /// <param name="PrjRole"></param>
        public static String GetProjectPersonID(String ProjectGuidID,String PrjRole)
        {
            String result=String.Empty;
            List<SearchField> condition = new List<SearchField>();
            Tb_Project_PersonDA da1 = new Tb_Project_PersonDA();
            condition.Add(new SearchField("parentGuid", ProjectGuidID));
            if (String.IsNullOrEmpty(PrjRole) == false)
            {
                condition.Add(new SearchField("PrjRole", PrjRole));
            }
            DataTable dt1 = da1.GetListData(condition, -1, -1, "num", "UserID");
            bool first = true;
            foreach (DataRow dr1 in dt1.Rows)
            {
                if (first)
                {
                    result = dr1[0].ToString();
                    first = false;
                }
                else
                {
                    result = result + "," + dr1[0].ToString();
                }
            }

            return result;
        }

        /// <summary>
        /// ������Ŀ��ID�͸�λ���õ���Ӧ����Ա����
        /// </summary>
        /// <param name="ProjectGuidID"></param>
        /// <param name="PrjRole"></param>
        /// <returns></returns>
        public static String GetProjectPersonName(String ProjectGuidID, String PrjRole)
        {
            String result = String.Empty;
            List<SearchField> condition = new List<SearchField>();
            Tb_Project_PersonDA da1 = new Tb_Project_PersonDA();
            condition.Add(new SearchField("parentGuid", ProjectGuidID));
            if (String.IsNullOrEmpty(PrjRole) == false)
            {
                condition.Add(new SearchField("PrjRole", PrjRole));
            }
            DataTable dt1 = da1.GetListData(condition, -1, -1, "num", "UserName");
            bool first = true;
            foreach (DataRow dr1 in dt1.Rows)
            {
                if (first)
                {
                    result = dr1[0].ToString();
                    first = false;
                }
                else
                {
                    result = result + "," + dr1[0].ToString();
                }
            }

            if (String.IsNullOrEmpty(result))
            {
                result = "δ����";
            }
            return result;
        }

        /// <summary>
        /// �õ���Ŀ��������־��Ϣ
        /// </summary>
        /// <param name="ProjectGuid"></param>
        /// <returns></returns>
        public static String GetProjectLastLogInfo(String ProjectGuid)
        {
            String result = String.Empty;
            Tb_Project_LogDA da1 = new Tb_Project_LogDA();
            List<SearchField> condition = new List<SearchField>();
            condition.Add(new SearchField("parentGuid", ProjectGuid));
            DataTable dt1 = da1.GetListData(condition, 1, 1, "AddTime desc", "Stitle");
            if (dt1 != null && dt1.Rows.Count > 0)
            {
                result = dt1.Rows[0][0].ToString();
            }

            if (String.IsNullOrEmpty(result))
            {
                result = "������־";
            }
            return result;
        }


        /// <summary>
        /// ������Ŀ��������ѡ��
        /// <param name="control">������ؼ�</param>
        /// <param name="Status"
        /// </summary>
        public static void SetProjectListByStatus(ListControl control,
            String Status,int Flag)
        {
            Tb_ProjectDA da1 = new Tb_ProjectDA();

            List<SearchField> condition = new List<SearchField>();
            condition.Add(new SearchField("Status=1 or Status=2", "", SearchOperator.UserDefine));

            //���ݵĿ��ƣ����ڲ��� �����ɹ���������ֻ�������ݵ���Ŀ��
            if (Status != "0")
            {
                String s1 = String.Format("exists (select 1 from Tb_Task where parentGuid=tb_Project.prjNum and BigKind='0' and Status='{0}' ) ", Status);
                condition.Add(new SearchField(s1, "", SearchOperator.UserDefine));
            }
           

            //���ڷ�admin�Ŀ���
            if (FrameLib.UserID != "admin")
            {
                //��������еĹ��� ֻ�� ���˸������Ŀ������������Ŀ���������ǹ�����ִ���ߣ��򹤵���ִ����Ϊ�գ�
                if (Status == "1" || Status=="0")
                {
                   // String s2 = String.Format(" exists( select 1 from Tb_Project_Person where parentGuid=tb_Project.Guidid and UserID='{0}' and PrjRole='0') or exists( select 1 from Tb_Task where parentGuid=tb_Project.prjNum and BigKind='0' and Status='{1}' and (  ExecuteManID is null or ExecuteManID='{2}' )) ", FrameLib.UserID, Status, FrameLib.UserID);
                    String s2 = String.Format(" exists( select 1 from Tb_Project_Person where parentGuid=tb_Project.Guidid and UserID='{0}' and PrjRole='0') or exists( select 1 from Tb_Task where parentGuid=tb_Project.prjNum and BigKind='0' and Status='{1}') ", FrameLib.UserID, Status);
                    
                    condition.Add(new SearchField(s2, "", SearchOperator.UserDefine));
                }
                else   //����������Ŀ���Ա����Ŀ
                {
                    String s2 = String.Format("exists(select 1 from Tb_Project_Person where parentGuid=tb_Project.Guidid and UserID='{0}') ",FrameLib.UserID);
                    condition.Add(new SearchField(s2, "", SearchOperator.UserDefine));
                }
            }
            

            DataTable dt1 = da1.GetListData(condition, -1, -1, "Status,prjName", "prjNum,prjName,GuidID");
            ListItem list1 = null;
            foreach (DataRow dr1 in dt1.Rows)
            {
                if (Flag == 0)
                {
                    list1 = new ListItem(dr1["prjName"].ToString() + "(" + dr1["prjNum"].ToString() + ")", dr1["prjNum"].ToString());
                }
                else
                {
                    list1 = new ListItem(dr1["prjName"].ToString(), dr1["GuidID"].ToString());
                }
                control.Items.Add(list1);
            }

            if (control.Items.Count == 0)
            {
                if (Flag == 0)
                {
                    control.Items.Add(new ListItem("--û�к��ʵ���Ŀ--", "-1"));
                }
                else
                {
                    control.Items.Add(new ListItem("--û�к��ʵ���Ŀ--", ""));
                }
            }
        }

        public static void SetProjectListByStatus(ListControl control,
           String Status)
        {
            SetProjectListByStatus(control, Status, 0);
        }


        /// <summary>
        /// ������Ŀ��������
        /// </summary>
        /// <param name="control"></param>
        public static void SetProjectDropDownList(ListControl control,String keyField)
        {
            Tb_ProjectDA da1 = new Tb_ProjectDA();

            List<SearchField> condition = new List<SearchField>();
            condition.Add(new SearchField("Status=1 or Status=2", "", SearchOperator.UserDefine));

            

            //���ڷ�admin�Ŀ���
            if (FrameLib.UserID != "admin")
            {
                String s2 = String.Format(" exists( select 1 from Tb_Project_Person where parentGuid=tb_Project.Guidid and UserID='{0}' and PrjRole='0') ", FrameLib.UserID);
                condition.Add(new SearchField(s2, "", SearchOperator.UserDefine));
            }


            DataTable dt1 = da1.GetListData(condition, -1, -1, "Status,prjName", "prjNum,prjName,GuidID");
            ListItem list1 = null;
            foreach (DataRow dr1 in dt1.Rows)
            {
                list1 = new ListItem(dr1["prjName"].ToString(), dr1[keyField].ToString());
                control.Items.Add(list1);
            }

            if (control.Items.Count == 0)
            {
                control.Items.Add(new ListItem("--û�к��ʵ���Ŀ--", ""));
            }
        }

        public static void SetProjectDropDownList(ListControl control)
        {
            SetProjectDropDownList(control, "GuidID");
        }


        /// <summary>
        /// ������Ŀ�ľ�����������
        /// </summary>
        /// <param name="control"></param>
        /// <param name="parentGuid"></param>
        public String SetProjectManDropDownList(ListControl control,
            String prjNum, String blankValue)
        {
            String result = String.Empty;
            List<SearchField> condition = new List<SearchField>();
            condition.Add(new SearchField("prjNum", prjNum));
            Tb_ProjectDA da0 = new Tb_ProjectDA();
            Dictionary<String,object> dic1= da0.GetFirstDictionary(condition, "GuidID");
            if (dic1 != null && dic1.Count > 0)
            {
                result = dic1["GuidID"].ToString();
                condition.Clear();
                condition.Add(new SearchField("parentGuid", dic1["GuidID"].ToString()));
                Tb_Project_PersonDA da1 = new Tb_Project_PersonDA();
                DataTable dt1 = da1.GetListData(condition, -1, -1, "num", "*");
                foreach (DataRow dr1 in dt1.Rows)
                {
                    ListItem item1 = new ListItem(dr1["UserName"].ToString(), dr1["UserID"].ToString());
                    control.Items.Add(item1);
                }
            }
            if (String.IsNullOrEmpty(blankValue) == false)
            {
                control.Items.Insert(0, new ListItem(blankValue, ""));
            }
            return result;
        }

        /// <summary>
        /// �жϵ�ǰ�û��Ƿ�Ϊ��Ŀ����
        /// </summary>
        /// <returns></returns>
        public static bool IsProjectManager()
        {
            bool succ = false;
            if (FrameLib.UserID != "admin")
            {
                Tb_ProjectDA da1 = new Tb_ProjectDA();
                
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("Status=1 or Status=2", "", SearchOperator.UserDefine));

                String s2 = String.Format(" exists( select 1 from Tb_Project_Person where parentGuid=tb_Project.Guidid and UserID='{0}' and PrjRole='0') ", FrameLib.UserID);
                condition.Add(new SearchField(s2, "", SearchOperator.UserDefine));

                succ = da1.HasData(condition);
            }
            else
            {
                succ = true;
            }
           
            return succ;
        }

        /// <summary>
        /// ����BUG��Ŀ��������ѡ��
        /// <param name="control">������ؼ�</param>
        /// <param name="Status"
        /// </summary>
        public static void SetProjectListByStatusForBug(ListControl control,
            String Status)
        {
            Tb_ProjectDA da1 = new Tb_ProjectDA();

            List<SearchField> condition = new List<SearchField>();
            condition.Add(new SearchField("Status=1 or Status=2", "", SearchOperator.UserDefine));

            //���ݵĿ��ƣ����ڲ��� �������BUG����ֻ�������ݵ���Ŀ��
            if (Status != "0")
            {
                String s1 = String.Format("exists ( select 1 from Tb_Task where parentGuid=tb_Project.prjNum and BigKind='1' and Status='{0}' ) ", Status);
                condition.Add(new SearchField(s1, "", SearchOperator.UserDefine));
            }


            //���ڷ�admin�Ŀ���
            if (FrameLib.UserID != "admin")
            {
                //��������е�BUG ֻ�� ���˸������Ŀ������������Ŀ����������Ա����������BUG��ִ���ߣ���BUG��ִ����Ϊ�գ�
                if (Status == "1" || Status == "0")
                {
                    String s2 = String.Format(" exists( select 1 from Tb_Project_Person where parentGuid=tb_Project.Guidid and UserID='{0}' and ( PrjRole='0' or PrjRole='3' ) ) or exists ( select 1 from Tb_Task where parentGuid=tb_Project.prjNum and BigKind='1' and Status='{1}' ) ", FrameLib.UserID, Status);
                    condition.Add(new SearchField(s2, "", SearchOperator.UserDefine));
                }
                else   //����������Ŀ���Ա����Ŀ
                {
                    String s2 = String.Format("exists(select 1 from Tb_Project_Person where parentGuid=tb_Project.Guidid and UserID='{0}') ", FrameLib.UserID);
                    condition.Add(new SearchField(s2, "", SearchOperator.UserDefine));
                }
            }



            DataTable dt1 = da1.GetListData(condition, -1, -1, "Status,prjName", "prjNum,prjName,GuidID");
            foreach (DataRow dr1 in dt1.Rows)
            {
                ListItem list1 = new ListItem(dr1["prjName"].ToString() + "(" + dr1["prjNum"].ToString() + ")", dr1["prjNum"].ToString());
                control.Items.Add(list1);
            }

            if (control.Items.Count == 0)
            {
                control.Items.Add(new ListItem("--û�к��ʵ���Ŀ--", "-1"));
            }
        }
        #endregion

        #region ˽�з���
        private bool IsProjectMember(String parentGuid)
        {
            bool result = false;
            return result;
        }
        #endregion
    }
}
