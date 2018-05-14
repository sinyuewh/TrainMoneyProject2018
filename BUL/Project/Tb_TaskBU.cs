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
using System.IO;

namespace KORWeb.BUL
{
    /// ˵����Tb_Task
    /// ���룺����
    /// ʱ�䣺2016/8/11 17:28:28
    public partial  class Tb_TaskBU
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
                Tb_TaskDA da1 = new Tb_TaskDA();
                da1.NewData(data1);
                this.executeResultCount = da1.ExecuteResultCount;
            }
            catch (Exception err)
            {
                this.ErrorInfo = err.Message.Replace("\r", "").Replace("\t", "").Replace("\n", "");
                throw err;
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
                Tb_TaskDA da1 = new Tb_TaskDA();
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
                Tb_TaskDA da1 = new Tb_TaskDA();
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
                Tb_TaskDA da1 = new Tb_TaskDA();
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
                Tb_TaskDA da1 = new Tb_TaskDA();
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
                Tb_TaskDA da1 = new Tb_TaskDA();
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
                Tb_TaskDA da1 = new Tb_TaskDA();
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
        /// ��xlsFile�е�������
        /// </summary>
        /// <param name="xlsFile"></param>
        /// <returns></returns>
        public bool ExportDataFromXls(String parentGuid,String xlsFile,String BigKind)
        {
            bool succ = false;
            try
            {
                JConnect.GetConnect().BeginTrans();
                if (String.IsNullOrEmpty(xlsFile) == false && File.Exists(xlsFile))
                {
                    WebFrame.Util.UExcel u1 = new WebFrame.Util.UExcel();
                    DataTable dt1 = u1.XlsToDataSet(xlsFile).Tables[0];

                    Dictionary<String, object> dic1 =new Dictionary<string,object>();
                   

                    Tb_TaskDA da0 = new Tb_TaskDA();
                    Tb_Task_LogBU bu2 = new Tb_Task_LogBU();
                    
                    foreach (DataRow dr1 in dt1.Rows)
                    {
                        dic1.Clear();
                        dic1["ManagerID"] = WebFrame.FrameLib.UserID;
                        dic1["ManagerName"] = WebFrame.FrameLib.UserName;
                        dic1["AddTime"] = DateTime.Now;
                        dic1["Status"] = "0";
                        dic1["parentGuid"] = parentGuid;
                        dic1["BigKind"] = BigKind;

                        if (BigKind == "0")     //����
                        {
                            dic1["TaskKind"] = dr1[0].ToString();
                            dic1["TaskTitle"] = dr1[1].ToString();
                            dic1["content"] = dr1[2].ToString();
                            dic1["ImportGrade"] = dr1[3].ToString();
                            dic1["TimeGrade"] = dr1[4].ToString();
                            dic1["PlanDate"] = DateTime.Parse(dr1[5].ToString());
                            dic1["Workload"] = dr1[6].ToString();
                            dic1["GuidID"] = WebFrame.Util.JString.GetUnique32ID();  //�õ�32λ��GuidID������

                            if (String.IsNullOrEmpty(dr1[0].ToString()) == false
                                && String.IsNullOrEmpty(dr1[1].ToString()) == false
                                && String.IsNullOrEmpty(dr1[2].ToString()) == false
                                && String.IsNullOrEmpty(dr1[3].ToString()) == false
                                && String.IsNullOrEmpty(dr1[4].ToString()) == false
                                && String.IsNullOrEmpty(dr1[5].ToString()) == false
                                && String.IsNullOrEmpty(dr1[6].ToString()) == false)
                            {
                                da0.NewData(dic1);
                                //���빤��
                                bu2.NewLog(dic1["GuidID"].ToString(), "��������", "");
                            }
                        }
                        else                 //BUG����
                        {
                            dic1["TaskTitle"] = dr1[0].ToString();
                            dic1["SubTitle"] = dr1[1].ToString();

                            dic1["content"] = dr1[2].ToString();
                            dic1["BugKind"] = dr1[3].ToString();

                            dic1["ImportGrade"] = dr1[4].ToString();
                            dic1["TimeGrade"] = dr1[5].ToString();

                            dic1["AddTime"] = DateTime.Parse(dr1[6].ToString());
                            dic1["PlanDate"] = DateTime.Parse(dr1[7].ToString());


                            dic1["Remark"] = dr1[8].ToString();
                            dic1["GuidID"] = WebFrame.Util.JString.GetUnique32ID();  //�õ�32λ��GuidID������

                            if (String.IsNullOrEmpty(dr1[0].ToString()) == false
                                && String.IsNullOrEmpty(dr1[2].ToString()) == false
                                && String.IsNullOrEmpty(dr1[3].ToString()) == false
                                && String.IsNullOrEmpty(dr1[4].ToString()) == false
                                && String.IsNullOrEmpty(dr1[6].ToString()) == false
                                && String.IsNullOrEmpty(dr1[7].ToString()) == false)
                            {
                                da0.NewData(dic1);
                                //����BUG����
                                bu2.NewLog(dic1["GuidID"].ToString(), "����BUG����", "");
                            }
                        }
                    }
                }
                JConnect.GetConnect().CommitTrans();
                succ = true;
            }
            catch (Exception err)
            {
                JConnect.GetConnect().RollBackTrans();
                WebFrame.Util.JTool.WriteErrorLog(err.ToString());
                if (String.IsNullOrEmpty(xlsFile) == false && File.Exists(xlsFile))
                {
                    File.Delete(xlsFile);
                }
            }
            return succ;
        }

        public bool ExportDataFromXls(String parentGuid, String xlsFile)
        {
            return this.ExportDataFromXls(parentGuid, xlsFile, "0");
        }

        //��������
        private void InsertData1(
                String prNum,
                String content1 ,
                String content2 ,
                String zeren1 ,
                String finish1,
                Tb_TaskDA da0)
        {
            //1--����prjNum�õ���Ŀid
            String prjguid = String.Empty;
            Tb_ProjectDA da1 = new Tb_ProjectDA();
            List<SearchField> condition = new List<SearchField>();
            condition.Add(new SearchField("prjNum", prNum));
            Dictionary<String, object> dic1 = da1.GetFirstDictionary(condition, "GuidID");
            if(dic1!=null && dic1.Count>0 && String.IsNullOrEmpty(dic1["GuidID"].ToString())==false)
            {
                prjguid = dic1["GuidID"].ToString();
            }

            //2--�õ���Ŀ�����id
            String prjManager = String.Empty;
            Tb_Project_PersonDA da3 = new Tb_Project_PersonDA();
            dic1.Clear();
            condition.Clear();
            condition.Add(new SearchField("ProjectGuidID", prjguid));
            condition.Add(new SearchField("PrjRole", "0"));
            dic1 = da3.GetFirstDictionary(condition, "PersonID");
            if (dic1 != null && dic1.Count > 0)
            {
                prjManager = dic1["PersonID"].ToString();
            }

            //3--���������˵������õ�����id
            String zr1 = String.Empty;
            JUserDA da2 = new JUserDA();
            dic1.Clear();
            condition.Clear();
            condition.Add(new SearchField("UserName", zeren1));
            dic1 = da2.GetFirstDictionary(condition, "UserID");
            if (dic1 != null && dic1.Count > 0)
            {
                zr1 = dic1["UserID"].ToString();
            }
            
            //��������
            String year1=DateTime.Now.ToString("yyyy");
            String month1=DateTime.Now.ToString("MM");
            if (String.IsNullOrEmpty(prjguid) == false
                && String.IsNullOrEmpty(content1)==false
                && String.IsNullOrEmpty(content2)==false
                && String.IsNullOrEmpty(prjManager)==false
                && String.IsNullOrEmpty(zr1)==false )
            {
                dic1.Clear();
                dic1["ProjectGuidID"] = prjguid;
                DateTime t1 = DateTime.Parse(year1 + "-"+month1 + "-01");
                dic1["begDate"] = t1;

                DateTime t2 = DateTime.Parse(year1 +"-"+finish1.Substring(0,2)+"-"+finish1.Substring(2));
                dic1["endDate"] = t2;

                dic1["Workload"] = ((t2 - t1).Days + 1) * 8;
                dic1["TaskTitle"] = "�����ƻ�";
                dic1["content"] = content1 + "--" + content2;
                dic1["Manager"] = prjManager;
                dic1["Status"] = "1";
                dic1["GuidID"] = WebFrame.Util.JString.GetUnique32ID();
                dic1["AddTime"] = DateTime.Now;
                dic1["AddUser"] = zr1;

                da0.NewData(dic1);
            }

        }


        /// <summary>
        /// ɾ���ɹ�����ͬʱɾ�����а����ĸ���
        /// �ϴ��ɹ�������־����־�����ĸ���
        /// </summary>
        /// <param name="guidid"></param>
        /// <returns></returns>
        public bool DeleteData(String guidid)
        {
            bool succ = false;
            JConnect.GetConnect().BeginTrans();
            try
            {
                //1--ɾ���ɹ���
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("Guidid", guidid));
                Tb_TaskDA da1 = new Tb_TaskDA();
                DataRow dr1 = da1.GetFirstDataRow(condition, "*");
                if (dr1 != null)
                {
                    //ɾ����ظ���
                    String filename1 = dr1["RelaFile"].ToString();
                    if (String.IsNullOrEmpty(filename1) == false)
                    {
                        filename1 = System.Web.HttpContext.Current.Server.MapPath(filename1);
                        if (File.Exists(filename1))
                        {
                            File.Delete(filename1);
                        }
                    }

                    //ɾ������
                    da1.DeleteData(condition);
                }

                //2--ɾ���ɹ�������־
                condition.Clear();
                condition.Add(new SearchField("parentGuid", guidid));
                Tb_Task_LogDA da2 = new Tb_Task_LogDA();
                DataTable dt1 = da2.GetListData(condition, -1, -1, "", "*");
                foreach (DataRow dr0 in dt1.Rows)
                {
                    String filename1 = dr0["RelateFile"].ToString();
                    if (String.IsNullOrEmpty(filename1) == false)
                    {
                        filename1 = System.Web.HttpContext.Current.Server.MapPath(filename1);
                        if (File.Exists(filename1))
                        {
                            File.Delete(filename1);
                        }
                    }
                }
                da2.DeleteData(condition);

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

        /// <summary>
        /// �õ����������ĵ�һ������
        /// </summary>
        /// <param name="guidid"></param>
        /// <returns></returns>
        public DataRow GetFirstDataRow(String guidid,String fields)
        {
            Tb_TaskDA da1 = new Tb_TaskDA();
            List<SearchField> condition = new List<SearchField>();
            condition.Add(new SearchField("GuidID", guidid));
            DataRow dr1 = da1.GetFirstDataRow(condition, fields);
            return dr1;
        }

        /// <summary>
        /// �û��ӵ�
        /// </summary>
        /// <param name="guidid"></param>
        /// <returns></returns>
        public bool ReceiveTask(String guidid)
        {
            bool succ = false;
            JConnect.GetConnect().BeginTrans();
            try
            {
                //1--���Ĺ����е�����
                Dictionary<String, object> dic1 = new Dictionary<string,object>();
                dic1["ExecuteMan"] = FrameLib.UserID;
                dic1["Status"] = "1";
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("GuidID", guidid));
                Tb_TaskDA da1 = new Tb_TaskDA();
                da1.EditData(condition, dic1);
               

                //������ɹ���������ɹ�������־
                //2--����������־
                (new Tb_Task_LogBU()).NewLog(guidid, FrameLib.UserID+"�нӹ���", "", "0", null);

                JConnect.GetConnect().CommitTrans();
                succ = true;
            }
            catch (Exception err)
            {
                WebFrame.Util.JTool.WriteErrorLog(err.ToString());
                JConnect.GetConnect().RollBackTrans();
                succ = false;
            }
            return succ;
        }

        /// <summary>
        /// �ύһ���ƻ�
        /// ����taskid���õ���Ŀ��id�����üƻ�������ߺ�״̬
        /// </summary>
        /// <param name="GuidID">��Ŀ��GuidID</param>
        /// <param name="userid">�ύ���û�ID</param>
        /// <returns></returns>
        public bool SubmitTask(String GuidID)
        {
            bool succ = false;
            try
            {
                Tb_TaskDA da1 = new Tb_TaskDA();
                List<SearchField> condition = new List<SearchField>();
                Dictionary<String, object> dic1 = new Dictionary<string, object>();
                condition.Add(new SearchField("GuidID", GuidID));

                //1--�ύ�������
                dic1["Status"] = "2";
                dic1["CheckDate"] = DateTime.Now;
                da1.EditData(condition, dic1);

                //2--������־
                (new Tb_Task_LogBU()).NewLog(GuidID, "�ύ���", "");

                succ = true;
            }
            catch (Exception err)
            {
                succ = false;
            }
            return succ;
        }


        /// <summary>
        /// ȡ��һ������
        /// </summary>
        /// <param name="GuidID"></param>
        /// <returns></returns>
        public bool CancelTask(String GuidID)
        {
            bool succ = false;
            try
            {
                Tb_TaskDA da1 = new Tb_TaskDA();
                List<SearchField> condition = new List<SearchField>();
                Dictionary<String, object> dic1 = new Dictionary<string, object>();
                condition.Add(new SearchField("GuidID", GuidID));

                //1--ȡ������
                dic1["Status"] = "9";
                da1.EditData(condition, dic1);
                
                //2--������־
                (new Tb_Task_LogBU()).NewLog(GuidID, "ȡ������", "");

                succ = true;
            }
            catch (Exception err)
            {
                succ = false;
            }
            return succ;
        }


        /// <summary>
        /// ��ɽӵ��Ĳ���
        /// </summary>
        /// <param name="TaskID"></param>
        /// <param name="endDate"></param>
        /// <returns></returns>
        public bool JieDanTask(String GuidIDS, String domanid,String domanName,
            String endDate)
        {
            bool succ = false;
            try
            {
                Tb_TaskDA da1 = new Tb_TaskDA();
                String[] arrs = GuidIDS.Split(',');
                List<SearchField> condition = new List<SearchField>();
                Dictionary<String, object> dic1 = new Dictionary<string, object>();
                foreach (String m in arrs)
                {

                    condition.Clear();
                    condition.Add(new SearchField("GuidID", m));

                    //1--�ӵ�
                    dic1.Clear();
                    dic1["Status"] = "1";
                    dic1["ExecuteManID"] = domanid;
                    dic1["ExecuteManName"] = domanName;
                    dic1["begDate"] = DateTime.Now;
                    dic1["endDate"] = DateTime.Parse(endDate);
                    da1.EditData(condition, dic1);

                    //2--������־
                    (new Tb_Task_LogBU()).NewLog(m, "�ӵ�", "�ƻ����ʱ�䣺" + endDate);
                }

                succ = true;
            }
            catch (Exception err)
            {
                succ = false;
            }
            return succ;
        }

        public bool JieDanTask(String GuidIDS, 
            String endDate)
        {
            return this.JieDanTask(GuidIDS, WebFrame.FrameLib.UserID, 
                WebFrame.FrameLib.UserName, endDate);
        }

        /// <summary>
        /// �˵�
        /// </summary>
        /// <param name="GuidID"></param>
        /// <returns></returns>
        public bool TuiTaskTask(String GuidID)
        {
            bool succ = false;
            try
            {
                Tb_TaskDA da1 = new Tb_TaskDA();
                List<SearchField> condition = new List<SearchField>();
                Dictionary<String, object> dic1 = new Dictionary<string, object>();
                condition.Add(new SearchField("GuidID", GuidID));

                //1--�˵�
                dic1["Status"] = "0";
                dic1["ExecuteManID"] = "";
                dic1["ExecuteManName"] = "";
                dic1["begDate"] = DBNull.Value;
                dic1["endDate"] = DBNull.Value;
                da1.EditData(condition, dic1);

                //2--������־
                (new Tb_Task_LogBU()).NewLog(GuidID, "�˵�","");

                succ = true;
            }
            catch (Exception err)
            {
                succ = false;
            }
            return succ;
        }


        /// <summary>
        /// Complete or not Complete Task
        /// </summary>
        /// <param name="TaskID"></param>
        /// <param name="Flag"></param>
        /// <returns></returns>
        public bool CompleteTask(String GuidID, int Flag,String Remark)
        {
            bool succ = false;
            try
            {
                Tb_TaskDA da1 = new Tb_TaskDA();
                List<SearchField> condition = new List<SearchField>();
                Dictionary<String, object> dic1 = new Dictionary<string, object>();
                condition.Add(new SearchField("GuidID", GuidID));

                String title = "�������";
                //1--�˵�
                if (Flag == 1)
                {
                    dic1["Status"] = "3";
                    dic1["finishDate"] = DateTime.Now;  //������ʱ��
                }
                else if (Flag == 2)                    //�˻��ظ�
                {
                    dic1["Status"] = "1";
                    title = "�����˻��ظģ��˻�˵����"+Remark;
                }
                else
                {
                    dic1["Status"] = "4";
                    dic1["finishDate"] = DateTime.Now;  //������ʱ��
                    title = "����ʧ��";
                }
                da1.EditData(condition, dic1);

                //2--������־       
                (new Tb_Task_LogBU()).NewLog(GuidID, "��˹���", title);

                succ = true;
            }
            catch (Exception err)
            {
                succ = false;
            }
            return succ;
        }

        /// <summary>
        /// �õ���ǰ�û�δ��ɹ���������
        /// </summary>
        /// <returns></returns>
        public int GetNoCompleteTaskCount(String BigKind)
        {
            int result = 0;
            List<SearchField> condition = new List<SearchField>();
            condition.Add(new SearchField("BigKind", BigKind));
            condition.Add(new SearchField("Status='1' or Status='2'", "", SearchOperator.UserDefine));
            condition.Add(new SearchField("ExecuteManID", FrameLib.UserID));
            Dictionary<String, object> dic1 = this.GetFirstDictionary(condition, "count(*) as count1");
            if (dic1 != null && dic1.Count > 0)
            {
                int.TryParse(dic1["count1"].ToString(), out result);
            }
            return result;
        }

        public int GetNoCompleteTaskCount()
        {
            return this.GetNoCompleteTaskCount("0");
        }


        /// <summary>
        /// �ύ��������
        /// </summary>
        /// <param name="GuidID"></param>
        /// <param name="workload"></param>
        /// <param name="score"></param>
        /// <returns></returns>
        public bool SubmitKaoHeData(String GuidID, int workload, int score)
        {
            bool succ = false;
            try
            {
                Tb_TaskDA da1 = new Tb_TaskDA();
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("GuidID", GuidID));
                Dictionary<String,object> dic1=new Dictionary<string,object>();

                dic1["Status"] = "3";
                dic1["CheckDate"] = DateTime.Now;
                dic1["Score"] = score;
                dic1["LastWorkLoad"] = workload;

                da1.EditData(condition, dic1);
                succ = true;

            }
            catch (Exception err)
            {
                succ = false;
            }
            return succ;
        }

        #endregion

        #region ��̬����
        /// <summary>
        /// ���ݹ�����ID,�õ��丽���б�
        /// </summary>
        /// <param name="Guidid"></param>
        /// <returns></returns>
        public static String GetAttachmengList(String Guidid)
        {
            //�ж��û��������ܷ����ά��
            bool IsCanEdit = false;
            List<SearchField> condition = new List<SearchField>();
            //�õ�����������
            condition.Add(new SearchField("Guidid", Guidid));
            Dictionary<String, object> dic1 = (new Tb_TaskDA()).GetFirstDictionary(condition, "*");
            if (dic1 != null && dic1.Count>0)
            {
                String Status1 = dic1["Status"].ToString();
                String ExecuteManID = dic1["ExecuteManID"].ToString();
                String parentGuid = dic1["parentGuid"].ToString();

                //δ�ɵ��������У������ ������ɡ�δ��ɺ������ϣ�
                if(Status1=="0"|| Status1=="1" || Status1=="2")
                {
                    if (ExecuteManID == WebFrame.FrameLib.UserID)
                    {
                        IsCanEdit = true;
                    }
                    else
                    {
                        IsCanEdit = (new Tb_ProjectBU()).IsCanEditProjectByProjectNum(parentGuid, WebFrame.FrameLib.UserID);
                    }
                }
            }
            
            //�õ������б�
            String result = String.Empty;         
            JAttachmentDA da1 = new JAttachmentDA();
            condition.Clear();
            condition.Add(new SearchField("parentGuid", Guidid));
            DataTable dt1 = da1.GetListData(condition, -1, -1, "UploadTime", "*");
            bool first = true;
            String temp1 = "<a title='�ϴ�ʱ��{2},�����' href='#' onclick='javascript:openFile(\"{0}\",\"{1}\")'>{1}</a> ";
            if (IsCanEdit)
            {
                // temp1 = temp1 + "<a title='ɾ������' onclick='javascript:deleteFile(\"{2}\")' href='#'><img src='/images/Frame/del.gif' width='16' height='16' border='0' /></a>";
            }


            foreach (DataRow dr1 in dt1.Rows)
            {
                if (first)
                {
                    result = String.Format(temp1, dr1["EncryptFileName"].ToString(), dr1["FileName"].ToString(), dr1["UploadTime"]);
                    first = false;
                }
                else
                {
                    result = result + "<br/>";
                    result = result + String.Format(temp1, dr1["EncryptFileName"].ToString(), dr1["FileName"].ToString(), dr1["UploadTime"]);
                }
            }

            if (IsCanEdit)
            {
                if (String.IsNullOrEmpty(result))
                {
                    result = String.Format("<a href='#' onclick='UploadAttachmentFile(\"{0}\")'>�ϴ�����</a>", Guidid);
                }
                else
                {
                    result = result + "<br/>" + String.Format("<a href='#' onclick='UploadAttachmentFile(\"{0}\")'>�ϴ�����</a>", Guidid);
                }
            }

            return result;
        }



        /// <summary>
        /// �õ����µĹ�����־�����б�
        /// </summary>
        /// <param name="Guidid"></param>
        /// <returns></returns>
        public static String GetNewTrackInfo(String Guidid)
        {
            String result = String.Empty;

            return result;
        }
        #endregion

        #region ˽�з���
        #endregion
    }
}
