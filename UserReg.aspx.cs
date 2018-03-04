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
public partial class UserReg : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "休渔期网站设计";
        if (!IsPostBack)
        {
          
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataReader dr = data.GetDataReader("select * from Users where UserName='" + txtname.Text + "' ");
        if (dr.Read())
        {
            Label2.Text = "账号已经存在";
            return;
        }
        SqlDataReader dr1 = data.GetDataReader("select * from Users where emal='" + txtemal.Text + "' ");
        if (dr1.Read())
        {
            Label2.Text = "注册邮箱已经存在";
            return;
        }
        else
        {

            data.RunSql("insert into Users(emal,UserName,Sex,Age,Ds,pwd,ZhiYe,XingMing,Tel)values('" + txtemal.Text + "','" + txtname.Text + "','" + DropDownList1.SelectedItem.Text + "','" + Age.Text + "','" + txtds.Text + "','" + TextBox1.Text + "','" + ZhiYe.Text + "','" + XingMing.Text + "','" + Tel.Text + "')");

            Alert.AlertAndRedirect("注册成功！", "Default.aspx");
        }
    }
   
}
