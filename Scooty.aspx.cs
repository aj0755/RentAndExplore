using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Touring : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadProducts();
        }
    }
    protected void LoadProducts()
    {
        string query = "SELECT * FROM RAE_Vehicle WHERE Category = 'Scooty'";
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        da.Fill(dt);

        RepeaterProducts.DataSource = dt;
        RepeaterProducts.DataBind();
    }
    protected void RepeaterProducts_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "StoreVehicle")
        {
            string vehicleName = e.CommandArgument.ToString();
            Session["SelectedVehicle"] = vehicleName;
            Response.Redirect("booking.aspx");
        }
    }
}