using System;
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
public partial class AdminManger_HuiFuLY : System.Web.UI.Page
{

    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            SqlHelper data = new SqlHelper();
            string id = Request.QueryString["id"].ToString();
            SqlDataReader dr = data.GetDataReader("select * from LiuYan where id=" + id);
            dr.Read();
            Label1.Text = dr["LiuYan"].ToString();
            Label2.Text = dr["Addtime"].ToString();
            Label3.Text = dr["Content"].ToString();
            Label4.Text = dr["AddUser"].ToString();
            TextBox1.Text = dr["Replay"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"].ToString();
        data.RunSql("update  LiuYan set Replay='" + TextBox1.Text + "' ,ReplayTime='"+DateTime.Now.ToShortDateString()+"' where id=" + id);
        Alert.AlertAndRedirect("回复成功", "LiuYanManger.aspx");

    }

}
