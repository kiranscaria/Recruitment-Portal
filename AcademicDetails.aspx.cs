using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

public partial class newForm : System.Web.UI.Page
{
    private bool checkerPdeg = true;

    private bool chekcerPHDdeg = true;

    protected void Page_Load(object sender, EventArgs e)
    {
        checkCompletion();    
    }

    protected void checkCompletion()
    {
        if (!this.IsPostBack)
        {
            using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
            {
                connection.Open();

                int user_id = 402; // replace with session variable
                string retrieve_command = "select * from application_status where User_ID = " + user_id.ToString();

                using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
                {
                    //
                    MySqlDataReader dr = retrieve_details.ExecuteReader();
                    retrieve_details.Dispose();
                    System.Diagnostics.Debug.WriteLine("Registered successfully......!");

                    while (dr.Read())
                    {
                        if (int.Parse(dr["Academic_Details"].ToString()) == 0)
                        {
                            cardAcademicDetails_1.Visible = true;
                            cardAcademicDetails_2.Visible = true;
                            cardAcademicDetails_3.Visible = true;
                            cardAcademicDetails_1_Preview.Visible = false;
                            cardAcademicDetails_2_Preview.Visible = false;
                            cardAcademicDetails_3_Preview.Visible = false;

                            FirstGridViewPDeg();
                            FirstGridViewPhdDeg();
                            
                        }
                        else
                        {
                            AcademicDetails_1_Preview();
                            AcademicDetails_2_Preview();
                            AcademicDetails_3_Preview();
                            cardAcademicDetails_1.Visible = false;
                            cardAcademicDetails_2.Visible = false;
                            cardAcademicDetails_3.Visible = false;
                            cardAcademicDetails_1_Preview.Visible = true;
                            cardAcademicDetails_2_Preview.Visible = true;
                            cardAcademicDetails_3_Preview.Visible = true;
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

    private void FirstGridViewPDeg()
    {
        DataTable deg_dt = new DataTable();
        DataRow deg_dr = null;
        deg_dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
        deg_dt.Columns.Add(new DataColumn("Col1", typeof(string)));
        deg_dt.Columns.Add(new DataColumn("Col2", typeof(string)));
        deg_dt.Columns.Add(new DataColumn("Col3", typeof(string)));
        deg_dt.Columns.Add(new DataColumn("Col4", typeof(string)));
        deg_dt.Columns.Add(new DataColumn("Col5", typeof(string)));
        deg_dt.Columns.Add(new DataColumn("Col6", typeof(string)));
        deg_dt.Columns.Add(new DataColumn("Col7", typeof(string)));
        deg_dr = deg_dt.NewRow();
        deg_dr["RowNumber"] = 1;
        deg_dr["Col1"] = string.Empty;
        deg_dr["Col2"] = string.Empty;
        deg_dr["Col3"] = string.Empty;
        deg_dr["Col4"] = string.Empty;
        deg_dr["Col5"] = string.Empty;
        deg_dr["Col6"] = string.Empty;
        deg_dr["Col7"] = string.Empty;
        deg_dt.Rows.Add(deg_dr);

        ViewState["CurrentPDegTable"] = deg_dt;

 
        gridPDeg.DataSource = deg_dt;
        gridPDeg.DataBind();


        DropDownList txn = (DropDownList)gridPDeg.Rows[0].Cells[1].FindControl("pDegType");
        txn.Focus();
        Button btnAdd = (Button)gridPDeg.FooterRow.Cells[5].FindControl("ButtonAddP");
        Page.Form.DefaultFocus = btnAdd.ClientID;

    }

    private void AddNewRowPDeg()
    {
        int rowIndex = 0;

        if (ViewState["CurrentPDegTable"] != null)
        {
            DataTable dtCurrentPDegTable = (DataTable)ViewState["CurrentPDegTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentPDegTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentPDegTable.Rows.Count; i++)
                {
                    DropDownList pDegType = (DropDownList)gridPDeg.Rows[rowIndex].Cells[1].FindControl("pDegType");
                    TextBox pDegName = (TextBox)gridPDeg.Rows[rowIndex].Cells[2].FindControl("pDegName");
                    TextBox pDegBoard = (TextBox)gridPDeg.Rows[rowIndex].Cells[3].FindControl("pDegBoard");
                    DropDownList pDegYear = (DropDownList)gridPDeg.Rows[rowIndex].Cells[4].FindControl("pDegYear");
                    TextBox pDegDevision = (TextBox)gridPDeg.Rows[rowIndex].Cells[5].FindControl("pDegDevision");
                    TextBox pDegGrade = (TextBox)gridPDeg.Rows[rowIndex].Cells[6].FindControl("pDegGrade");
                    TextBox pDegSubject = (TextBox)gridPDeg.Rows[rowIndex].Cells[7].FindControl("pDegSubject");
                    drCurrentRow = dtCurrentPDegTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;

                    dtCurrentPDegTable.Rows[i - 1]["Col1"] = pDegType.SelectedItem.Text;
                    dtCurrentPDegTable.Rows[i - 1]["Col2"] = pDegName.Text;
                    dtCurrentPDegTable.Rows[i - 1]["Col3"] = pDegBoard.Text;
                    dtCurrentPDegTable.Rows[i - 1]["Col4"] = pDegYear.SelectedItem.Text;
                    dtCurrentPDegTable.Rows[i - 1]["Col5"] = pDegDevision.Text;
                    dtCurrentPDegTable.Rows[i - 1]["Col6"] = pDegGrade.Text;
                    dtCurrentPDegTable.Rows[i - 1]["Col7"] = pDegSubject.Text;
                    rowIndex++;
                }
                dtCurrentPDegTable.Rows.Add(drCurrentRow);
                ViewState["CurrentPDegTable"] = dtCurrentPDegTable;

                gridPDeg.DataSource = dtCurrentPDegTable;
                gridPDeg.DataBind();

                DropDownList txn = (DropDownList)gridPDeg.Rows[rowIndex].Cells[1].FindControl("pDegType");
                txn.Focus();
                // txn.Focus;
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }
        SetPreviousDataPDeg();
    }

    private void SetPreviousDataPDeg()
    {
        int rowIndex = 0;
        if (ViewState["CurrentPDegTable"] != null)
        {
            DataTable deg_dt = (DataTable)ViewState["CurrentPDegTable"];
            if (deg_dt.Rows.Count > 0)
            {
                for (int i = 0; i < deg_dt.Rows.Count; i++)
                {
                    DropDownList pDegType = (DropDownList)gridPDeg.Rows[rowIndex].Cells[1].FindControl("pDegType");
                    TextBox pDegName = (TextBox)gridPDeg.Rows[rowIndex].Cells[2].FindControl("pDegName");
                    TextBox pDegBoard = (TextBox)gridPDeg.Rows[rowIndex].Cells[3].FindControl("pDegBoard");
                    DropDownList pDegYear = (DropDownList)gridPDeg.Rows[rowIndex].Cells[4].FindControl("pDegYear");
                    TextBox pDegDevision = (TextBox)gridPDeg.Rows[rowIndex].Cells[5].FindControl("pDegDevision");
                    TextBox pDegGrade = (TextBox)gridPDeg.Rows[rowIndex].Cells[6].FindControl("pDegGrade");
                    TextBox pDegSubject = (TextBox)gridPDeg.Rows[rowIndex].Cells[7].FindControl("pDegSubject");
                    // drCurrentRow["RowNumber"] = i + 1;

                    gridPDeg.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                    pDegType.SelectedItem.Text = deg_dt.Rows[i]["Col1"].ToString();
                    pDegName.Text = deg_dt.Rows[i]["Col2"].ToString();
                    pDegBoard.Text = deg_dt.Rows[i]["Col3"].ToString();
                    pDegYear.SelectedItem.Text = deg_dt.Rows[i]["Col4"].ToString();
                    pDegDevision.Text = deg_dt.Rows[i]["Col5"].ToString();
                    pDegGrade.Text = deg_dt.Rows[i]["Col6"].ToString();
                    pDegSubject.Text = deg_dt.Rows[i]["Col7"].ToString();
                    rowIndex++;
                }
            }
        }
    }

    protected void ButtonAddP_Click(object sender, EventArgs e)
    {
        AddNewRowPDeg();
    }

    protected void gridPDeg_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SetRowDataPDeg();
        if (ViewState["CurrentPDegTable"] != null)
        {
            DataTable deg_dt = (DataTable)ViewState["CurrentPDegTable"];
            DataRow drCurrentRow = null;
            int rowIndex = Convert.ToInt32(e.RowIndex);
            if (deg_dt.Rows.Count > 1)
            {
                deg_dt.Rows.Remove(deg_dt.Rows[rowIndex]);
                drCurrentRow = deg_dt.NewRow();
                ViewState["CurrentPDegTable"] = deg_dt;
                gridPDeg.DataSource = deg_dt;
                gridPDeg.DataBind();

                for (int i = 0; i < gridPDeg.Rows.Count - 1; i++)
                {
                    gridPDeg.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                }
                SetPreviousDataPDeg();
            }
        }
    }

    private void SetRowDataPDeg()
    {
        checkerPdeg = false;
        int rowIndex = 0;

        if (ViewState["CurrentPDegTable"] != null)
        {
            DataTable dtCurrentPDegTable = (DataTable)ViewState["CurrentPDegTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentPDegTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentPDegTable.Rows.Count; i++)
                {
                    DropDownList pDegType = (DropDownList)gridPDeg.Rows[rowIndex].Cells[1].FindControl("pDegType");
                    TextBox pDegName = (TextBox)gridPDeg.Rows[rowIndex].Cells[2].FindControl("pDegName");
                    TextBox pDegBoard = (TextBox)gridPDeg.Rows[rowIndex].Cells[3].FindControl("pDegBoard");
                    DropDownList pDegYear = (DropDownList)gridPDeg.Rows[rowIndex].Cells[4].FindControl("pDegYear");
                    TextBox pDegDevision = (TextBox)gridPDeg.Rows[rowIndex].Cells[5].FindControl("pDegDevision");
                    TextBox pDegGrade = (TextBox)gridPDeg.Rows[rowIndex].Cells[6].FindControl("pDegGrade");
                    TextBox pDegSubject = (TextBox)gridPDeg.Rows[rowIndex].Cells[7].FindControl("pDegSubject");

                    drCurrentRow = dtCurrentPDegTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;
                    dtCurrentPDegTable.Rows[i - 1]["Col1"] = pDegType.SelectedItem.Text;
                    dtCurrentPDegTable.Rows[i - 1]["Col2"] = pDegName.Text;
                    dtCurrentPDegTable.Rows[i - 1]["Col3"] = pDegBoard.Text;
                    dtCurrentPDegTable.Rows[i - 1]["Col4"] = pDegYear.SelectedItem.Text;
                    dtCurrentPDegTable.Rows[i - 1]["Col5"] = pDegDevision.Text;
                    dtCurrentPDegTable.Rows[i - 1]["Col6"] = pDegGrade.Text;
                    dtCurrentPDegTable.Rows[i - 1]["Col7"] = pDegSubject.Text;
                    rowIndex++;
                }

                ViewState["CurrentPDegTable"] = dtCurrentPDegTable;
                //gridFullTeach.DataSource = dtCurrentTeachTable;
                //gridFullTeach.DataBind();
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }
        //SetPreviousDataTeach();
    }

    private void FirstGridViewPhdDeg()
    {
        DataTable deg_dt = new DataTable();
        DataRow deg_dr = null;
        deg_dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
        deg_dt.Columns.Add(new DataColumn("Col1", typeof(string)));
        deg_dt.Columns.Add(new DataColumn("Col2", typeof(string)));
        deg_dt.Columns.Add(new DataColumn("Col3", typeof(string)));
        deg_dt.Columns.Add(new DataColumn("Col4", typeof(string)));
        deg_dt.Columns.Add(new DataColumn("Col5", typeof(string)));
        deg_dt.Columns.Add(new DataColumn("Col6", typeof(string)));
        deg_dr = deg_dt.NewRow();
        deg_dr["RowNumber"] = 1;
        deg_dr["Col1"] = string.Empty;
        deg_dr["Col2"] = string.Empty;
        deg_dr["Col3"] = string.Empty;
        deg_dr["Col4"] = string.Empty;
        deg_dr["Col5"] = string.Empty;
        deg_dr["Col6"] = string.Empty;
        deg_dt.Rows.Add(deg_dr);

        ViewState["CurrentPhdDegTable"] = deg_dt;


        gridPhdDeg.DataSource = deg_dt;
        gridPhdDeg.DataBind();


        TextBox txn = (TextBox)gridPhdDeg.Rows[0].Cells[1].FindControl("phdDegName");
        txn.Focus();
        Button btnAdd = (Button)gridPhdDeg.FooterRow.Cells[5].FindControl("ButtonAddPhd");
        Page.Form.DefaultFocus = btnAdd.ClientID;

    }

    private void AddNewRowPhdDeg()
    {
        int rowIndex = 0;

        if (ViewState["CurrentPhdDegTable"] != null)
        {
            DataTable dtCurrentPhdDegTable = (DataTable)ViewState["CurrentPhdDegTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentPhdDegTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentPhdDegTable.Rows.Count; i++)
                {
                    TextBox phdDegName = (TextBox)gridPhdDeg.Rows[rowIndex].Cells[1].FindControl("phdDegName");
                    TextBox phdDegUni = (TextBox)gridPhdDeg.Rows[rowIndex].Cells[2].FindControl("phdDegUni");
                    TextBox phdDegDor = (TextBox)gridPhdDeg.Rows[rowIndex].Cells[3].FindControl("phdDegDor");
                    TextBox phdDegDos = (TextBox)gridPhdDeg.Rows[rowIndex].Cells[4].FindControl("phdDegDos");
                    TextBox pDegRegdNo = (TextBox)gridPhdDeg.Rows[rowIndex].Cells[5].FindControl("pDegRegdNo");
                    TextBox phdDegTitle = (TextBox)gridPhdDeg.Rows[rowIndex].Cells[6].FindControl("phdDegTitle");
                    drCurrentRow = dtCurrentPhdDegTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;

                    dtCurrentPhdDegTable.Rows[i - 1]["Col1"] = phdDegName.Text;
                    dtCurrentPhdDegTable.Rows[i - 1]["Col2"] = phdDegUni.Text;
                    dtCurrentPhdDegTable.Rows[i - 1]["Col3"] = phdDegDor.Text;
                    dtCurrentPhdDegTable.Rows[i - 1]["Col4"] = phdDegDos.Text;
                    dtCurrentPhdDegTable.Rows[i - 1]["Col5"] = pDegRegdNo.Text;
                    dtCurrentPhdDegTable.Rows[i - 1]["Col6"] = phdDegTitle.Text;
                    rowIndex++;
                }
                dtCurrentPhdDegTable.Rows.Add(drCurrentRow);
                ViewState["CurrentPhdDegTable"] = dtCurrentPhdDegTable;

                gridPhdDeg.DataSource = dtCurrentPhdDegTable;
                gridPhdDeg.DataBind();

                TextBox txn = (TextBox)gridPhdDeg.Rows[rowIndex].Cells[1].FindControl("phdDegName");
                txn.Focus();
                // txn.Focus;
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }
        SetPreviousDataPhdDeg();
    }

    private void SetPreviousDataPhdDeg()
    {
        int rowIndex = 0;
        if (ViewState["CurrentPhdDegTable"] != null)
        {
            DataTable deg_dt = (DataTable)ViewState["CurrentPhdDegTable"];
            if (deg_dt.Rows.Count > 0)
            {
                for (int i = 0; i < deg_dt.Rows.Count; i++)
                {
                    TextBox phdDegName = (TextBox)gridPhdDeg.Rows[rowIndex].Cells[1].FindControl("phdDegName");
                    TextBox phdDegUni = (TextBox)gridPhdDeg.Rows[rowIndex].Cells[2].FindControl("phdDegUni");
                    TextBox phdDegDor = (TextBox)gridPhdDeg.Rows[rowIndex].Cells[3].FindControl("phdDegDor");
                    TextBox phdDegDos = (TextBox)gridPhdDeg.Rows[rowIndex].Cells[4].FindControl("phdDegDos");
                    TextBox pDegRegdNo = (TextBox)gridPhdDeg.Rows[rowIndex].Cells[5].FindControl("pDegRegdNo");
                    TextBox phdDegTitle = (TextBox)gridPhdDeg.Rows[rowIndex].Cells[6].FindControl("phdDegTitle");
                    // drCurrentRow["RowNumber"] = i + 1;

                    gridPhdDeg.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                    phdDegName.Text = deg_dt.Rows[i]["Col1"].ToString();
                    phdDegUni.Text = deg_dt.Rows[i]["Col2"].ToString();
                    phdDegDor.Text = deg_dt.Rows[i]["Col3"].ToString();
                    phdDegDos.Text = deg_dt.Rows[i]["Col4"].ToString();
                    pDegRegdNo.Text = deg_dt.Rows[i]["Col5"].ToString();
                    phdDegTitle.Text = deg_dt.Rows[i]["Col6"].ToString();
                    rowIndex++;
                }
            }
        }
    }

    protected void ButtonAddPhd_Click(object sender, EventArgs e)
    {
        AddNewRowPhdDeg();
    }

    protected void gridPhdDeg_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SetRowDataPhdDeg();
        if (ViewState["CurrentPhdDegTable"] != null)
        {
            DataTable deg_dt = (DataTable)ViewState["CurrentPhdDegTable"];
            DataRow drCurrentRow = null;
            int rowIndex = Convert.ToInt32(e.RowIndex);
            if (deg_dt.Rows.Count > 1)
            {
                deg_dt.Rows.Remove(deg_dt.Rows[rowIndex]);
                drCurrentRow = deg_dt.NewRow();
                ViewState["CurrentPhdDegTable"] = deg_dt;
                gridPhdDeg.DataSource = deg_dt;
                gridPhdDeg.DataBind();

                for (int i = 0; i < gridPhdDeg.Rows.Count - 1; i++)
                {
                    gridPhdDeg.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                }
                SetPreviousDataPhdDeg();
            }
        }
    }

    private void SetRowDataPhdDeg()
    {
        chekcerPHDdeg = false;
        int rowIndex = 0;

        if (ViewState["CurrentPhdDegTable"] != null)
        {
            DataTable dtCurrentPhdDegTable = (DataTable)ViewState["CurrentPhdDegTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentPhdDegTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentPhdDegTable.Rows.Count; i++)
                {
                    TextBox phdDegName = (TextBox)gridPhdDeg.Rows[rowIndex].Cells[1].FindControl("phdDegName");
                    TextBox phdDegUni = (TextBox)gridPhdDeg.Rows[rowIndex].Cells[2].FindControl("phdDegUni");
                    TextBox phdDegDor = (TextBox)gridPhdDeg.Rows[rowIndex].Cells[3].FindControl("phdDegDor");
                    TextBox phdDegDos = (TextBox)gridPhdDeg.Rows[rowIndex].Cells[4].FindControl("phdDegDos");
                    TextBox pDegRegdNo = (TextBox)gridPhdDeg.Rows[rowIndex].Cells[5].FindControl("pDegRegdNo");
                    TextBox phdDegTitle = (TextBox)gridPhdDeg.Rows[rowIndex].Cells[6].FindControl("phdDegTitle");

                    drCurrentRow = dtCurrentPhdDegTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;
                    dtCurrentPhdDegTable.Rows[i - 1]["Col1"] = phdDegName.Text;
                    dtCurrentPhdDegTable.Rows[i - 1]["Col2"] = phdDegUni.Text;
                    dtCurrentPhdDegTable.Rows[i - 1]["Col3"] = phdDegDor.Text;
                    dtCurrentPhdDegTable.Rows[i - 1]["Col4"] = phdDegDos.Text;
                    dtCurrentPhdDegTable.Rows[i - 1]["Col5"] = pDegRegdNo.Text;
                    dtCurrentPhdDegTable.Rows[i - 1]["Col6"] = phdDegTitle.Text;
                    rowIndex++;
                }

                ViewState["CurrentPhdDegTable"] = dtCurrentPhdDegTable;
                //gridFullTeach.DataSource = dtCurrentTeachTable;
                //gridFullTeach.DataBind();
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }
        //SetPreviousDataTeach();
    }

    protected void btnSaveAcademicDetail_Click(object sender, EventArgs e)
    {
        if(checkerPdeg)
            SetRowDataPDeg();
        if (chekcerPHDdeg)
            SetRowDataPhdDeg();
        bool stage1_success = false, stage2_success = false, stage3_success = false;

        MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True");

        try
        {
            connection.Open();
        }
        catch(MySqlException ex)
        {
            //exception while opening the connection
        }
        int rowIndex = 0;
        if (ViewState["CurrentPDegTable"] != null)
        {
            DataTable deg_dt = (DataTable)ViewState["CurrentPDegTable"];
            if (deg_dt.Rows.Count > 0)
            {
                for (int i = 0; i < deg_dt.Rows.Count; i++)
                {
                    string pdegtype = deg_dt.Rows[i]["Col1"].ToString();
                    string pdegname = deg_dt.Rows[i]["Col2"].ToString();
                    string pdegboard = deg_dt.Rows[i]["Col3"].ToString();
                    string pdegyear = deg_dt.Rows[i]["Col4"].ToString();
                    string pdegDiv = deg_dt.Rows[i]["Col5"].ToString();
                    string pdegGrade = deg_dt.Rows[i]["Col6"].ToString();
                    string pdegSubs = deg_dt.Rows[i]["Col7"].ToString();

                    MySqlCommand cmd = connection.CreateCommand();

                    cmd.CommandText = "INSERT INTO edu_core(User_ID,DegreeType,DegreeName,University,Year,Division,Percentage,Subjects) values (@uid,@degType,@degName," +
                                    "@university,@year,@division,@percentage,@subjects)";

                    cmd.Parameters.AddWithValue("@uid", 6589);
                    cmd.Parameters.AddWithValue("@degType", pdegtype);
                    cmd.Parameters.AddWithValue("@degName", pdegname);
                    cmd.Parameters.AddWithValue("@university", pdegboard);
                    cmd.Parameters.AddWithValue("@year", pdegyear);
                    cmd.Parameters.AddWithValue("@division", pdegDiv);
                    cmd.Parameters.AddWithValue("@percentage", pdegGrade);
                    cmd.Parameters.AddWithValue("@subjects", pdegSubs);
                    try
                    {
                        cmd.ExecuteNonQuery();
                        stage1_success = true;
                    } 
                    catch(MySqlException ex)
                    {
                        // exception while executing the mysql query
                        System.Diagnostics.Debug.WriteLine(ex.ToString());
                    }

                    cmd.Parameters.Clear();
                    rowIndex++;
                }
            }
        }

        int rowIndex2 = 0;
        if (ViewState["CurrentPhdDegTable"] != null)
        {
            DataTable deg_dt = (DataTable)ViewState["CurrentPhdDegTable"];
            if (deg_dt.Rows.Count > 0)
            {
                for (int i = 0; i < deg_dt.Rows.Count; i++)
                {
                    gridPhdDeg.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                    string phdDeggName = deg_dt.Rows[i]["Col1"].ToString();
                    string phdDeggUni = deg_dt.Rows[i]["Col2"].ToString();
                    string phdDeggDor = deg_dt.Rows[i]["Col3"].ToString();
                    string phdDeggDos = deg_dt.Rows[i]["Col4"].ToString();
                    string phdRegNo = deg_dt.Rows[i]["Col5"].ToString();
                    string phdDeggTitle = deg_dt.Rows[i]["Col6"].ToString();

                    MySqlCommand cmd = connection.CreateCommand();

                    cmd.CommandText = "INSERT INTO edu_doctorate(User_ID,DegreeName,University,RegistrationDate,SubmissionDate,RegistrationNo,ThesisTitle) values (@uid,@degName," +
                                    "@university,STR_TO_DATE(@regDate,'%D %M, %Y'),STR_TO_DATE(@subDate,'%D %M, %Y'),@regNo,@thesisTitle)";

                    cmd.Parameters.AddWithValue("@uid", 6589);
                    cmd.Parameters.AddWithValue("@degName", phdDeggName);
                    cmd.Parameters.AddWithValue("@university", phdDeggUni);
                    cmd.Parameters.AddWithValue("@regDate", phdDeggDor);
                    cmd.Parameters.AddWithValue("@subDate", phdDeggDos);
                    cmd.Parameters.AddWithValue("@regNo", phdRegNo);
                    cmd.Parameters.AddWithValue("@thesisTitle", phdDeggTitle);
                    try
                    {
                        cmd.ExecuteNonQuery();
                        stage2_success = true;
                    }
                    catch (MySqlException ex)
                    {
                        // exception while executing the mysql query
                        System.Diagnostics.Debug.WriteLine(ex.ToString());
                    }

                cmd.Parameters.Clear();

                rowIndex2++;
                }
            }
        }

        if (netJrflist.SelectedItem.Text.Equals("Yes"))
        {
            string isQual = netJrflist.SelectedItem.Text;
            string year = netYear.Text;
            string examQual = "";
            string subject = "";
            string netOrJrf = "";
            string certNo = rollNo.Text;

            if (examQualified.SelectedItem.Text.Equals("UGC"))
            {
                examQual = "UGC";
                subject = subUGC.SelectedItem.Text;
                netOrJrf = selNetJrf.SelectedItem.Text;
            } else if (examQualified.SelectedItem.Text.Equals("CSIR"))
            {
                examQual = "CSIR";
                subject = subCSIR.SelectedItem.Text;
                netOrJrf = selNetJrf.SelectedItem.Text;
            } else if (examQualified.SelectedItem.Text.Equals("ICAR"))
            {
                examQual = "ICAR";
                subject = subICAR.SelectedItem.Text;
                netOrJrf = selNetJrf.SelectedItem.Text;
            } else if (examQualified.SelectedItem.Text.Equals("Others"))
            {
                examQual = subOtherExam.Text;
                subject = subOtherExam.Text;
            }

        MySqlCommand cmd = connection.CreateCommand();

        cmd.CommandText = "INSERT INTO edu_net(User_ID,IsQualified,QualificationYear,ExamBody,ExamType,Subject,CertificateNo) values (@uid,@isQual," +
                        "@qualYear,@examBody,@examType,@subject,@certNo)";

        cmd.Parameters.AddWithValue("@uid", 6589);
        cmd.Parameters.AddWithValue("@isQual", isQual);
        cmd.Parameters.AddWithValue("@qualYear", year);
        cmd.Parameters.AddWithValue("@examBody", examQual);
        cmd.Parameters.AddWithValue("@examType", netOrJrf);
        cmd.Parameters.AddWithValue("@subject", subject);
        cmd.Parameters.AddWithValue("@certNo", certNo);

        try
        {
            cmd.ExecuteNonQuery();
            stage3_success = true;
        }
        catch (MySqlException ex)
        {
            // exception while executing the mysql query
            System.Diagnostics.Debug.WriteLine(ex.ToString());
        }


        }

        if (stage1_success && stage2_success && stage3_success) 
        {
            int user_id = 402; //
            string insert_com = "update application_status set Academic_Details = 1 where User_ID = " + user_id.ToString();
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

    protected void AcademicDetails_1_Preview()
    {
        if (!this.IsPostBack)
        {
            using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
            {
                connection.Open();

                string retrieve_command = "Select DegreeType, DegreeName, University, Year, Division, Percentage, Subjects from edu_core";

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

    protected void AcademicDetails_2_Preview()
    {
        if (!this.IsPostBack)
        {
            using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
            {
                connection.Open();

                string retrieve_command = "Select DegreeName, University, RegistrationDate, SubmissionDate, RegistrationNo, ThesisTitle from edu_doctorate";

                using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
                {
                    using (MySqlDataAdapter da = new MySqlDataAdapter())
                    {
                        da.SelectCommand = retrieve_details;
                        using (DataTable dt = new DataTable())
                        {
                            da.Fill(dt);
                            GridView2.DataSource = dt;
                            GridView2.DataBind();
                        }
                    }
                }
            }
        }
    }

    protected void AcademicDetails_3_Preview()
    {
        netQualified.Text = netJrflist.SelectedItem.ToString();
        netQualifiedYear.Text = netYear.Text;
        examQualifiedName.Text = examQualified.SelectedItem.ToString();
        if (int.Parse(subUGC.SelectedValue.ToString()) != 0)
            examSubject.Text = subUGC.SelectedItem.ToString();
        else if (int.Parse(subCSIR.SelectedValue.ToString()) != 0) 
            examSubject.Text = subCSIR.SelectedItem.ToString();
        else if (int.Parse(subICAR.SelectedValue.ToString()) != 0)
            examSubject.Text = subICAR.SelectedItem.ToString();
        else
            examSubject.Text = subOtherExam.Text;
        examRollNo.Text = rollNo.Text;
    }
}