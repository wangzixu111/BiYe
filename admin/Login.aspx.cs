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
public partial class Login : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();

    Alert js = new Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "休渔期网站设计 ";
        if (!IsPostBack)
        {
            lblyanzheng.Text = CreateRandomCode(4);

        }

    }
    protected string CreateRandomCode(int codeCount)
    {
        string allChar = "0,1,2,3,4,5,6,7,8,9";
        string[] allCharArray = allChar.Split(',');
        string randomCode = "";
        int temp = -1;
        Random rand = new Random();
        for (int i = 0; i < codeCount; i++)
        {
            if (temp != -1)
            {
                rand = new Random(i * temp * ((int)DateTime.Now.Ticks));
            }
            int t = rand.Next(10);
            if (temp == t)
            {
                return CreateRandomCode(codeCount);
            }
            temp = t;
            randomCode += allCharArray[t];
        }
        return randomCode;
    }
    protected void Submit1_ServerClick(object sender, EventArgs e)
    {
        if (lblyanzheng.Text != txtyan.Text)
        {
            js.Alertjs("验证码错误");
            return;
        }
        else
        {

            SqlDataReader sdr1;
            sdr1 = data.GetDataReader("select * from Admin where name='" + this.txtUserID.Text.Trim() + "' and pwd='" + this.txtPwd.Text.Trim() + "'");

            if (sdr1.Read())
            {
                Session["admin"] = sdr1["name"].ToString();
                Alert.AlertAndRedirect("恭喜您登录成功！", "index.htm");
            }
            else
            {
                Alert.AlertAndRedirect("登录失败！", "login.aspx");
            }
        }

    }
}
