﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

public partial class Experience : System.Web.UI.Page
{
    private int user_id = 0;
    //Connection String from web.config File
    string cs = "server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True";
    MySqlConnection con;
    MySqlDataAdapter adapt;
    DataTable dt;

    private bool checker = true;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            user_id = int.Parse(Request.Cookies["uid"].Value);
        }
        catch (Exception ex)
        {

        }

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
                        if (int.Parse(dr["Experience"].ToString()) == 0)
                        {
                            cardExperience.Visible = true;
                            cardExperience_Preview.Visible = false;

                            FirstGridViewTeachRow();

                        }
                        else
                        {
                            experience_preview();
                            cardExperience.Visible = false;
                            cardExperience_Preview.Visible = true;
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
    private void FirstGridViewTeachRow()
    {
        DataTable teach_dt = new DataTable();
        DataRow teach_dr = null;
        teach_dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
        teach_dt.Columns.Add(new DataColumn("Col1", typeof(string)));
        teach_dt.Columns.Add(new DataColumn("Col2", typeof(string)));
        teach_dt.Columns.Add(new DataColumn("Col3", typeof(string)));
        teach_dt.Columns.Add(new DataColumn("Col4", typeof(string)));
        teach_dt.Columns.Add(new DataColumn("Col5", typeof(string)));
        teach_dt.Columns.Add(new DataColumn("Col6", typeof(string)));
        teach_dt.Columns.Add(new DataColumn("Col7", typeof(string)));

        teach_dr = teach_dt.NewRow();
        teach_dr["RowNumber"] = 1;
        teach_dr["Col1"] = string.Empty;
        teach_dr["Col2"] = string.Empty;
        teach_dr["Col3"] = string.Empty;
        teach_dr["Col4"] = string.Empty;
        teach_dr["Col5"] = string.Empty;
        teach_dr["Col6"] = string.Empty;
        teach_dr["Col7"] = string.Empty;

        teach_dt.Rows.Add(teach_dr);

        ViewState["CurrentTeachTable"] = teach_dt;


        gridFullTeach.DataSource = teach_dt;
        gridFullTeach.DataBind();


        TextBox txn = (TextBox)gridFullTeach.Rows[0].Cells[1].FindControl("experienceTeachUniversityName");
        txn.Focus();
        Button btnAdd = (Button)gridFullTeach.FooterRow.Cells[5].FindControl("ButtonAdd");
        Page.Form.DefaultFocus = btnAdd.ClientID;

    }
    private void AddNewRowTeach()
    {
        int rowIndex = 0;

        if (ViewState["CurrentTeachTable"] != null)
        {
            DataTable dtCurrentTeachTable = (DataTable)ViewState["CurrentTeachTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentTeachTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentTeachTable.Rows.Count; i++)
                {
                    TextBox experienceTeachUniversityName = (TextBox)gridFullTeach.Rows[rowIndex].Cells[1].FindControl("experienceTeachUniversityName");
                    TextBox experienceTeachDesignation = (TextBox)gridFullTeach.Rows[rowIndex].Cells[2].FindControl("experienceTeachDesignation");
                    DropDownList experienceTeachStatus = (DropDownList)gridFullTeach.Rows[rowIndex].Cells[3].FindControl("experienceTeachStatus");
                    TextBox experienceTeachSalary = (TextBox)gridFullTeach.Rows[rowIndex].Cells[4].FindControl("experienceTeachSalary");
                    TextBox experienceTeachFrom = (TextBox)gridFullTeach.Rows[rowIndex].Cells[5].FindControl("experienceTeachFrom");
                    TextBox experienceTeachTo = (TextBox)gridFullTeach.Rows[rowIndex].Cells[6].FindControl("experienceTeachTo");
                    DropDownList experienceType = (DropDownList)gridFullTeach.Rows[rowIndex].Cells[7].FindControl("experienceType");
                    drCurrentRow = dtCurrentTeachTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;

                    dtCurrentTeachTable.Rows[i - 1]["Col1"] = experienceTeachUniversityName.Text;
                    dtCurrentTeachTable.Rows[i - 1]["Col2"] = experienceTeachDesignation.Text;
                    dtCurrentTeachTable.Rows[i - 1]["Col3"] = experienceTeachStatus.Text;
                    dtCurrentTeachTable.Rows[i - 1]["Col4"] = experienceTeachSalary.Text;
                    dtCurrentTeachTable.Rows[i - 1]["Col5"] = experienceTeachFrom.Text;
                    dtCurrentTeachTable.Rows[i - 1]["Col6"] = experienceTeachTo.Text;
                    dtCurrentTeachTable.Rows[i - 1]["Col7"] = experienceType.Text;

                    rowIndex++;
                }
                dtCurrentTeachTable.Rows.Add(drCurrentRow);
                ViewState["CurrentTeachTable"] = dtCurrentTeachTable;

                gridFullTeach.DataSource = dtCurrentTeachTable;
                gridFullTeach.DataBind();

                TextBox txn = (TextBox)gridFullTeach.Rows[rowIndex].Cells[1].FindControl("experienceTeachUniversityName");
                txn.Focus();
                // txn.Focus;
            }
        }
        else
        {
            //Response.Write("ViewState is null");
        }
        SetPreviousDataTeach();
    }
    private void SetPreviousDataTeach()
    {
        int rowIndex = 0;
        if (ViewState["CurrentTeachTable"] != null)
        {
            DataTable teach_dt = (DataTable)ViewState["CurrentTeachTable"];
            if (teach_dt.Rows.Count > 0)
            {
                for (int i = 0; i < teach_dt.Rows.Count; i++)
                {
                    TextBox experienceTeachUniversityName = (TextBox)gridFullTeach.Rows[rowIndex].Cells[1].FindControl("experienceTeachUniversityName");
                    TextBox experienceTeachDesignation = (TextBox)gridFullTeach.Rows[rowIndex].Cells[2].FindControl("experienceTeachDesignation");
                    DropDownList experienceTeachStatus = (DropDownList)gridFullTeach.Rows[rowIndex].Cells[3].FindControl("experienceTeachStatus");
                    TextBox experienceTeachSalary = (TextBox)gridFullTeach.Rows[rowIndex].Cells[4].FindControl("experienceTeachSalary");
                    TextBox experienceTeachFrom = (TextBox)gridFullTeach.Rows[rowIndex].Cells[5].FindControl("experienceTeachFrom");
                    TextBox experienceTeachTo = (TextBox)gridFullTeach.Rows[rowIndex].Cells[6].FindControl("experienceTeachTo");
                    DropDownList experienceType = (DropDownList)gridFullTeach.Rows[rowIndex].Cells[7].FindControl("experienceType");
                    // drCurrentRow["RowNumber"] = i + 1;

                    gridFullTeach.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                    experienceTeachUniversityName.Text = teach_dt.Rows[i]["Col1"].ToString();
                    experienceTeachDesignation.Text = teach_dt.Rows[i]["Col2"].ToString();
                    experienceTeachStatus.Text = teach_dt.Rows[i]["Col3"].ToString();
                    experienceTeachSalary.Text = teach_dt.Rows[i]["Col4"].ToString();
                    experienceTeachFrom.Text = teach_dt.Rows[i]["Col5"].ToString();
                    experienceTeachTo.Text = teach_dt.Rows[i]["Col6"].ToString();
                    experienceType.Text = teach_dt.Rows[i]["Col7"].ToString();
                    rowIndex++;
                }
            }
        }
    }
    protected void ButtonAddTeach_Click(object sender, EventArgs e)
    {
        AddNewRowTeach();
    }
    protected void gridFullTeach_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SetRowDataTeach();
        if (ViewState["CurrentTeachTable"] != null)
        {
            DataTable teach_dt = (DataTable)ViewState["CurrentTeachTable"];
            DataRow drCurrentRow = null;
            int rowIndex = Convert.ToInt32(e.RowIndex);
            if (teach_dt.Rows.Count > 1)
            {
                teach_dt.Rows.Remove(teach_dt.Rows[rowIndex]);
                drCurrentRow = teach_dt.NewRow();
                ViewState["CurrentTeachTable"] = teach_dt;
                gridFullTeach.DataSource = teach_dt;
                gridFullTeach.DataBind();

                for (int i = 0; i < gridFullTeach.Rows.Count - 1; i++)
                {
                    gridFullTeach.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                }
                SetPreviousDataTeach();
            }
        }
    }

    private void SetRowDataTeach()
    {
        checker = false;
        int rowIndex = 0;

        if (ViewState["CurrentTeachTable"] != null)
        {
            DataTable dtCurrentTeachTable = (DataTable)ViewState["CurrentTeachTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentTeachTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentTeachTable.Rows.Count; i++)
                {
                    TextBox experienceTeachUniversityName = (TextBox)gridFullTeach.Rows[rowIndex].Cells[1].FindControl("experienceTeachUniversityName");
                    TextBox experienceTeachDesignation = (TextBox)gridFullTeach.Rows[rowIndex].Cells[2].FindControl("experienceTeachDesignation");
                    DropDownList experienceTeachStatus = (DropDownList)gridFullTeach.Rows[rowIndex].Cells[3].FindControl("experienceTeachStatus");
                    TextBox experienceTeachSalary = (TextBox)gridFullTeach.Rows[rowIndex].Cells[4].FindControl("experienceTeachSalary");
                    TextBox experienceTeachFrom = (TextBox)gridFullTeach.Rows[rowIndex].Cells[5].FindControl("experienceTeachFrom");
                    TextBox experienceTeachTo = (TextBox)gridFullTeach.Rows[rowIndex].Cells[6].FindControl("experienceTeachTo");
                    DropDownList experienceType = (DropDownList)gridFullTeach.Rows[rowIndex].Cells[7].FindControl("experienceType");

                    drCurrentRow = dtCurrentTeachTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;
                    dtCurrentTeachTable.Rows[i - 1]["Col1"] = experienceTeachUniversityName.Text;
                    dtCurrentTeachTable.Rows[i - 1]["Col2"] = experienceTeachDesignation.Text;
                    dtCurrentTeachTable.Rows[i - 1]["Col3"] = experienceTeachStatus.Text;
                    dtCurrentTeachTable.Rows[i - 1]["Col4"] = experienceTeachSalary.Text;
                    dtCurrentTeachTable.Rows[i - 1]["Col5"] = experienceTeachFrom.Text;
                    dtCurrentTeachTable.Rows[i - 1]["Col6"] = experienceTeachTo.Text;
                    dtCurrentTeachTable.Rows[i - 1]["Col7"] = experienceType.Text;
                    rowIndex++;
                }

                ViewState["CurrentTeachTable"] = dtCurrentTeachTable;
                //gridFullTeach.DataSource = dtCurrentTeachTable;
                //gridFullTeach.DataBind();
            }
        }
        else
        {
           // Response.Write("ViewState is null");
        }
        //SetPreviousDataTeach();
    }

    
    protected void submitExperience_Click(object sender, EventArgs e)
    {
        if (checker)
            SetRowDataTeach();
        bool submit_success = false;
        MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True");

        try
        {
            connection.Open();
        }
        catch (MySqlException ex)
        {
            //exception while opening the connection
        }
    

        int rowIndex = 0;
        if (ViewState["CurrentTeachTable"] != null)
        {
            DataTable teach_dt = (DataTable)ViewState["CurrentTeachTable"];
            if (teach_dt.Rows.Count > 0)
            {
                for (int i = 0; i < teach_dt.Rows.Count; i++)
                {
                   string expTeachingUniversityName = teach_dt.Rows[i]["Col1"].ToString();
                   string expteachingDesignation = teach_dt.Rows[i]["Col2"].ToString();
                   string expteachingStatus = teach_dt.Rows[i]["Col3"].ToString();
                   string expTeachSalary = teach_dt.Rows[i]["Col4"].ToString();
                   string expTeachFrom = teach_dt.Rows[i]["Col5"].ToString();
                   string expTeachingTo = teach_dt.Rows[i]["Col6"].ToString();
                   string expType = teach_dt.Rows[i]["Col7"].ToString();

                                    
                    MySqlCommand cmd = connection.CreateCommand();

                    cmd.CommandText = "INSERT INTO experience_table(User_ID, Employer, Designation, Status, BasicPay, FromDate, ToDate, " +
                        "TypeOfExperience, Duration) values (@uid,@employer,@designation, @status,@salary,@from,@to,@exptype, " +
                        "timestampdiff(MONTH, @from, @to))";

                    cmd.Parameters.AddWithValue("@uid", user_id);
                    cmd.Parameters.AddWithValue("@employer", expTeachingUniversityName);
                    cmd.Parameters.AddWithValue("@designation", expteachingDesignation);
                    cmd.Parameters.AddWithValue("@status", expteachingStatus);
                    cmd.Parameters.AddWithValue("@salary", expTeachSalary);
                    cmd.Parameters.AddWithValue("@from", expTeachFrom);
                    cmd.Parameters.AddWithValue("@to", expTeachingTo);
                    cmd.Parameters.AddWithValue("@exptype", expType);
                    //   cmd.Parameters.AddWithValue("@duration", expTeachFrom);
                    try
                    {
                        cmd.ExecuteNonQuery();
                        submit_success = true;
                    }
                    catch (MySqlException ex)
                    {
                        // exception while executing the mysql query
                        System.Diagnostics.Debug.WriteLine(ex.ToString());
                        submit_success = false;
                    }

                    cmd.Parameters.Clear();

                    rowIndex++;
                }
            }
        }
        if (submit_success)
        {
            string insert_com = "update application_status set Experience = 1 where User_ID = " + user_id.ToString();
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
        Response.Redirect("Research.aspx");
    }

    protected void experience_preview()
    {
        if (!this.IsPostBack)
        {
            ShowData();
        }

    }

    protected void ShowData()
    {

        dt = new DataTable();
        con = new MySqlConnection(cs);
        con.Open();
        adapt = new MySqlDataAdapter("Select Employer, Designation, Status, BasicPay, FromDate, ToDate, TypeOfExperience, Duration from experience_table where User_ID = " + user_id.ToString(), con);
        adapt.Fill(dt);
        if (dt.Rows.Count > 0)
        {

            experienceGrid.DataSource = dt;
            experienceGrid.DataBind();
        }
        con.Close();
    }
    protected void experienceGrid_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
    {
        //NewEditIndex property used to determine the index of the row being edited.
        experienceGrid.EditIndex = e.NewEditIndex;
        ShowData();
    }
    protected void experienceGrid_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
    {

        //Finding the controls from Gridview for the row which is going to update
        Label Employer = experienceGrid.Rows[e.RowIndex].FindControl("lbl_experienceTeachUniversityName") as Label;
        Label Designation = experienceGrid.Rows[e.RowIndex].FindControl("lbl_experienceTeachDesignation") as Label;
        DropDownList Status = experienceGrid.Rows[e.RowIndex].FindControl("txt_experienceTeachStatus") as DropDownList;
        TextBox BasicPay = experienceGrid.Rows[e.RowIndex].FindControl("txt_experienceTeachSalary") as TextBox;
        TextBox From = experienceGrid.Rows[e.RowIndex].FindControl("txt_experienceTeachFrom") as TextBox;
        TextBox To = experienceGrid.Rows[e.RowIndex].FindControl("txt_experienceTeachTo") as TextBox;
        DropDownList TypeOfExperience = experienceGrid.Rows[e.RowIndex].FindControl("txt_experienceType") as DropDownList;
        Label expDuration = experienceGrid.Rows[e.RowIndex].FindControl("lbl_experienceDuration") as Label;
        con = new MySqlConnection(cs);
        con.Open();
        //updating the record
        MySqlCommand cmd = con.CreateCommand();
        cmd.CommandText = "Update experience_table set Status = @Status, BasicPay= @BasicPay, FromDate= @From, ToDate= @To, " +
            "TypeOfExperience= @TypeOfExperience, Duration = timestampdiff(MONTH, @From, @To)" +
            " where User_ID=@user_id and Employer= @Employer and Designation=@Designation";

        cmd.Parameters.AddWithValue("@Employer", Employer.Text);
        cmd.Parameters.AddWithValue("@Designation", Designation.Text);
        cmd.Parameters.AddWithValue("@Status", Status.Text);
        cmd.Parameters.AddWithValue("@BasicPay", BasicPay.Text);
        cmd.Parameters.AddWithValue("@From", From.Text);
        cmd.Parameters.AddWithValue("@To", To.Text);
        cmd.Parameters.AddWithValue("@TypeOfExperience", TypeOfExperience.Text);
        cmd.Parameters.AddWithValue("@user_id", user_id);

        

        cmd.ExecuteNonQuery();
        con.Close();
        //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview
        experienceGrid.EditIndex = -1;
        //Call ShowData_1 method for displaying updated data
        ShowData();
    }

    protected void experienceGrid_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
    {
        //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview
        experienceGrid.EditIndex = -1;
        ShowData();
    }

}