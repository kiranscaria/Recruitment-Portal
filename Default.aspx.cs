using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        checkPreviousSessions();

        loadDropDownPosts();

        loadApplications();      
    }

    protected void loadApplications()
    {
        if (!this.IsPostBack)
        {
            using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
            {
                connection.Open();

                string retrieve_command = "select Post, Department, Specialisation, Category from application_status";

                using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
                {
                    using (MySqlDataAdapter da = new MySqlDataAdapter())
                    {
                        da.SelectCommand = retrieve_details;
                        using (DataTable dt = new DataTable())
                        {
                            da.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }
    }

    protected void loadDropDownPosts()
    {
        if (!this.IsPostBack)
        {
            using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
            {
                connection.Open();

                string retrieve_command = "select distinct Post from advertisement_table";

                using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
                {
                    postList.DataSource = retrieve_details.ExecuteReader();
                    postList.DataTextField = "Post";
                    postList.DataBind();
                }
            }

            postList.Items.Insert(0, new ListItem("Select Post", "0"));
        }
    }

    protected void Post_Changed(object sender, EventArgs e)
    {
        using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
        {
            connection.Open();

            string retrieve_command = "select distinct Department from advertisement_table where post = '" + postList.SelectedItem.ToString() + "'";

            using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
            {
                postDepartment.DataSource = retrieve_details.ExecuteReader();
                postDepartment.DataTextField = "Department";
                postDepartment.DataBind();
            }
        }

        postDepartment.Items.Insert(0, new ListItem("Select Department", "0"));
    }    

    protected void Department_Changed(object sender, EventArgs e)
    {
        using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
        {
            connection.Open();

            string retrieve_command = "select distinct Specialisation from advertisement_table where Department = '" + postDepartment.SelectedItem.ToString() + "' and Post = '" + postList.SelectedItem.ToString() + "'";

            using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
            {
                postSpecialisation.DataSource = retrieve_details.ExecuteReader();
                postSpecialisation.DataTextField = "Specialisation";
                postSpecialisation.DataBind();
            }
        }

        postSpecialisation.Items.Insert(0, new ListItem("Select Specialisation", "0"));
    }

    protected void Specialisation_Changed(object sender, EventArgs e)
    {
        using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
        {
            connection.Open();

            string retrieve_command = "select distinct Category from advertisement_table where Specialisation = '" + postSpecialisation.SelectedItem.ToString() + "' and Department = '" + postDepartment.SelectedItem.ToString() + "' and Post = '" + postList.SelectedItem.ToString() + "'"; 

            using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
            {
                postCategory.DataSource = retrieve_details.ExecuteReader();
                postCategory.DataTextField = "Category";
                postCategory.DataBind();
            }
        }

        postCategory.Items.Insert(0, new ListItem("Select Category", "0"));
    }

    protected void btnApplyNow_Click(object Sender, EventArgs e)
    {
        if(!(postList.SelectedItem.ToString().Equals("Select Post") && postDepartment.SelectedItem.ToString().Equals("Select Department") &&
           postSpecialisation.SelectedItem.ToString().Equals("Select Specialisation") && postCategory.SelectedItem.ToString().Equals("Select Category")))
        { 
            // apply for the post
            using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
            {
                connection.Open();

                string insert_command = "insert into application_status (User_ID, Post, Department, Specialisation, Category, General_Details, Academic_Details, Experience, Research, Other_Details, Declaration, Preview, Uploads, Payment)" +
                    "values (@User_ID, @Post_Applied, @Department, @Specialisation, @Post_Category, @General_Details, @Academic_Details, @Experience, @Research, @Other_Details, @Declaration, @Preview, @Uploads, @Payment)";
                using (MySqlCommand insert_details = new MySqlCommand(insert_command, connection))
                {
                    System.Diagnostics.Debug.WriteLine("Here");
                    int user_name = 400;// int.Parse(HttpContext.Current.Session["user_id"].ToString());
                    insert_details.Parameters.AddWithValue("@User_ID", user_name);
                    insert_details.Parameters.AddWithValue("@Post_Applied", postList.SelectedItem.ToString());
                    insert_details.Parameters.AddWithValue("@Department", postDepartment.SelectedItem.ToString());
                    insert_details.Parameters.AddWithValue("@Specialisation", postSpecialisation.SelectedItem.ToString());
                    insert_details.Parameters.AddWithValue("@Post_Category", postCategory.SelectedItem.ToString());
                    insert_details.Parameters.AddWithValue("@General_Details", 0);
                    insert_details.Parameters.AddWithValue("@Academic_Details", 0);
                    insert_details.Parameters.AddWithValue("@Experience", 0);
                    insert_details.Parameters.AddWithValue("@Research", 0);
                    insert_details.Parameters.AddWithValue("@Other_Details", 0);
                    insert_details.Parameters.AddWithValue("@Declaration", 0);
                    insert_details.Parameters.AddWithValue("@Preview", 0);
                    insert_details.Parameters.AddWithValue("@Uploads", 0);
                    insert_details.Parameters.AddWithValue("@Payment", 0);
                    try
                    {
                        insert_details.ExecuteNonQuery();
                        insert_details.Dispose();
                        System.Diagnostics.Debug.WriteLine("Registered successfully......!");
                    }
                    catch (Exception ex)
                    {
                        System.Diagnostics.Debug.WriteLine(ex);
                        Response.Write("<b>something really bad happened.....Please try again</b> ");
                    }
                    finally
                    {
                        Response.Redirect("default.aspx");
                        connection.Close();
                    }
                }
            }
        }
    }

    protected void btnCompleteApplication_Click(object Sender, EventArgs e)
    {
        if (GridView1.Rows.Count > 0)
            Response.Redirect("GeneralDetails.aspx");
        else {
            lblNoApplication.Text = "No Posts Applied For!";
        }
    }

    protected void checkPreviousSessions()
    {
        if (!this.IsPostBack)
        {
            using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
            {
                connection.Open();

                int user_id = 402;
                string retrieve_command = "select * from application_status where User_ID = " + user_id.ToString();

                using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
                {
                    //
                    MySqlDataReader dr = retrieve_details.ExecuteReader();
                    retrieve_details.Dispose();
                    System.Diagnostics.Debug.WriteLine("Registered successfully......!");

                    while (dr.Read())
                    {
                        if (int.Parse(dr["General_Details"].ToString()) == 0)
                        {

                        }
                        else
                        {

                        }
                        if (int.Parse(dr["Academic_Details"].ToString()) == 0)
                        {

                        }
                        else
                        {

                        }
                        if (int.Parse(dr["Experience"].ToString()) == 0)
                        {

                        }
                        else
                        {

                        }
                        if (int.Parse(dr["Research"].ToString()) == 0)
                        {

                        }
                        else
                        {

                        }
                        if (int.Parse(dr["Other_Details"].ToString()) == 0)
                        {

                        }
                        else
                        {

                        }
                        if (int.Parse(dr["Declaration"].ToString()) == 0)
                        {

                        }
                        else
                        {

                        }
                        if (int.Parse(dr["Preview"].ToString()) == 0)
                        {

                        }
                        else
                        {

                        }
                        if (int.Parse(dr["Payment"].ToString()) == 0)
                        {

                        }
                        else
                        {

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
}