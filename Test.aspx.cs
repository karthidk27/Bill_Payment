using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=Employee;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("SELECT distinct(operator) from RechargePlan", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("--Select--", "0"));
            DropDownList2.Items.Insert(0, new ListItem("--Select--", "0"));

            SqlCommand cmd1 = new SqlCommand("SELECT distinct(dthoperator) from dth", con);
            SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            sda1.Fill(dt1);
            DropDownList3.DataSource = dt1;
            DropDownList3.DataBind();
            DropDownList3.DataTextField = "dthoperator";
            DropDownList3.Items.Insert(0, new ListItem("--Select--", "0"));
            DropDownList4.Items.Insert(0, new ListItem("--Select--", "0"));

            SqlCommand cmd2 = new SqlCommand("SELECT distinct(isp) from internet", con);
            SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            sda2.Fill(dt2);
            DropDownList5.DataSource = dt2;
            DropDownList5.DataBind();
            DropDownList5.DataTextField = "isp";
            DropDownList5.Items.Insert(0, new ListItem("--Select--", "0"));
            DropDownList6.Items.Insert(0, new ListItem("--Select--", "0"));

            SqlCommand cmd3 = new SqlCommand("SELECT * from EB", con);
            SqlDataAdapter sda3 = new SqlDataAdapter(cmd3);
            DataTable dt3 = new DataTable();
            sda3.Fill(dt3);
            DropDownList7.DataSource = dt3;
            DropDownList7.DataBind();
            DropDownList7.DataTextField = "provider";
            DropDownList7.Items.Insert(0, new ListItem("--Select--", "0"));


            MRecharge.Visible = true;
            DthRecharge.Visible = false;
            BroadbandPay.Visible = false;
            ElectricityBill.Visible = false;
            CreditCardBill.Visible = false;

            HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            HttpContext.Current.Response.Cache.SetNoServerCaching();
            HttpContext.Current.Response.Cache.SetNoStore();

        }
        HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
        HttpContext.Current.Response.Cache.SetNoServerCaching();
        HttpContext.Current.Response.Cache.SetNoStore();
        if (Session["username"] == null)
        {
            LinkButton6.Visible = false;
        }
    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("SELECT * FROM Login WHERE username = @user AND password = @pass", con);
        con.Open();
        cmd.Parameters.AddWithValue("@user", TextBox1.Text);
        cmd.Parameters.AddWithValue("@pass", Password.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Label24.Text = "Welcome " + TextBox1.Text;
            Session["username"] = TextBox1.Text;
            LinkButton6.Visible = true;
            TableHide1.Visible = false;
            TableHide2.Visible = false;

        }
        else
        {
            Label1.Text = "Invalid username/password";
        }

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        MRecharge.Visible = true;
        DthRecharge.Visible = false;
        BroadbandPay.Visible = false;
        ElectricityBill.Visible = false;
        CreditCardBill.Visible = false;

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        MRecharge.Visible = false;
        DthRecharge.Visible = true;
        BroadbandPay.Visible = false;
        ElectricityBill.Visible = false;
        CreditCardBill.Visible = false;

    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        MRecharge.Visible = false;
        DthRecharge.Visible = false;
        BroadbandPay.Visible = true;
        ElectricityBill.Visible = false;
        CreditCardBill.Visible = false;
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        MRecharge.Visible = false;
        DthRecharge.Visible = false;
        BroadbandPay.Visible = false;
        ElectricityBill.Visible = true;
        CreditCardBill.Visible = false;
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        MRecharge.Visible = false;
        DthRecharge.Visible = false;
        BroadbandPay.Visible = false;
        ElectricityBill.Visible = false;
        CreditCardBill.Visible = true;
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into Login (username,password) values (@username,@password)", con);
        con.Open();
        cmd.Parameters.AddWithValue("@username", TextBox10.Text);
        cmd.Parameters.AddWithValue("@password", TextBox12.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        Label23.Text = "Sucessful Registeration";

    }

    protected void Button1_Click(object sender, EventArgs e)
    {


        if (Session["username"] != null)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "Done", "alert('Payment of" + Session["Amount"] + " is Successful');", true);
        }
        else
        {
            Response.Write("<script>alert('Login to Continue Further')</script>");
        }


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "Done", "alert('Payment of" + Session["Amount"] + " is Successful');", true);
        }
        else
        {
            Response.Write("<script>alert('Login to Continue Further')</script>");
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "Done", "alert('Payment of" + Session["Amount"] + " is Successful');", true);
        }
        else
        {
            Response.Write("<script>alert('Login to Continue Further')</script>");
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "Done", "alert('Payment of Rs 1200 paid is Successful');", true);
        }
        else
        {
            Response.Write("<script>alert('Login to Continue Further')</script>");
        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "Done", "alert('Payment due of Rs 1200 paid Successful');", true);
        }
        else
        {
            Response.Write("<script>alert('Login to Continue Further')</script>");
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {


        SqlCommand cmd = new SqlCommand("select dataplan from RechargePlan where operator=@selectoperator", con);
        con.Open();
        cmd.Parameters.AddWithValue("@selectoperator", DropDownList1.SelectedValue);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DropDownList2.DataSource = dt;
        DropDownList2.DataTextField = "dataplan";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("--Select--", "0"));

    }



    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select dthplan from dth where dthoperator=@selectoperator", con);
        con.Open();
        cmd.Parameters.AddWithValue("@selectoperator", DropDownList3.SelectedValue);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DropDownList4.DataSource = dt;
        DropDownList4.DataTextField = "dthplan";
        DropDownList4.DataBind();
        DropDownList4.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select internetplan from internet where isp=@selectoperator", con);
        con.Open();
        cmd.Parameters.AddWithValue("@selectoperator", DropDownList5.SelectedValue);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DropDownList6.DataSource = dt;
        DropDownList6.DataTextField = "internetplan";
        DropDownList6.DataBind();
        DropDownList6.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select amount from internet where internetplan=@selectinternetplan", con);
        con.Open();
        cmd.Parameters.AddWithValue("@selectinternetplan", DropDownList6.SelectedValue);
        SqlDataReader sdr = cmd.ExecuteReader();
        sdr.Read();
        Label27.Text = "Amount: " + sdr.GetValue(0).ToString();
        Session["Amount"] = Label27.Text;
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select amount from RechargePlan where dataplan=@selectdataplan", con);
        con.Open();
        cmd.Parameters.AddWithValue("@selectdataplan", DropDownList2.SelectedValue);
        SqlDataReader sdr = cmd.ExecuteReader();
        sdr.Read();
        Label25.Text = "Amount: " + sdr.GetValue(0).ToString();
        Session["Amount"] = Label25.Text;

    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select amount from dth where dthplan=@selectdthplan", con);
        con.Open();
        cmd.Parameters.AddWithValue("@selectdthplan", DropDownList4.SelectedValue);
        SqlDataReader sdr = cmd.ExecuteReader();
        sdr.Read();
        Label26.Text = "Amount: " + sdr.GetValue(0).ToString();
        Session["Amount"] = Label26.Text;
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Session.RemoveAll();
        System.Web.Security.FormsAuthentication.SignOut();
        Response.Redirect("~/Test.aspx");
    }
}