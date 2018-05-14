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
    /// ˵����Tb_Task_Log
    /// ���룺����
    /// ʱ�䣺2016/8/11 17:28:28
    public partial  class Tb_Task_LogBU
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
                Tb_Task_LogDA da1 = new Tb_Task_LogDA();
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
                Tb_Task_LogDA da1 = new Tb_Task_LogDA();
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
                Tb_Task_LogDA da1 = new Tb_Task_LogDA();
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
                Tb_Task_LogDA da1 = new Tb_Task_LogDA();
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
                Tb_Task_LogDA da1 = new Tb_Task_LogDA();
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
                Tb_Task_LogDA da1 = new Tb_Task_LogDA();
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
                Tb_Task_LogDA da1 = new Tb_Task_LogDA();
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
        /// ����һ���ɹ�������־
        /// </summary>
        /// <param name="ProjectGuidID"></param>
        /// <param name="Stitle"></param>
        /// <param name="Content"></param>
        /// <param name="Kind"></param>
        /// <param name="f1"></param>
        /// <returns></returns>
        public int NewLog(String ProjectGuidID,
            String Stitle,String Content,String Kind,
            System.Web.UI.WebControls.FileUpload f1)
        {
            String RelateFile=String.Empty;
            String RelaTrueName = String.Empty;
            return NewLog(ProjectGuidID, Stitle, Content, Kind, f1, ref RelateFile, ref RelaTrueName);
        }


        public int NewLog(String ProjectGuidID,
           String Stitle, String Content, String Kind,
           System.Web.UI.WebControls.FileUpload f1, 
            ref String RelateFile,ref String RelaTrueName )
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
                dic1["Stitle"] = Stitle;
                if (String.IsNullOrEmpty(Content) == false)
                {
                    dic1["Content"] = (new StringBuilder()).Append(Content);
                }
                dic1["AddTime"] = DateTime.Now;
                dic1["AddUserID"] = WebFrame.FrameLib.UserID;
                dic1["AddUserNet"] = WebFrame.FrameLib.UserName;
                dic1["kind"] = Kind;

                if (f1 != null && f1.HasFile)
                {
                    String ext1 = Path.GetExtension(f1.FileName);
                    truename1 = WebFrame.Util.JString.GetUnique32ID() + ext1;
                    f1.SaveAs(System.Web.HttpContext.Current.Server.MapPath(FileDir + truename1));
                    dic1["RelateFile"] = FileDir + truename1;
                    dic1["RelaTrueName"] = Path.GetFileName(f1.FileName);

                    //�ļ������ļ�·��
                    RelateFile = dic1["RelateFile"].ToString();
                    RelaTrueName = dic1["RelaTrueName"].ToString();

                    saveFile = true;
                }
                Tb_Task_LogDA da1 = new Tb_Task_LogDA();
                da1.NewData(dic1);
                succ = 1;
            }
            catch (Exception err)
            {
                //ɾ�����ϴ����ļ�
                if (saveFile && File.Exists(System.Web.HttpContext.Current.Server.MapPath(FileDir + truename1)))
                {
                    File.Delete(System.Web.HttpContext.Current.Server.MapPath(FileDir + truename1));
                }
                throw err;
            }

            return succ;
        }


        /// <summary>
        /// ����һ���µĹ�����־
        /// </summary>
        /// <param name="TaskID"></param>
        /// <param name="Stitle"></param>
        /// <param name="Content"></param>
        /// <param name="Kind"></param>
        /// <returns></returns>
        public int NewLog(String TaskID,
            String DoKind,String Content)
        {
            int succ = 0;
            try
            {
                Dictionary<String, object> dic1 = new Dictionary<string, object>();
                dic1["guidID"] = WebFrame.Util.JString.GetUnique32ID();
                dic1["TaskID"] = TaskID;
                dic1["Stitle"] = "������־";
                dic1["Content"] = Content;
                dic1["AddTime"] = DateTime.Now.ToString();
                dic1["AddUserID"] = FrameLib.UserID;
                dic1["AddUserName"] = FrameLib.UserName;
                dic1["Dokind"] = DoKind;
                succ = 1;
                this.NewData(dic1);
            }
            catch (Exception err)
            {
                ;
            }
            return succ;
        }

        #endregion

        #region ��̬����
        /// <summary>
        /// �õ���־������
        /// </summary>
        /// <param name="ParentGuidid"></param>
        /// <returns></returns>
        public static int GetLogCount(String ParentGuidid)
        {
            int result = 0;
            if (String.IsNullOrEmpty(ParentGuidid) == false)
            {
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("TaskID", ParentGuidid));
                Tb_Task_LogDA da1 = new Tb_Task_LogDA();
                DataRow dr1= da1.GetFirstDataRow(condition, "count(*) as count0");
                if (dr1 != null )
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
