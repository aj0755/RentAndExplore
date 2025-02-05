using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class booking : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                if (Session["SelectedVehicle"] != null)
                {
                    string selectedVehicle = Session["SelectedVehicle"].ToString();
                    LoadVehicleDetails(selectedVehicle);
                }
                else
                {
                    lblMessage.Text = "No vehicle selected.";

                }
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
    private void LoadVehicleDetails(string vehicleName)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM RAE_Vehicle WHERE Name = '" + vehicleName + "'", con);

            cmd.ExecuteNonQuery();
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.HasRows)
            {
                while (sdr.Read())
                {
                    lblVehicleTitle.Text = sdr["Name"].ToString();
                    lblMake.Text = sdr["Brand"].ToString();
                    lblModel.Text = sdr["Name"].ToString();
                    lblFuelType.Text = sdr["FuelType"].ToString();
                    lblSeating.Text = sdr["Capacity"].ToString();
                    lblTransmission.Text = sdr["Transmission"].ToString();
                    lblMileage.Text = sdr["Mileage"].ToString();
                    //lblRoomDescription.Text = sdr["RoomDescription"].ToString(); 
                    lblPrice.Text = sdr["RateperDay"].ToString() + "₹/Day";

                    string imagePath = sdr["Images"].ToString();
                    Vehicleimg.ImageUrl = imagePath;
                }
            }
            else
            {
                lblMessage.Text = "Vehicle details not found.";
            }
            con.Close();
        }
        catch (Exception ex)
        {
            lblMessage.Text = "Error: " + ex.Message;
        }
    }
    protected void btnBookVehicle_Click(object sender, EventArgs e)
    {
        Response.Redirect("paymentpage.aspx");
    }
}