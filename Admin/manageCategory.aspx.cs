using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_manageCategory : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand getMaxIdCmd = new SqlCommand("SELECT TOP 1 category_id FROM RAE_Category ORDER BY Category_ID DESC", con);
            object lastIdObj = getMaxIdCmd.ExecuteScalar();

            string newCategoryId = "C1";
            if (lastIdObj != null)
            {
                string lastId = lastIdObj.ToString();
                int lastNumber = int.Parse(lastId.Substring(1));
                newCategoryId = "C" + (lastNumber + 1);
            }
            SqlCommand cmd = new SqlCommand("INSERT INTO RAE_Category (Category_ID, CategoryName) VALUES ('" + newCategoryId + "', '" + txtCategoryName.Text + "')", con);

            cmd.ExecuteNonQuery();
            con.Close();
            gvCategories.DataBind();
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

            string categorynm = gvCategories.DataKeys[row.RowIndex].Value.ToString();
            lblMessage.Text = categorynm;

            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM RAE_Category WHERE CategoryName = '" + categorynm + "'", con);
            int rowsAffected = cmd.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                lblMessage.Text = "Category deleted successfully!";
            }
            else
            {
                lblMessage.Text = "Error: Category not found!";
            }
            gvCategories.DataBind();
            con.Close();
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
}