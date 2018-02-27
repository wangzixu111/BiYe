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
public partial class ShowLiuYan : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();

    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "休渔期网站设计";
        if (!IsPostBack)
        {
            BinderLiuYan();
        }
    }
 
    private void BinderLiuYan()
    {
        int id = Int16.Parse(Request.QueryString["id"].ToString());
        SqlDataReader dr;
        dr = data.GetDataReader("select * from  LiuYan where id=" + id);
        dr.Read();
        Label1.Text = dr["LiuYan"].ToString();
        Label2.Text = dr["Addtime"].ToString();
        Label3.Text = dr["Content"].ToString();
        Label4.Text = dr["AddUser"].ToString();
        Label5.Text = dr["Replay"].ToString();

       
        Label7.Text = dr["ReplayTime"].ToString();

    }
 
}
