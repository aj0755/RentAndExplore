using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_manageVehicle : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            string vehicleid = txtID.Text.Trim();
            string name = txtName.Text.Trim();
            string brand = txtBrand.Text.Trim();
            string price = txtPrice.Text.Trim();
            string year = txtYear.Text.Trim();
            string fueltype = txtFuelType.Text.Trim();
            string capacity = txtCapacity.Text.Trim();
            string transmission = txtTransmission.Text.Trim();
            string mileage = txtMileage.Text.Trim();
            string status = txtStatus.Text.Trim();
            string category = ddlCategory.SelectedValue;

            string imagePath = "";

            if (fileUpload.HasFile)
            {
                string uploadsFolder = Server.MapPath("~/Uploads/");
                //if (!Directory.Exists(uploadsFolder))
                //{
                //    Directory.CreateDirectory(uploadsFolder);
                //}
                string fileName = Path.GetFileName(fileUpload.PostedFile.FileName);
                string savePath = uploadsFolder + fileName;
                fileUpload.SaveAs(savePath);
                imagePath = "~/Uploads/" + fileName;
            }

            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO RAE_Vehicle (Vehicle_ID, Name,Images, Brand,Category ,Year, FuelType, Capacity, Transmission, Mileage,RatePerDay,Status) VALUES ('" + vehicleid + "', '" + name + "','" + imagePath + "','" + brand + "', '" + category + "', '" + year + "', '" + fueltype + "', '" + capacity + "', '" + transmission + "', '" + mileage + "', '" + price + "', '" + status + "');", con);
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Room Inserted successfully!";
            con.Close();

            txtID.Text = "";
            txtName.Text = "";
            txtBrand.Text = "";
            txtPrice.Text = "";
            txtYear.Text = "";
            txtFuelType.Text = "";
            txtCapacity.Text = "";
            txtTransmission.Text = "";
            txtMileage.Text = "";
            txtStatus.Text = "";

            gvProducts.DataBind();
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;

            string vehicleid = gvProducts.DataKeys[row.RowIndex].Value.ToString();
            lblMessage.Text = vehicleid;

            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM RAE_Vehicle WHERE Vehicle_ID = '" + vehicleid + "'", con);
            int rowsAffected = cmd.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                lblMessage.Text = "Vehicle deleted successfully!";
            }
            else
            {
                lblMessage.Text = "Error: Category not found!";
            }
            gvProducts.DataBind();
            con.Close();
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
}