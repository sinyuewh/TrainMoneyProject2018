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
    /// ˵����Tb_KH_Project_Person
    /// ���룺�����û�
    /// ʱ�䣺2016/9/4 22:32:21
    public partial  class Tb_KH_Project_PersonBU
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
                Tb_KH_Project_PersonDA da1 = new Tb_KH_Project_PersonDA();
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
                Tb_KH_Project_PersonDA da1 = new Tb_KH_Project_PersonDA();
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
        public void EditData(List<SearchField> condition, Dictionary<String, object> data1,
            String DataID)
        {
            try
            {
                Tb_KH_Project_PersonDA da1 = new Tb_KH_Project_PersonDA();
                da1.EditData(condition, data1);
                this.executeResultCount = da1.ExecuteResultCount;


                //���¼�������
                da1.RecalProjectGXDData(DataID);

            }
            catch (Exception err)
            {
                //this.ErrorInfo = err.Message.Replace("\r", "").Replace("\t", "").Replace("\n", "");
                throw err;
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
                Tb_KH_Project_PersonDA da1 = new Tb_KH_Project_PersonDA();
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
                Tb_KH_Project_PersonDA da1 = new Tb_KH_Project_PersonDA();
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
                Tb_KH_Project_PersonDA da1 = new Tb_KH_Project_PersonDA();
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
                Tb_KH_Project_PersonDA da1 = new Tb_KH_Project_PersonDA();
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
        #endregion

        #region ˽�з���
        #endregion
    }
}
