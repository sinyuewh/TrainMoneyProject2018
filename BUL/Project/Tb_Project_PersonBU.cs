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
    /// ˵����Tb_Project_Person
    /// ���룺�����û�
    /// ʱ�䣺2016/8/8 14:46:57
    public partial  class Tb_Project_PersonBU
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
                Tb_Project_PersonDA da1 = new Tb_Project_PersonDA();
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
                Tb_Project_PersonDA da1 = new Tb_Project_PersonDA();
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
                Tb_Project_PersonDA da1 = new Tb_Project_PersonDA();
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
                Tb_Project_PersonDA da1 = new Tb_Project_PersonDA();
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
                Tb_Project_PersonDA da1 = new Tb_Project_PersonDA();
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
                Tb_Project_PersonDA da1 = new Tb_Project_PersonDA();
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
                Tb_Project_PersonDA da1 = new Tb_Project_PersonDA();
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
        /// ɾ���ض�������
        /// </summary>
        /// <param name="guiidid"></param>
        /// <returns></returns>
        public bool DelProjectPerson(String guiidid)
        {
            bool succ = false;
            try
            {
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("GuidID", guiidid));
                this.DeleteData(condition);
                succ = true;
            }
            catch (Exception err)
            {
                WebFrame.Util.JTool.WriteErrorLog(err.ToString());
            }
            return succ;
        }


        /// <summary>
        /// �õ���Ա�ı��
        /// </summary>
        /// <param name="projectGuid"></param>
        /// <returns></returns>
        public int GetPersonNum(String projectGuid)
        {
            int num1 = 0;
            List<SearchField> condition = new List<SearchField>();
            condition.Add(new SearchField("parentGuid", projectGuid));
            Dictionary<String,object> dic1= this.GetFirstDictionary(condition, "max(num) as num1");
            if (dic1 != null && dic1.Count > 0 )
            {
                int.TryParse(dic1["num1"].ToString(),out num1);
                if (num1 > 0)
                {
                    num1++;
                }
            }
            if (num1 == 0) num1 = 1;
            return num1;
        }

        /// <summary>
        /// �õ���Ŀ��ĳ�Ա��Ϣ
        /// </summary>
        /// <param name="projectGuid"></param>
        /// <returns></returns>
        public String GetPersonInfo(String projectGuid)
        {
            String result = "δ����";
            List<SearchField> condition = new List<SearchField>();
            condition.Add(new SearchField("parentGuid", projectGuid));
            DataTable dt1 = this.GetListData(condition, -1, -1, "num", "*");
            if (dt1 != null && dt1.Rows.Count > 0)
            {
                if (dt1.Rows.Count > 1)
                {
                    result = "{0}��{1}��";
                }
                else
                {
                    result = "{0}";
                }
                int count1 = dt1.Rows.Count;
                String prjName = dt1.Rows[0]["UserName"].ToString();

                //��Ŀ��ɫΪ1��ʾ����Ŀ����
                condition.Add(new SearchField("PrjRole", "1"));
                Dictionary<String, object> dic1 = this.GetFirstDictionary(condition, "UserName");
                if (dic1 != null && dic1.Count > 0)
                {
                    prjName = dic1["UserName"].ToString();
                }
                result = String.Format(result, prjName, count1);
            }
            return result;
        }

        /// <summary>
        /// ������Ŀ��ĳ�Ա
        /// </summary>
        /// <param name="personid"></param>
        /// <param name="projectGuidid"></param>
        /// <param name="gw"></param>
        /// <returns></returns>
        public bool AddPerson(String personid, String projectGuidid, String gw)
        {
            bool succ = false;
            JConnect.GetConnect().BeginTrans();
            try
            {
                String[] arr1 = personid.Split(',');
                Dictionary<String, object> dic1 = new Dictionary<string, object>();
                List<SearchField> condition = new List<SearchField>();

                Tb_Project_PersonDA da1 = new Tb_Project_PersonDA();
                foreach (String m in arr1)
                {
                    condition.Clear();
                    condition.Add(new SearchField("parentGuid", projectGuidid));
                    condition.Add(new SearchField("UserID", m));
                    if (da1.HasData(condition))
                    {
                        dic1.Clear();
                        dic1["PrjRole"] = gw;
                        da1.EditData(condition, dic1);
                    }
                    else
                    {
                        dic1.Clear();
                        dic1["parentGuid"] = projectGuidid;
                        dic1["UserID"] = m;
                        dic1["UserName"] = JUserBU.GetUserNamByIDS(m);
                        dic1["PrjRole"] = gw;
                        dic1["GuidID"] = JString.GetUnique32ID();
                        da1.NewData(dic1);
                    }
                }
                JConnect.GetConnect().CommitTrans();
                succ = true;
            }
            catch (Exception err)
            {
                JConnect.GetConnect().RollBackTrans();
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
