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
public partial class ModifyMyInfo : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "休渔期网站设计";
        if (!IsPostBack)
        {
            SqlHelper data = new SqlHelper();
            string id = Session["UserId"].ToString();
            SqlDataReader dr = data.GetDataReader("select * from Users where id=" + id);
            dr.Read();
            txtname.Text = dr["UserName"].ToString();
            XingMing.Text = dr["XingMing"].ToString();
            Age.Text = dr["Age"].ToString();
            txtds.Text = dr["Ds"].ToString();
            txtemal.Text = dr["emal"].ToString();
            ZhiYe.Text = dr["ZhiYe"].ToString();
         
            Tel.Text = dr["Tel"].ToString();

            DropDownList1.Items.FindByValue(dr["Sex"].ToString()).Selected = true;//选项Text  
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = Session["UserId"].ToString();
        data.RunSql("update  Users set UserName='" + txtname.Text + "',XingMing='" + XingMing.Text + "',Age='" + Age.Text + "',Ds='" + txtds.Text + "',emal='" + txtemal.Text + "',ZhiYe='" + ZhiYe.Text + "',Tel='" + Tel.Text + "',Sex='"+DropDownList1.SelectedValue+"' where id=" + id);
        Alert.AlertAndRedirect("修改成功", "UserHome.aspx");

    }
   
}
