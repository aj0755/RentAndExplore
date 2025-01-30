using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admindashboard : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand countuser= new SqlCommand("SELECT COUNT(*) FROM RAE_User", con);
            int userCount = (int)countuser.ExecuteScalar(); 
            lblTotalUsers.Text = userCount.ToString();

            SqlCommand countcat= new SqlCommand("SELECT COUNT(*) FROM RAE_Category", con);
            int catCount = (int)countcat.ExecuteScalar();
            lblTotalCategories.Text = catCount.ToString();

            SqlCommand countVehicle = new SqlCommand("SELECT COUNT(*) FROM RAE_Vehicle", con);
            int vehicleCount = (int)countVehicle.ExecuteScalar();
            lblTotalProducts.Text = vehicleCount.ToString();

            SqlCommand countBook = new SqlCommand("SELECT COUNT(*) FROM RAE_Booking", con);
            int BookCount = (int)countBook.ExecuteScalar();
            lblTotalOrders.Text = BookCount.ToString();
            con.Close();
        }
        catch (Exception ex)
        {
            lblErrorMsg.Text = ex.Message;
        }
    }
}