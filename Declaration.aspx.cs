using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.IO;
using System.Data.SqlClient;

public partial class Declaration : System.Web.UI.Page
{
    private int user_id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            user_id = int.Parse(Request.Cookies["uid"].Value);
        }
        catch (Exception ex)
        {

        }

        Page.MaintainScrollPositionOnPostBack = true;
        checkCompletion();
    }

    protected void checkCompletion()
    {
        if (!this.IsPostBack)
        {
            using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
            {
                connection.Open();

                string retrieve_command = "select * from application_status where User_ID = " + user_id.ToString();

                using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
                {
                    //
                    MySqlDataReader dr = retrieve_details.ExecuteReader();
                    retrieve_details.Dispose();
                    System.Diagnostics.Debug.WriteLine("Registered successfully......!");

                    while (dr.Read())
                    {
                        if (int.Parse(dr["Declaration"].ToString()) == 0)
                        {
                            tableDeclaration.Visible = true;
                            tblDeclaration.Visible = false;
                        }
                        else
                        {
                            tableDeclaration.Visible = false;
                            tblDeclaration.Visible = true;
                        }
                    }
                }
                try
                {

                }
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine(ex);
                    Response.Write("<b>something really bad happened.....Please try again</b> ");
                }
                finally
                {
                    connection.Close();
                }
            }
        }
    }

    protected void nocChanged(object sender, EventArgs e)
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
        lblNameHead.Text = nocNameOfHead.Text;
        lblDesgHead.Text = nocDesignation.Text;
        lblPlaceHead.Text = nocPlace.Text;
        lblDateHead.Text = nocDate.Text;
        lblAddressHead.Text = nocAddress.Text;

        if (nocCheck.Checked == true)
        {
            tblDeclaration.Visible = true;
            tblDeclaration2.Visible = false;
            tblDeclaration3.Visible = true;
            tblDeclaration1.Visible = false;
            tableDeclaration.Visible = false;
        }
        else
        {
            tblDeclaration.Visible = true;
            tblDeclaration2.Visible = true;
            tblDeclaration3.Visible = false;
            tblDeclaration1.Visible = true;
            tableDeclaration.Visible = false;
        }
    }

    protected void btnDeclarationrEdit_Click(object Sender, EventArgs e)
    {
        tblDeclaration.Visible = false;
        tableDeclaration.Visible = true;
        if (!this.IsPostBack)
        {
            MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True");

            string insert_com = "update application_status set Declaration = 0 where User_ID = " + user_id.ToString();
            using (MySqlCommand update_details = new MySqlCommand(insert_com, connection))
            {
                try
                {
                    update_details.ExecuteNonQuery();
                    update_details.Dispose();
                    System.Diagnostics.Debug.WriteLine("Registered successfully......!");
                }
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine(ex);
                    Response.Write("<b>something really bad happened.....Please try again</b> ");
                }
                finally
                {
                    connection.Close();
                }
            }
        }
    }

    protected void btnDeclarationNext_Click(object Sender, EventArgs e)
    {
        dataEntry();
        Response.Redirect("Uploads.aspx");
    }

    protected void dataEntry()
    {
        MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True");

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
            institution = nocPlace.Text;
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
        bool stage = false;

        MySqlCommand cmd = connection.CreateCommand();

        cmd.CommandText = "INSERT INTO declaration_table (User_ID, isNoc, head, institution, designation, date, address) values (@uid,@isNoc,@head,@institution,@designation,@date,@address)";


        cmd.Parameters.AddWithValue("@uid", user_id);
        cmd.Parameters.AddWithValue("@isNoc", isNoc);
        cmd.Parameters.AddWithValue("@head", headName);
        cmd.Parameters.AddWithValue("@institution", institution);
        cmd.Parameters.AddWithValue("@designation", designation);
        cmd.Parameters.AddWithValue("@date", date);
        cmd.Parameters.AddWithValue("@address", address);

        try
        {
            cmd.ExecuteNonQuery();
            stage = true;
        }
        catch (MySqlException ex)
        {
            // exception while executing the mysql query
            System.Diagnostics.Debug.WriteLine(ex.ToString());
            stage = false;
        }


        cmd.Parameters.Clear();

        if (stage)
        {
            string insert_com = "update application_status set Declaration = 1 where User_ID = " + user_id.ToString();
            using (MySqlCommand update_details = new MySqlCommand(insert_com, connection))
            {
                try
                {
                    update_details.ExecuteNonQuery();
                    update_details.Dispose();
                    System.Diagnostics.Debug.WriteLine("Registered successfully......!");
                }
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine(ex);
                    Response.Write("<b>something really bad happened.....Please try again</b> ");
                }
                finally
                {
                    connection.Close();
                }
            }
        }

        if (connection != null) connection.Close();
    }
}