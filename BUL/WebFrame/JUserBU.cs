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
using System.Configuration;
using System.Web;

namespace KORWeb.BUL
{
    /// ˵����ҵ����
    /// ���룺jsj
    /// ʱ�䣺2013-8-2 16:20:21
    public partial class JUserBU 
    {
        public String ErrorInfo { get; set; }

        #region ʵ������

        /// <summary>
        /// ����һ������
        /// </summary>
        /// <param name="data1">Dictionary����</param>
        public void NewData(Dictionary<String, object> data1)
        {
            JUserDA da = new JUserDA();
            da.NewData(data1);
        }

        /// <summary>
        /// �����������޸�һ��ʵ������
        /// </summary>
        /// <param name="condition">�޸����ݵ�����</param>
        /// <param name="data1">�µ�����</param>
        public void EditData(List<SearchField> condition, Dictionary<String, object> data1)
        {
            JUserDA da = new JUserDA();
            da.EditData(condition, data1);
        }

        //�õ��б�����
        public DataTable GetListData(List<SearchField> condition,
            int PageSize, int CurPage, String orderBy, params String[] Fields)
        {
            JUserDA da = new JUserDA();
            return da.GetListData(condition, PageSize, CurPage, orderBy, Fields);
        }

        /// <summary>
        /// �õ����������ĵ�һ������
        /// </summary>
        /// <param name="condition">��ѯ����</param>
        /// <param name="Fields">�����ֶ�</param>
        /// <returns>������������</returns>
        public DataRow GetFirstDataRow(List<SearchField> condition, params String[] Fields)
        {
            JUserDA da = new JUserDA();
            return da.GetFirstDataRow(condition, Fields);
        }

        /// <summary>
        /// �ж��Ƿ��з�������������
        /// </summary>
        ///<param name="condition">��ѯ����</param>
        /// <returns></returns>
        public bool HasData(List<SearchField> condition)
        {
            JUserDA da = new JUserDA();
            return da.HasData(condition);
        }

        /// <summary>
        /// �����û��ĵ�½����
        /// </summary>
        /// <param name="UserID"></param>
        public bool ResetPassWord(String UserID)
        {
            bool succ = false;
            try
            {
                JUserDA da1 = new JUserDA();
                if (String.IsNullOrEmpty(UserID) == false)
                {
                    List<SearchField> condition = new List<SearchField>();
                    condition.Add(new SearchField("UserID", UserID));
                    Dictionary<String, object> data1 = new Dictionary<string, object>();
                    data1["[password]"] = "123456";
                    da1.EditData(condition, data1);
                    succ = true;
                }
            }catch(Exception err){;}
            return succ;
        }

        /// <summary>
        /// ����˵������������
        /// </summary>
        /// <param name="oldpass">������</param>
        /// <param name="newPass">������</param>
        /// <returns></returns>
        public String ChangeOldPassWord(String oldpass, String newPass)
        {
            String error = String.Empty;
            if (String.IsNullOrEmpty(oldpass) == false
               && String.IsNullOrEmpty(newPass) == false)
            {
                JUserDA da1 = new JUserDA();
                List<SearchField> condition = new List<SearchField>();
                String UserID = FrameLib.UserID;
                condition.Add(new SearchField("UserID", UserID));
                DataRow dr1 = da1.GetFirstDataRow(condition, "*");
                if (dr1 != null)
                {
                    String pass0 = dr1["password"].ToString().Trim();
                    String pass1 = oldpass;
                    String pass2 = JString.MD5(pass1);
                    if (pass1 == pass0 || pass2 == pass0)
                    {
                        String pass3 = JString.MD5(newPass);
                        Dictionary<string, object> data1 = new Dictionary<string, object>();
                        data1["[password]"] = pass3;
                        da1.EditData(condition, data1);
                    }
                    else
                    {
                        error = "��ʾ�����������벻��ȷ�����������룡";
                    }
                }
            }
            return error;
        }

        /// <summary>
        /// ����˵������������
        /// </summary>
        /// <param name="oldpass">������</param>
        /// <param name="newPass">������</param>
        /// <returns></returns>
        public String ChangeOldPassWord(String UserID,
            String oldpass, String newPass)
        {
            String error = String.Empty;
            if (String.IsNullOrEmpty(oldpass) == false
               && String.IsNullOrEmpty(newPass) == false)
            {
                JUserDA da1 = new JUserDA();
                List<SearchField> condition = new List<SearchField>();

                condition.Add(new SearchField("UserID", UserID));
                DataRow dr1 = da1.GetFirstDataRow(condition, "*");
                if (dr1 != null)
                {
                    String pass0 = dr1["password"].ToString().Trim();
                    String pass1 = oldpass;
                    String pass2 = JString.MD5(pass1);
                    if (pass1 == pass0 || pass2 == pass0)
                    {
                        String pass3 = JString.MD5(newPass);
                        Dictionary<string, object> data1 = new Dictionary<string, object>();
                        data1["password"] = pass3;
                        da1.EditData(condition, data1);
                    }
                    else
                    {
                        error = "��ʾ�����������벻��ȷ�����������룡";
                    }
                }
            }
            return error;
        }

        /// <summary>
        /// ɾ���û����ݣ�ͬʱɾ�����������
        /// ��ʾ���˹��ܣ����ܻ���ݲ�ͬ����Ŀ��д
        /// </summary>
        /// <param name="AreaCode"></param>
        public bool DeleteData(String UserID)
        {
            bool succ = false;
            if (String.IsNullOrEmpty(UserID) == false)
            {
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("UserID", UserID,SearchOperator.Collection));

                JConnect conn1 = JConnect.GetConnect();
                conn1.BeginTrans();
                try
                {
                    //JRoleUsersDA da1 = new JRoleUsersDA(conn1);
                    //da1.DeleteData(condition);

                    //JOrgUsersDA da2 = new JOrgUsersDA(conn1);
                    //da2.DeleteData(condition);

                    JUserDA da3 = new JUserDA();
                    da3.DeleteData(condition);

                    //ɾ�����������ҵ���
                    conn1.CommitTrans();
                    succ = true;

                }
                catch (Exception err)
                {
                    JTool.WriteErrorLog(err.Message);
                    conn1.RollBackTrans();
                }
            }
            return succ;
        }

        /// <summary>
        /// �����û��������õ������б�
        /// </summary>
        /// <param name="UserName"></param>
        /// <returns></returns>
        public DataTable GetUserName(String UserName,int pageSize)
        {
            DataTable dt1 = null;
            if (String.IsNullOrEmpty(UserName) == false)
            {
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("UserName", UserName, SearchOperator.Contains));
                JUserDA da1 = new JUserDA();
                dt1=da1.GetListData(condition, pageSize, 1, "UserName", "UserName");
            }
            return dt1;
        }

        public String GetAuGroup(String userid)
        {
            if (String.IsNullOrEmpty(userid) == false)
            {
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("UserID", userid));
                JUserDA da1 = new JUserDA();
                DataRow drresult = da1.GetFirstDataRow(condition, "AuthorityGroup");// GetListData(condition, -1, 1, "AuthorityGroup");

                if (drresult != null)
                {
                    if (!String.IsNullOrEmpty(drresult["AuthorityGroup"].ToString()))
                    {
                        return drresult["AuthorityGroup"].ToString();
                    }
                }
            }

            return "";
        }

        public String GetPwd(String userid)
        {
            if (String.IsNullOrEmpty(userid) == false)
            {
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("UserID", userid));
                JUserDA da1 = new JUserDA();
                DataRow drresult = da1.GetFirstDataRow(condition, "PassWord");// GetListData(condition, -1, 1, "AuthorityGroup");

                if (drresult != null)
                {
                    if (!String.IsNullOrEmpty(drresult["PassWord"].ToString()))
                    {
                        return drresult["PassWord"].ToString();
                    }
                }
            }

            return "";
        }
        /// <summary>
        /// �����û����ݵ��޸�
        /// </summary>
        /// <returns></returns>
        public int SaveData(String oldUserID,String num, String UserID,
            String UserName,String Status,String AuthorityID,String OrgID)
        {
            int succ = 0;
            JConnect conn = JConnect.GetConnect();
            conn.BeginTrans();
            try
            {
                JUserDA da1 = new JUserDA(conn);
                JOrgUsersDA da2 = new JOrgUsersDA(conn);

                Dictionary<String, object> data1 = new Dictionary<string, object>();
                data1["num"] = num;
                data1["userid"] = UserID;
                data1["username"] = UserName;
                data1["status"] = Status;
                data1["AuthorityID"] = AuthorityID;
                data1["DepartID"] = FrameLib.DepartID;
                data1["AuthorityGroup"] = FrameLib.AuthorityGroup;
                
                if (String.IsNullOrEmpty(oldUserID) == false)
                {
                    List<SearchField> condition = new List<SearchField>();
                    condition.Add(new SearchField("UserID", UserID));
                    data1.Remove("userid");
                    da1.EditData(condition, data1);
                }
                else
                {
                    data1["[Password]"] = "123456";                           //����Ĭ�ϵĿ��������
                    data1["LastLogin"] = DateTime.Now;           //����Ĭ�ϵĵ�½ʱ��
                    data1["LoginCount"] = 0;                                //����Ĭ�ϵĵ�½����
                    da1.NewData(data1);
                }

                //������֯�û���
                List<SearchField> condition2 = new List<SearchField>();
                condition2.Add(new SearchField("UserID", UserID));
                if (string.IsNullOrEmpty(OrgID) == false)
                {
                    if (da2.HasData(condition2))
                    {
                        data1.Clear();
                        data1["orgid"] = OrgID;
                        da2.EditData(condition2, data1);
                    }
                    else
                    {
                        data1.Clear();
                        data1["orgid"] = OrgID;
                        data1["userid"] = UserID;
                        da2.NewData(data1);
                    }
                }
                else
                {
                    da2.DeleteData(condition2);
                }
                conn.CommitTrans();
                succ = 1;
            }
            catch (Exception err)
            {
                conn.RollBackTrans();
            }
            return succ;
        }

        /// <summary>
        /// �����û����ݵ��޸�
        /// </summary>
        /// <returns></returns>
        public int SaveData(String oldUserID, String num, String UserID,
            String UserName,String trueName,String telephone, String Status, String AuthorityID, String OrgID,String cardID)
        {
            int succ = 0;
            JConnect conn = JConnect.GetConnect();
            conn.BeginTrans();
            try
            {
                JUserDA da1 = new JUserDA(conn);
                JOrgUsersDA da2 = new JOrgUsersDA(conn);

                Dictionary<String, object> data1 = new Dictionary<string, object>();
                data1["num"] = num;
                data1["userid"] = UserID;
                data1["username"] = UserName;
                data1["TrueName"] = trueName;
                data1["status"] = Status;
                data1["AuthorityID"] = AuthorityID;
                data1["DepartID"] = FrameLib.DepartID;
                data1["AuthorityGroup"] = FrameLib.AuthorityGroup;
                if (!string.IsNullOrEmpty(cardID))
                {
                    data1["WbCardID"] = cardID;
                }
                if (!string.IsNullOrEmpty(telephone))
                {
                    data1["Telephone"] = telephone;
                }

                if (String.IsNullOrEmpty(oldUserID) == false)
                {
                    List<SearchField> condition = new List<SearchField>();
                    condition.Add(new SearchField("UserID", UserID));
                    data1.Remove("userid");
                    da1.EditData(condition, data1);
                }
                else
                {
                    data1["[Password]"] = "123456";                           //����Ĭ�ϵĿ��������
                    data1["LastLogin"] = DateTime.Now;           //����Ĭ�ϵĵ�½ʱ��
                    data1["LoginCount"] = 0;                                //����Ĭ�ϵĵ�½����
                    da1.NewData(data1);
                }

                //������֯�û���
                List<SearchField> condition2 = new List<SearchField>();
                condition2.Add(new SearchField("UserID", UserID));
                if (string.IsNullOrEmpty(OrgID) == false)
                {
                    if (da2.HasData(condition2))
                    {
                        data1.Clear();
                        data1["orgid"] = OrgID;
                        da2.EditData(condition2, data1);
                    }
                    else
                    {
                        data1.Clear();
                        data1["orgid"] = OrgID;
                        data1["userid"] = UserID;
                        da2.NewData(data1);
                    }
                }
                else
                {
                    da2.DeleteData(condition2);
                }
                conn.CommitTrans();
                succ = 1;
            }
            catch (Exception err)
            {
                conn.RollBackTrans();
            }
            return succ;
        }

        /// <summary>
        /// �����û���ID�õ��û�ʵ��
        /// </summary>
        /// <param name="UserID"></param>
        /// <returns></returns>
        public JUserDD GetUserInfoByUserID(String UserID)
        {
            JUserDD data1 = null;
            if (String.IsNullOrEmpty(UserID) == false)
            {
                JUserDA da1 = new JUserDA();
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("UserID", UserID));
                data1 = da1.GetFirstDataEntity(condition, "*");
            }
            return data1;
        }

        /// <summary>
        /// �õ�ѡ���û���EasyUiJson����
        /// </summary>
        /// <returns></returns>
        public String GetSelectUserEasyUiJsonData(List<String> OldUserID)
        {
            JUserDA da1 = new JUserDA();
            DataTable dt1 = da1.GetSelectUserEasyUiJsonData(OldUserID);
            String str1=UTools.GetEasyUiTreeData(dt1);
            return str1;
        }

        /// <summary>
        /// �õ��û�����Ȩ�û���Ϣ
        /// </summary>
        /// <param name="UserID">�û�ID</param>
        /// <param name="sqkind">��Ȩ���� 1--�������� 2--������־ 3--�����ƻ�  4--��������
        /// </param>
        /// <returns></returns>
        public String GetShouquanUserList(String UserID,int sqkind)
        {
            StringBuilder str1 = new StringBuilder();
            bool first = true;

            JUserDA da1 = new JUserDA();
            List<SearchField> condition = new List<SearchField>();
            String s2 = String.Format("instr(qx{0}, '{1}') > 0",sqkind,UserID);
            condition.Add(new SearchField(s2, "", SearchOperator.UserDefine));
            DataTable dt1 = da1.GetListData(condition, -1, -1, "num", "UserID,qx" + sqkind+" as sq");
            foreach (DataRow dr1 in dt1.Rows)
            {
                String[] sq = dr1[1].ToString().Split(',');
                if (sq.Contains(UserID))
                {
                    if (first)
                    {
                        str1.Append(dr1[0].ToString());
                        first = false;
                    }
                    else
                    {
                        str1.Append(",").Append(dr1[0].ToString());
                    }
                }
            }

            String s1 = str1.ToString();
            if (String.IsNullOrEmpty(s1)) s1 = "-1";
            return s1;
        }
        #endregion

        #region ��̬����
        /// <summary>
        /// �����û��������õ��û���ID
        /// </summary>
        /// <param name="UserName"></param>
        /// <returns></returns>
        public static String GetUserIDByUserName(String UserName)
        {
            String userid = String.Empty;
            if (String.IsNullOrEmpty(UserName) == false)
            {
                List<SearchField> condition = new List<SearchField>();
                condition.Add(new SearchField("UserName", UserName));
                Dictionary<String, object> dic1 = (new JUserDA()).GetFirstDictionary(condition, "UserID");
                if (dic1 != null && dic1.Count > 0)
                {
                    userid = dic1["UserID"].ToString();
                }
            }
            return userid;
        }
        #endregion

        #region ˽�з���
        #endregion

        #region �û���½�ķ��� 

        /// <summary>
        /// ƽ̨�û��ĵ�½����
        /// </summary>
        /// <param name="userName">�û���</param>
        /// <param name="PassWord">��¼����</param>
        /// <param name="Userid">��¼�ɹ��󣬷��ص��û�ID</param>
        /// <returns>
        /// 0--��ʾ�û���������
        /// 1--��ʾ���벻��ȷ
        /// 2--��ʾ�˺���ͣ��
        /// 3--��ʾ��½�ɹ�
        /// </returns>
        public int Login(String userName, String PassWord,ref String Userid,ref String departNum)
        {
            int succ = 0;
            Userid = userName;
            departNum=String.Empty;

            if (String.IsNullOrEmpty(userName) == false
                && String.IsNullOrEmpty(PassWord) == false)
            {
                JUserDA da1 = new JUserDA();
                List<SearchField> condition = new List<SearchField>();
                SearchField search1 = new SearchField("UserID", userName);
                SearchField search2 = new SearchField("UserName", userName);

                condition.Add(search1 | search2);
                DataRow data1 = da1.GetFirstDataRow(condition,"*");  

                if (data1!=null)
                {
                    String password1 = data1["Password"].ToString();
                    if (PassWord == password1 ||
                        JString.MD5(PassWord) == password1)
                    {
                        if (data1["status"].ToString() == "1")
                        {
                            //�ж��û����ڵ�λ�����
                            succ = 3;

                            //�޸��û���¼ʱ��͵�¼����
                            condition.Clear();
                            condition.Add(search1 | search2);
                            Dictionary<String, object> dic0 = new Dictionary<string, object>();
                            dic0["LastLogin"] = DateTime.Now;
                            if (data1["LoginCount"].ToString() != String.Empty)
                            {
                                dic0["LoginCount"] = "$$LoginCount+1";
                            }
                            else
                            {
                                dic0["LoginCount"] = 1;
                            }
                            da1.EditData(condition, dic0);

                            //�����û���Ȩ�޽�ɫ��������Ҫ�޸�)
                            FrameLib.AuthorityID = data1["AuthorityID"].ToString();         //�û���Ȩ��ID
                            FrameLib.UserName = data1["UserName"].ToString();               //�û���UserName
                            FrameLib.AuthorityGroup = data1["AuthorityGroup"].ToString();   //��ʾ�û������
                            
                            FrameLib.DepartID = data1["DepartID"].ToString();               //��ʾ�û������Ĳ���ID

                            //���ݲ��ŵ�ID���ò��ŵ�Num������Ȩ���ã�
                            condition.Clear();
                            JOrgDA org1 = new JOrgDA();
                            condition.Add(new SearchField("OrgID",data1["DepartID"].ToString()));
                            DataRow r1=org1.GetFirstDataRow(condition,"num");
                            if(r1!=null)
                            {
                                departNum = r1["num"].ToString();
                            }

                            Userid = data1["userid"].ToString();

                            //�����û���¼��־
                            JUserLoginLogDA da2 = new JUserLoginLogDA();
                            Dictionary<String, object> logdata = new Dictionary<string, object>();
                            logdata["ID"] = WebFrame.Util.JString.GetUnique32ID();
                            logdata["UserID"] = data1["UserID"].ToString();
                            logdata["UserName"] = data1["UserName"].ToString();
                            logdata["CreateTime"] = DateTime.Now;
                            logdata["AuthorityGroup"] = data1["AuthorityGroup"];
                            string ip = GetIPAddress();
                            logdata["Remark"] = ip;
                            da2.NewData(logdata);
                        }
                        else
                        {
                            succ = 2;
                        }
                    }
                    else
                    {
                        succ = 1;
                    }
                }
            }
            return succ;
        }

        /// <summary>
        /// ����û����Ƿ���ȷ����������ȷ���û�ID�б�
        /// </summary>
        /// <param name="userNameList"></param>
        /// <returns></returns>
        public bool CheckUserList(String userNameList,ref String rightUser)
        {
            bool succ = true; ;
            StringBuilder str1 = new StringBuilder();
            bool first = true;
            if (String.IsNullOrEmpty(userNameList) == false)
            {
                userNameList = userNameList.Replace("��", ",");
                String[] arr1 = userNameList.Split(',');
                List<SearchField> condition = new List<SearchField>();
                JUserDA da1 = new JUserDA();
                Dictionary<string, object> dic1 = null;
                foreach (String m in arr1)
                {
                    condition.Clear();
                    condition.Add(new SearchField("( UserID='" + m + "' or UserName='" + m + "') ", "", SearchOperator.UserDefine));
                    dic1 = da1.GetFirstDictionary(condition, "UserID");
                    if (dic1 != null && dic1.Count > 0)
                    {
                        if (first)
                        {
                            str1.Append(dic1["UserID"].ToString());
                            first = false;
                        }
                        else
                        {
                            str1.Append(",").Append(dic1["UserID"].ToString());
                        }
                    }
                    else
                    {
                        succ=false;
                        break;
                    }
                }
            }
            if (succ)
            {
                rightUser = str1.ToString();
            }
            return succ;
        }

        /// <summary>
        /// �����û���ID�õ��û�������
        /// </summary>
        /// <param name="userIDS"></param>
        public static String GetUserNamByIDS(String userIDS)
        {
            String result=String.Empty;
            if (String.IsNullOrEmpty(userIDS) == false)
            {
                JUserDA da1=new JUserDA();
                List<SearchField> condition=new List<SearchField>();
                condition.Add(new SearchField("UserID",userIDS,SearchOperator.Collection));
                DataTable dt1=da1.GetListData(condition,-1,-1,"num","UserName");
                bool first=true;
                StringBuilder str1=new StringBuilder();
                foreach(DataRow dr1 in dt1.Rows)
                {
                    if (first)
                    {
                        str1.Append(dr1[0].ToString());
                        first = false;
                    }
                    else
                    {
                        str1.Append(",").Append(dr1[0].ToString());
                    }
                }
                result = str1.ToString();
            }
            return result;
        }


        /// <summary>
        /// ��ȡ��¼ip
        /// </summary>
        /// <returns></returns>
        public static string GetIPAddress()
        {
            string userHostAddress = HttpContext.Current.Request.UserHostAddress;
            if (string.IsNullOrEmpty(userHostAddress))
            {
                userHostAddress = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
            }
            return userHostAddress;

        }
        #endregion

    }
}
