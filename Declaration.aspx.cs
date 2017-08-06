using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Declaration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void nocChanged(object sende, EventArgs e)
    {
        if(nocCheck.Checked == true)
        {
            nocText2.Visible = true;
            nocText.Visible = false;
            nocTable.Visible = false;
        }
        else
        {
            nocText.Visible = true;
            nocText2.Visible = false;
            nocTable.Visible = true;
        }

    }

    protected void btnSaveDeclaration_Click(object Sender, EventArgs e)
    {
        MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = blackhat; database=curaj_recruitment; persistsecurityinfo=True");

        try
        {
            connection.Open();
        }
        catch (MySqlException ex)
        {
            //exception while opening the connection
        }

        string isNoc = "";
        string headName = "";
        string designation = "";
        string institution = "";
        string date = "";
        string address = "";

        if (!nocCheck.Checked)
        {
             isNoc = "Yes";
             headName = nocNameOfHead.Text;
             designation = nocDesignation.Text;
             institution = nocNameOfInstitution.Text;
             date = nocDate.Text;
             address = nocAddress.Text;
        }
        else
        {
            isNoc = "No";
            headName = "N/A";
            designation = "N/A";
            institution = "N/A";
            date = "00-00-0000";
            address = "N/A";
        }
  ;

        MySqlCommand cmd = connection.CreateCommand();

        cmd.CommandText = "INSERT INTO declaration_table() values (@uid,@isNoc,@head,@institution,@designation,STR_TO_DATE(@date,'%d-%m-%Y'),@address)";


        cmd.Parameters.AddWithValue("@uid", 2000);
        cmd.Parameters.AddWithValue("@isNoc", isNoc);
        cmd.Parameters.AddWithValue("@head", headName);
        cmd.Parameters.AddWithValue("@institution", institution);
        cmd.Parameters.AddWithValue("@designation", designation);
        cmd.Parameters.AddWithValue("@date", date);
        cmd.Parameters.AddWithValue("@address", address);

        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (MySqlException ex)
        {
            // exception while executing the mysql query
            System.Diagnostics.Debug.WriteLine(ex.ToString());
        }


        cmd.Parameters.Clear();

        if (connection != null) connection.Close();

        lblNameHead.Text = nocNameOfHead.Text;
        lblDesgHead.Text = nocDesignation.Text;
        lblInstitutionHead.Text = nocNameOfInstitution.Text;
        lblDateHead.Text = nocDate.Text;
        lblAddressHead.Text = nocAddress.Text;

        if (nocCheck.Checked == true)
        {
            tblDeclaration.Visible = true;
            tblDeclaration2.Visible = true;
            tblDeclaration1.Visible = false;
            tableDeclaration.Visible = false;
        }
        else
        {
            tblDeclaration.Visible = true;
            tblDeclaration2.Visible = false;
            tblDeclaration1.Visible = true;
            tableDeclaration.Visible = false;
        }
    }

    protected void btnDeclarationrEdit_Click(object Sender, EventArgs e)
    {
        tblDeclaration.Visible = false;
        tableDeclaration.Visible = true;
    }

    protected void btnDeclarationNext_Click(object Sender, EventArgs e)
    {
        Response.Redirect("Uploads.aspx");
    }
}