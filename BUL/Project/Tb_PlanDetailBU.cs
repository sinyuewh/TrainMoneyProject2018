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
    /// ˵����Tb_PlanDetail
    /// ���룺����
    /// ʱ�䣺2016/8/11 17:28:28
    public partial  class Tb_PlanDetailBU
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
                Tb_PlanDetailDA da1 = new Tb_PlanDetailDA();
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
                Tb_PlanDetailDA da1 = new Tb_PlanDetailDA();
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
                Tb_PlanDetailDA da1 = new Tb_PlanDetailDA();
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
                Tb_PlanDetailDA da1 = new Tb_PlanDetailDA();
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
                Tb_PlanDetailDA da1 = new Tb_PlanDetailDA();
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
                Tb_PlanDetailDA da1 = new Tb_PlanDetailDA();
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
                Tb_PlanDetailDA da1 = new Tb_PlanDetailDA();
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
        /// ���ݼƻ��ļ�Excel�õ��ƻ���ϸ������
        /// </summary>
        /// <param name="f1"></param>
        /// <returns></returns>
        public List<Tb_PlanDetailDD> GetPlanDetailListByExcel(System.Web.UI.WebControls.FileUpload f1,ref String saveFileName)
        {
            List<Tb_PlanDetailDD> list1 = new List<Tb_PlanDetailDD>();
            try
            {
                if (f1.HasFile)
                {
                    System.Web.HttpServerUtility server = System.Web.HttpContext.Current.Server;
                    saveFileName = "/Attachment/Plan/" + WebFrame.Util.JString.GetUnique32ID()
                        + System.IO.Path.GetExtension(f1.FileName);
                    
                    String fname = server.MapPath(saveFileName);
                    UExcel u1 = new UExcel(XlsFormat.Xls2003);
                    f1.SaveAs(fname);
                    DataSet ds1 = u1.XlsToDataSet(fname);
                    DataTable dt1 = ds1.Tables[0];
                    /*
                     ����/���/�ƻ�����/�ƻ���ʼʱ��/�ƻ�����ʱ��/������Ԥ�������죩/�ؼ��ڵ�/������/��ע
                     */
                    for (int i = 2; i < dt1.Rows.Count; i++)
                    {
                        if (String.IsNullOrEmpty(dt1.Rows[i][1].ToString()) == false &&
                            String.IsNullOrEmpty(dt1.Rows[i][2].ToString()) == false)
                        {
                            Tb_PlanDetailDD dd1 = new Tb_PlanDetailDD();
                            dd1.PlanKind = dt1.Rows[i][0].ToString();
                            dd1.PlanNum = dt1.Rows[i][1].ToString();
                            dd1.PlanTitel = dt1.Rows[i][2].ToString();
                            dd1.BegTime = DateTime.Parse(dt1.Rows[i][3].ToString());
                            dd1.EndTime = DateTime.Parse(dt1.Rows[i][4].ToString());
                            dd1.Workload = double.Parse(dt1.Rows[i][5].ToString());
                            dd1.KeyPlan = false;
                            if (dt1.Rows[i][6].ToString() != String.Empty)
                            {
                                if (dt1.Rows[i][6].ToString() == "��" || dt1.Rows[i][6].ToString() == "1"
                                    || dt1.Rows[i][6].ToString().ToLower() == "yes" || dt1.Rows[i][6].ToString().ToLower() == "true")
                                {
                                    dd1.KeyPlan = true;
                                }
                            }
                            dd1.PayMemo = dt1.Rows[i][7].ToString();
                            dd1.Remark = dt1.Rows[i][8].ToString();

                            list1.Add(dd1);
                        }
                    }
                }
            }
            catch (Exception err)
            {
                list1.Clear();
            }
            return list1;
        }


        /// <summary>
        /// ���ݼƻ��ļ�Excel�õ��ƻ���ϸ������
        /// </summary>
        /// <param name="f1"></param>
        /// <returns></returns>
        public List<Tb_PlanDetailDD> GetMonthPlanDetailListByExcel(System.Web.UI.WebControls.FileUpload f1, 
            ref String saveFileName)
        {
            List<Tb_PlanDetailDD> list1 = new List<Tb_PlanDetailDD>();
            try
            {
                if (f1.HasFile)
                {
                    System.Web.HttpServerUtility server = System.Web.HttpContext.Current.Server;
                    saveFileName = "/Attachment/Plan/" + WebFrame.Util.JString.GetUnique32ID()
                        + System.IO.Path.GetExtension(f1.FileName);

                    String fname = server.MapPath(saveFileName);
                    UExcel u1 = new UExcel(XlsFormat.Xls2003);
                    f1.SaveAs(fname);
                    DataSet ds1 = u1.XlsToDataSet(fname);
                    DataTable dt1 = ds1.Tables[0];
                    /*
                     ����/���/�ƻ�����/�ƻ���ʼʱ��/�ƻ�����ʱ��/������Ԥ�������죩/������/������/��ע
                     */
                    for (int i = 2; i < dt1.Rows.Count; i++)
                    {
                        if (String.IsNullOrEmpty(dt1.Rows[i][1].ToString()) == false &&
                            String.IsNullOrEmpty(dt1.Rows[i][2].ToString()) == false)
                        {
                            Tb_PlanDetailDD dd1 = new Tb_PlanDetailDD();
                            dd1.PlanKind = dt1.Rows[i][0].ToString();
                            dd1.PlanNum = dt1.Rows[i][1].ToString();
                            dd1.PlanTitel = dt1.Rows[i][2].ToString();
                            dd1.BegTime = DateTime.Parse(dt1.Rows[i][3].ToString());
                            dd1.EndTime = DateTime.Parse(dt1.Rows[i][4].ToString());
                            dd1.Workload = double.Parse(dt1.Rows[i][5].ToString());

                            //����������
                            String zren1 = dt1.Rows[i][6].ToString();
                            String zrenid = KORWeb.BUL.JUserBU.GetUserIDByUserName(zren1);
                            dd1.ExecuteManID = zrenid;
                            dd1.ExecuteManName = zren1;
                                
                            dd1.PayMemo = dt1.Rows[i][7].ToString();
                            dd1.Remark = dt1.Rows[i][8].ToString();

                            dd1.ParentNum = dd1.PlanNum.Substring(0, 3);  //ȡǰ3λ

                            list1.Add(dd1);
                        }
                    }
                }
            }
            catch (Exception err)
            {
                list1.Clear();
            }
            return list1;
        }


        /// <summary>
        /// �õ��ܼƻ�����Ŀ��ϸ
        /// </summary>
        /// <param name="f1"></param>
        /// <param name="saveFileName"></param>
        /// <returns></returns>
        public List<Tb_PlanDetailDD> GetWeekPlanDetailListByExcel(System.Web.UI.WebControls.FileUpload f1,
            ref String saveFileName)
        {
            List<Tb_PlanDetailDD> list1 = new List<Tb_PlanDetailDD>();
            try
            {
                if (f1.HasFile)
                {
                    System.Web.HttpServerUtility server = System.Web.HttpContext.Current.Server;
                    saveFileName = "/Attachment/Plan/" + WebFrame.Util.JString.GetUnique32ID()
                        + System.IO.Path.GetExtension(f1.FileName);

                    String fname = server.MapPath(saveFileName);
                    UExcel u1 = new UExcel(XlsFormat.Xls2003);
                    f1.SaveAs(fname);
                    DataSet ds1 = u1.XlsToDataSet(fname);
                    DataTable dt1 = ds1.Tables[0];
                    /*
                     ����/���/�ƻ�����/�ƻ���ʼʱ��/�ƻ�����ʱ��/������Ԥ�������죩/������/������/��ע
                     */
                    for (int i = 2; i < dt1.Rows.Count; i++)
                    {
                        if (String.IsNullOrEmpty(dt1.Rows[i][1].ToString()) == false &&
                            String.IsNullOrEmpty(dt1.Rows[i][2].ToString()) == false)
                        {
                            Tb_PlanDetailDD dd1 = new Tb_PlanDetailDD();
                            dd1.PlanKind = dt1.Rows[i][0].ToString();
                            dd1.PlanNum = dt1.Rows[i][1].ToString();
                            dd1.PlanTitel = dt1.Rows[i][2].ToString();
                            dd1.BegTime = DateTime.Parse(dt1.Rows[i][3].ToString());
                            dd1.EndTime = DateTime.Parse(dt1.Rows[i][4].ToString());
                            dd1.Workload = double.Parse(dt1.Rows[i][5].ToString());

                            //����������
                            String zren1 = dt1.Rows[i][6].ToString();
                            String zrenid = KORWeb.BUL.JUserBU.GetUserIDByUserName(zren1);
                            dd1.ExecuteManID = zrenid;
                            dd1.ExecuteManName = zren1;

                            dd1.PayMemo = dt1.Rows[i][7].ToString();
                            dd1.Remark = dt1.Rows[i][8].ToString();

                            dd1.ParentNum = dd1.PlanNum.Substring(0, 3);        //ȡǰ3λ
                            dd1.MaonthPlanNum =dd1.PlanNum.Substring(0,5);      //ȡǰ5λ

                            list1.Add(dd1);
                        }
                    }
                }
            }
            catch (Exception err)
            {
                list1.Clear();
            }
            return list1;
        }
        
        #endregion

        #region ��̬����
        
        #endregion

        #region ˽�з���
        #endregion
    }
}
