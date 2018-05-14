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
    /// ˵����Tb_Task_Bug
    /// ���룺Ф����
    /// ʱ�䣺2016/8/18 16:23:32
    public partial  class Tb_Task_BugBU
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
                Tb_Task_BugDA da1 = new Tb_Task_BugDA();
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
                Tb_Task_BugDA da1 = new Tb_Task_BugDA();
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
                Tb_Task_BugDA da1 = new Tb_Task_BugDA();
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
                Tb_Task_BugDA da1 = new Tb_Task_BugDA();
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
                Tb_Task_BugDA da1 = new Tb_Task_BugDA();
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
                Tb_Task_BugDA da1 = new Tb_Task_BugDA();
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
                Tb_Task_BugDA da1 = new Tb_Task_BugDA();
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
        /// ����һ���ɹ���BUG
        /// </summary>
        /// <param name="ProjectGuidID"></param>
        /// <param name="Stitle"></param>
        /// <param name="Content"></param>
        /// <param name="Kind"></param>
        /// <param name="f1"></param>
        /// <returns></returns>
        public int NewBug(String ProjectGuidID,
            int BugA,int BugB,int BugC,int Kind,
            String Remark,String RelateFile,
            String RelaTrueName)
        {
            int succ = 0;
            try
            {
                Dictionary<String, object> dic1 = new Dictionary<string, object>();

                dic1["guidID"] = WebFrame.Util.JString.GetUnique32ID();
                dic1["parentGuid"] = ProjectGuidID;

                dic1["BugA"] = BugA;
                dic1["BugB"] = BugB;
                dic1["BugC"] = BugC;

                dic1["Remark"] = Remark;
                dic1["Kind"] = Kind;
                
                dic1["AddTime"] = DateTime.Now;
                dic1["AddUserID"] = WebFrame.FrameLib.UserID;
                dic1["AddUserNet"] = WebFrame.FrameLib.UserName;

                dic1["RelateFile"] = RelateFile;
                dic1["RelaTrueName"] = RelaTrueName;

                Tb_Task_BugDA da1 = new Tb_Task_BugDA();
                da1.NewData(dic1);
                succ = 1;
            }
            catch (Exception err)
            {
                //ɾ�����ϴ����ļ�
                throw err;
            }

            return succ;
        }


        /// <summary>
        /// ����һ���ɹ���BUG
        /// </summary>
        /// <param name="ProjectGuidID"></param>
        /// <param name="Stitle"></param>
        /// <param name="Content"></param>
        /// <param name="Kind"></param>
        /// <param name="f1"></param>
        /// <returns></returns>
        public int NewBug(String ProjectGuidID,
            int BugA, int BugB, int BugC, int Kind,
            String Remark, System.Web.UI.WebControls.FileUpload f1)
        {
            int succ = 0;
            String FileDir = "/Attachment/UseAttachment/";
            String truename1 = String.Empty;
            bool saveFile = false;

            try
            {
                Dictionary<String, object> dic1 = new Dictionary<string, object>();

                dic1["guidID"] = WebFrame.Util.JString.GetUnique32ID();
                dic1["parentGuid"] = ProjectGuidID;

                dic1["BugA"] = BugA;
                dic1["BugB"] = BugB;
                dic1["BugC"] = BugC;

                dic1["Remark"] = Remark;
                dic1["Kind"] = Kind;

                dic1["AddTime"] = DateTime.Now;
                dic1["AddUserID"] = WebFrame.FrameLib.UserID;
                dic1["AddUserNet"] = WebFrame.FrameLib.UserName;

                if (f1 != null && f1.HasFile)
                {
                    String ext1 = Path.GetExtension(f1.FileName);
                    truename1 = WebFrame.Util.JString.GetUnique32ID() + ext1;
                    f1.SaveAs(System.Web.HttpContext.Current.Server.MapPath(FileDir + truename1));
                    dic1["RelateFile"] = FileDir + truename1;
                    dic1["RelaTrueName"] = Path.GetFileName(f1.FileName);

                    saveFile = true;
                }

                Tb_Task_BugDA da1 = new Tb_Task_BugDA();
                da1.NewData(dic1);
                succ = 1;
            }
            catch (Exception err)
            {
                //ɾ�����ϴ����ļ�
                //ɾ�����ϴ����ļ�
                if (saveFile && File.Exists(System.Web.HttpContext.Current.Server.MapPath(FileDir + truename1)))
                {
                    File.Delete(System.Web.HttpContext.Current.Server.MapPath(FileDir + truename1));
                }
                throw err;
            }

            return succ;
        }

        #endregion

        #region ��̬����
        /// <summary>
        /// �õ�BUG������
        /// </summary>
        /// <param name="ParentGuidid"></param>
        /// <returns></returns>
        public static int GetBugCount(String ParentGuidid)
        {
            int result = 0;
            if (String.IsNullOrEmpty(ParentGuidid) == false)
            {
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("parentGuid", ParentGuidid));
                Tb_Task_BugDA da1 = new Tb_Task_BugDA();
                DataRow dr1 = da1.GetFirstDataRow(condition, "SUM(BugA + BugB + BugC) AS count0");
                if (dr1 != null && dr1[0].ToString()!=String.Empty)
                {
                    result = int.Parse(dr1[0].ToString());
                }
            }
            return result;
        }
        #endregion

        #region ˽�з���
        #endregion
    }
}
