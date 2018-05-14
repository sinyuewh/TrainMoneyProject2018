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
    /// ˵����Tb_Project_Log
    /// ���룺�����û�
    /// ʱ�䣺2016/8/8 22:58:03
    public partial  class Tb_Project_LogBU
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
                Tb_Project_LogDA da1 = new Tb_Project_LogDA();
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
                Tb_Project_LogDA da1 = new Tb_Project_LogDA();
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
                Tb_Project_LogDA da1 = new Tb_Project_LogDA();
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
                Tb_Project_LogDA da1 = new Tb_Project_LogDA();
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
                Tb_Project_LogDA da1 = new Tb_Project_LogDA();
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
                Tb_Project_LogDA da1 = new Tb_Project_LogDA();
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
                Tb_Project_LogDA da1 = new Tb_Project_LogDA();
                da1.ExcuteSql(sql);
            }
            catch (Exception err)
            {
                this.ErrorInfo = err.Message.Replace("\r", "").Replace("\t", "").Replace("\n", "");
            }
        }
        #endregion
        
        #region ʵ������
        
        #endregion

        #region ��̬����
        /// <summary>
        /// �õ���ǰ��Ŀ�Ĳ�����־����
        /// </summary>
        /// <param name="projectGuidid"></param>
        /// <returns></returns>
        public static int GetProjectLogCount(String projectGuidid)
        {
            int count1 = 0;
            List<SearchField> condition = new List<SearchField>();
            condition.Add(new SearchField("parentGuid", projectGuidid));
            condition.Add(new SearchField("kind", "0"));

            Tb_Project_LogDA da1 = new Tb_Project_LogDA();
            DataRow dr1= da1.GetFirstDataRow(condition,"count(*) as count0");
            if (dr1 != null)
            {
                int.TryParse(dr1[0].ToString(),out count1);
            }
            return count1;
        }

        /// <summary>
        /// �õ���صĸ����б�
        /// </summary>
        /// <param name="Guidid"></param>
        /// <returns></returns>
        public static String GetAttachmengList(String Guidid,String projectStatus)
        {
            //�ж��û��������ܷ����ά��
            bool IsCanManager = false;
            if (projectStatus == "1")
            {
                IsCanManager = IsCanEdit(Guidid);
            }

            String result = String.Empty;
            List<SearchField> condition = new List<SearchField>();
            JAttachmentDA da1 = new JAttachmentDA();
            condition.Clear();
            condition.Add(new SearchField("parentGuid", Guidid));
            DataTable dt1 = da1.GetListData(condition, -1, -1, "UploadTime", "*");
            bool first = true;
            String temp1 = "<a title='�򿪸���' href='#' onclick='javascript:openFile(\"{0}\",\"{1}\")'>{1}</a> ";
            if (IsCanManager)
            {
               // temp1 = temp1 + "<a title='ɾ������' onclick='javascript:deleteFile(\"{2}\")' href='#'><img src='/images/Frame/del.gif' width='16' height='16' border='0' /></a>";
            }


            foreach (DataRow dr1 in dt1.Rows)
            {
                if (first)
                {
                    result = String.Format(temp1, dr1["EncryptFileName"].ToString(), dr1["FileName"].ToString(), dr1["Guidid"].ToString());
                    first = false;
                }
                else
                {
                    result = result + "<br/>";
                    result = result + String.Format(temp1, dr1["EncryptFileName"].ToString(), dr1["FileName"].ToString(), dr1["Guidid"].ToString());
                }
            }

            if (IsCanManager)
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
        /// �жϵ�ǰ�û��ܷ�����ݽ���ά��
        /// </summary>
        /// <param name="Guidid"></param>
        /// <returns></returns>
        public static bool IsCanEdit(String Guidid)
        {
            bool result = false;
            if (FrameLib.UserID == "admin")
            {
                result = true;
            }
            else
            {
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("guidID", Guidid));
                Tb_Project_LogDA da1 = new Tb_Project_LogDA();
                Dictionary<String,object> dic1= da1.GetFirstDictionary(condition, "*");
                if (dic1 != null && dic1.Count > 0)
                {
                    if (dic1["AddUserID"].ToString() != "admin")
                    {
                        String parentGuid = dic1["parentGuid"].ToString();   //��Ŀ���
                        Tb_ProjectDA da2 = new Tb_ProjectDA();
                        condition.Clear();
                        condition.Add(new SearchField("prjNum", parentGuid));
                        dic1.Clear();
                        dic1 = da2.GetFirstDictionary(condition, "GuidID");
                        if (dic1 != null && dic1.Count > 0)
                        {
                            result =(new Tb_ProjectBU()).IsCanEditProject(dic1["GuidID"].ToString(),WebFrame.FrameLib.UserID);
                        }
                    }
                }
            }
            return result;
        }
        #endregion

        #region ˽�з���
        #endregion
    }
}
