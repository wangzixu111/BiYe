﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class MMPwd : System.Web.UI.Page
{
    Alert alert = new Alert();
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "休渔期网站设计";
        if (!IsPostBack)
        {
            if (Session["UserId"] == null)
            {
                Alert.AlertAndRedirect("对不起您还没有登录", "Default.aspx");
            }
            else
            { }


        }
    }/// <summary>
    /// 修改密码
    /// </summary>
    private void UPpwd()
    {
        SqlHelper mydata = new SqlHelper();
        string Username = Session["UserId"].ToString();
        try
        {
            string sql = "update [Users]  set [pwd] ='" + txtpwd2.Text.ToString() + "' where [id]='" + Username + "' ";
            mydata.RunSql(sql);



            LabelWarningMessage.Text = "修改成功！";


        }
        catch
        {

            LabelWarningMessage.Text = "修改失败！";
        }
    }
    /// <summary>
    /// 检验原来的密码
    /// </summary>
    private void chkpwd()
    {
        SqlDataReader dr;
        dr = data.GetDataReader("select * from  Users  where id='" + Session["UserId"].ToString() + "' and pwd='" + txtpwd1.Text + "'");
        if (dr.Read())
        {
            UPpwd();
        }
        else
        {
            LabelWarningMessage.Text = "原密码不正确！";
        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        chkpwd();
    }
}
