using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

public partial class Research : System.Web.UI.Page
{
    private bool checkerCatPhdResearch = true;
    private bool checkerCatBookResearchRow = true;
    private bool checkerCatResearchProject = true;
    private bool checkerCatFellowship = true;
    private bool checkerCatElearn = true;

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

                int user_id = 2000; // replace with session variable
                string retrieve_command = "select * from application_status where User_ID = " + user_id.ToString();

                using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
                {
                    //
                    MySqlDataReader dr = retrieve_details.ExecuteReader();
                    retrieve_details.Dispose();
                    System.Diagnostics.Debug.WriteLine("Registered successfully......!");

                    while (dr.Read())
                    {
                        if (int.Parse(dr["Research"].ToString()) == 0)
                        {
                            assesment.Visible = true;
                            researchPapers.Visible = true;
                            publications.Visible = true;
                            researchProjects.Visible = true;
                            researchGuidance.Visible = true;
                            fellowship.Visible = true;
                            devEcontent.Visible = true;
                            saveReasearchButtons.Visible = true;

                            FirstGridViewPhdResearchRow();
                            FirstGridViewBookResearchRow();
                            FirstGridViewResearchProjectRow();
                            FirstGridViewFellowshipRow();
                            FirstGridViewElearnRow();

                        }
                        else
                        {
                            assesment.Visible = false;
                            researchPapers.Visible = false;
                            publications.Visible = false;
                            researchProjects.Visible = false;
                            researchGuidance.Visible = false;
                            fellowship.Visible = false;
                            devEcontent.Visible = false;
                            saveReasearchButtons.Visible = false;

                            assesmentPreview.Visible = true;
                            researchPapersPreview.Visible = true;
                            publicationPreview.Visible = true;
                            researchProjectPreview.Visible = true;
                            guidancePreview.Visible = true;
                            fellowshipPreview.Visible = true;
                            econtentPreview.Visible = true;
                            saveReasearchButtonsPreview.Visible = true;

                            assesment_preview();
                            research_papers_preview();
                            publication_preview();
                            research_project_preview();
                            guidance_preview();
                            fellowship_preview();
                            econtent_preview();

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

    private void FirstGridViewPhdResearchRow()
    {
        DataTable phd_dt = new DataTable();
        DataRow phd_dr = null;
        phd_dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
        phd_dt.Columns.Add(new DataColumn("Col1", typeof(string)));
        phd_dt.Columns.Add(new DataColumn("Col2", typeof(string)));
        phd_dt.Columns.Add(new DataColumn("Col3", typeof(string)));
        phd_dt.Columns.Add(new DataColumn("Col4", typeof(string)));
        phd_dt.Columns.Add(new DataColumn("Col5", typeof(string)));
        phd_dt.Columns.Add(new DataColumn("Col6", typeof(string)));
        //phd_dt.Columns.Add(new DataColumn("Col7", typeof(string)));
        phd_dr = phd_dt.NewRow();
        phd_dr["RowNumber"] = 1;
        phd_dr["Col1"] = string.Empty;
        phd_dr["Col2"] = string.Empty;
        phd_dr["Col3"] = string.Empty;
        phd_dr["Col4"] = string.Empty;
        phd_dr["Col5"] = string.Empty;
        phd_dr["Col6"] = string.Empty;
        //phd_dr["Col7"] = string.Empty;
        phd_dt.Rows.Add(phd_dr);

        ViewState["CurrentPhdResearchTable"] = phd_dt;


        gridResearchPhd.DataSource = phd_dt;
        gridResearchPhd.DataBind();


        TextBox txn = (TextBox)gridResearchPhd.Rows[0].Cells[1].FindControl("phdPaperTitle");
        txn.Focus();
        Button btnAdd = (Button)gridResearchPhd.FooterRow.Cells[5].FindControl("ButtonAddphdResearch");
        Page.Form.DefaultFocus = btnAdd.ClientID;

    }
    private void AddNewRowPhdResearch()
    {
        int rowIndex = 0;

        if (ViewState["CurrentPhdResearchTable"] != null)
        {
            DataTable dtCurrentPhdResearchTable = (DataTable)ViewState["CurrentPhdResearchTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentPhdResearchTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentPhdResearchTable.Rows.Count; i++)
                {
                    TextBox phdPaperTitle = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[1].FindControl("phdPaperTitle");
                    TextBox phdJournalName = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[2].FindControl("phdJournalName");
                    DropDownList phDauthorStatus = (DropDownList)gridResearchPhd.Rows[rowIndex].Cells[3].FindControl("phDauthorStatus");
                    DropDownList phdImpactFactor = (DropDownList)gridResearchPhd.Rows[rowIndex].Cells[4].FindControl("phdImpactFactor");
                    DropDownList phdPubYear = (DropDownList)gridResearchPhd.Rows[rowIndex].Cells[5].FindControl("phdPubYear");
                    TextBox phdVolNo = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[6].FindControl("phdVolNo");
                    //Label phdApiScore = (Label)gridResearchPhd.Rows[rowIndex].Cells[7].FindControl("phdApiScore");
                    drCurrentRow = dtCurrentPhdResearchTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;

                    dtCurrentPhdResearchTable.Rows[i - 1]["Col1"] = phdPaperTitle.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col2"] = phdJournalName.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col3"] = phDauthorStatus.SelectedItem.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col4"] = phdImpactFactor.SelectedItem.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col5"] = phdPubYear.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col6"] = phdVolNo.Text;
                    //dtCurrentPhdResearchTable.Rows[i - 1]["Col7"] = phdApiScore.Text;
                    rowIndex++;
                }
                dtCurrentPhdResearchTable.Rows.Add(drCurrentRow);
                ViewState["CurrentPhdResearchTable"] = dtCurrentPhdResearchTable;

                gridResearchPhd.DataSource = dtCurrentPhdResearchTable;
                gridResearchPhd.DataBind();

                TextBox txn = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[1].FindControl("phdPaperTitle");
                txn.Focus();
                // txn.Focus;
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }
        SetPreviousDataPhdResearch();
    }
    private void SetPreviousDataPhdResearch()
    {
        int rowIndex = 0;
        if (ViewState["CurrentPhdResearchTable"] != null)
        {
            DataTable phd_dt = (DataTable)ViewState["CurrentPhdResearchTable"];
            if (phd_dt.Rows.Count > 0)
            {
                for (int i = 0; i < phd_dt.Rows.Count; i++)
                {
                    TextBox phdPaperTitle = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[1].FindControl("phdPaperTitle");
                    TextBox phdJournalName = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[2].FindControl("phdJournalName");
                    DropDownList phDauthorStatus = (DropDownList)gridResearchPhd.Rows[rowIndex].Cells[3].FindControl("phDauthorStatus");
                    DropDownList phdImpactFactor = (DropDownList)gridResearchPhd.Rows[rowIndex].Cells[4].FindControl("phdImpactFactor");
                    DropDownList phdPubYear = (DropDownList)gridResearchPhd.Rows[rowIndex].Cells[5].FindControl("phdPubYear");
                    TextBox phdVolNo = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[6].FindControl("phdVolNo");
                    //Label phdApiScore = (Label)gridResearchPhd.Rows[rowIndex].Cells[7].FindControl("phdApiScore");
                    // drCurrentRow["RowNumber"] = i + 1;

                    gridResearchPhd.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                    phdPaperTitle.Text = phd_dt.Rows[i]["Col1"].ToString();
                    phdJournalName.Text = phd_dt.Rows[i]["Col2"].ToString();
                    phDauthorStatus.SelectedItem.Text = phd_dt.Rows[i]["Col3"].ToString();
                    phdImpactFactor.SelectedItem.Text = phd_dt.Rows[i]["Col4"].ToString();
                    phdPubYear.Text = phd_dt.Rows[i]["Col5"].ToString();
                    phdVolNo.Text = phd_dt.Rows[i]["Col6"].ToString();
                    //phdApiScore.Text = phd_dt.Rows[i]["Col7"].ToString();
                    rowIndex++;
                }
            }
        }
    }
    protected void ButtonAddphdResearch_Click(object sender, EventArgs e)
    {
        AddNewRowPhdResearch();
    }
    protected void gridResearchPhd_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SetRowDataPhdResearch();
        if (ViewState["CurrentPhdResearchTable"] != null)
        {
            DataTable phd_dt = (DataTable)ViewState["CurrentPhdResearchTable"];
            DataRow drCurrentRow = null;
            int rowIndex = Convert.ToInt32(e.RowIndex);
            if (phd_dt.Rows.Count > 1)
            {
                phd_dt.Rows.Remove(phd_dt.Rows[rowIndex]);
                drCurrentRow = phd_dt.NewRow();
                ViewState["CurrentPhdResearchTable"] = phd_dt;
                gridResearchPhd.DataSource = phd_dt;
                gridResearchPhd.DataBind();

                for (int i = 0; i < gridResearchPhd.Rows.Count - 1; i++)
                {
                    gridResearchPhd.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                }
                SetPreviousDataPhdResearch();
            }
        }
    }
    private void SetRowDataPhdResearch()
    {
        checkerCatPhdResearch = false;
        int rowIndex = 0;

        if (ViewState["CurrentPhdResearchTable"] != null)
        {
            DataTable dtCurrentPhdResearchTable = (DataTable)ViewState["CurrentPhdResearchTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentPhdResearchTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentPhdResearchTable.Rows.Count; i++)
                {
                    TextBox phdPaperTitle = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[1].FindControl("phdPaperTitle");
                    TextBox phdJournalName = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[2].FindControl("phdJournalName");
                    DropDownList phDauthorStatus = (DropDownList)gridResearchPhd.Rows[rowIndex].Cells[3].FindControl("phDauthorStatus");
                    DropDownList phdImpactFactor = (DropDownList)gridResearchPhd.Rows[rowIndex].Cells[4].FindControl("phdImpactFactor");
                    DropDownList phdPubYear = (DropDownList)gridResearchPhd.Rows[rowIndex].Cells[5].FindControl("phdPubYear");
                    TextBox phdVolNo = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[6].FindControl("phdVolNo");
                    //Label phdApiScore = (Label)gridResearchPhd.Rows[rowIndex].Cells[7].FindControl("phdApiScore");

                    drCurrentRow = dtCurrentPhdResearchTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col1"] = phdPaperTitle.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col2"] = phdJournalName.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col3"] = phDauthorStatus.SelectedItem.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col4"] = phdImpactFactor.SelectedItem.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col5"] = phdPubYear.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col6"] = phdVolNo.Text;
                    //dtCurrentPhdResearchTable.Rows[i - 1]["Col7"] = phdApiScore.Text;
                    rowIndex++;
                }

                ViewState["CurrentPhdResearchTable"] = dtCurrentPhdResearchTable;
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


    private void FirstGridViewBookResearchRow()
    {
        DataTable book_dt = new DataTable();
        DataRow book_dr = null;
        book_dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
        book_dt.Columns.Add(new DataColumn("Col1", typeof(string)));
        book_dt.Columns.Add(new DataColumn("Col2", typeof(string)));
        book_dt.Columns.Add(new DataColumn("Col3", typeof(string)));
        book_dt.Columns.Add(new DataColumn("Col4", typeof(string)));
        book_dt.Columns.Add(new DataColumn("Col5", typeof(string)));
        book_dt.Columns.Add(new DataColumn("Col6", typeof(string)));
        //book_dt.Columns.Add(new DataColumn("Col7", typeof(string)));
        book_dr = book_dt.NewRow();
        book_dr["RowNumber"] = 1;
        book_dr["Col1"] = string.Empty;
        book_dr["Col2"] = string.Empty;
        book_dr["Col3"] = string.Empty;
        book_dr["Col4"] = string.Empty;
        book_dr["Col5"] = string.Empty;
        book_dr["Col6"] = string.Empty;
        //book_dr["Col7"] = string.Empty;
        book_dt.Rows.Add(book_dr);

        ViewState["CurrentBookResearchTable"] = book_dt;


        gridResearchBook.DataSource = book_dt;
        gridResearchBook.DataBind();


        DropDownList txn = (DropDownList)gridResearchBook.Rows[0].Cells[1].FindControl("bookPubType");
        txn.Focus();
        Button btnAdd = (Button)gridResearchBook.FooterRow.Cells[5].FindControl("ButtonAddbookResearch");
        Page.Form.DefaultFocus = btnAdd.ClientID;

    }
    private void AddNewRowBookResearch()
    {
        int rowIndex = 0;

        if (ViewState["CurrentBookResearchTable"] != null)
        {
            DataTable dtCurrentBookResearchTable = (DataTable)ViewState["CurrentBookResearchTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentBookResearchTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentBookResearchTable.Rows.Count; i++)
                {
                    DropDownList bookPubType = (DropDownList)gridResearchBook.Rows[rowIndex].Cells[1].FindControl("bookPubType");
                    TextBox bookPaperTitle = (TextBox)gridResearchBook.Rows[rowIndex].Cells[2].FindControl("bookPaperTitle");
                    TextBox bookIsbnNo = (TextBox)gridResearchBook.Rows[rowIndex].Cells[3].FindControl("bookIsbnNo");
                    DropDownList bookAuthorStatus = (DropDownList)gridResearchBook.Rows[rowIndex].Cells[4].FindControl("bookAuthorStatus");
                    DropDownList bookPubYear = (DropDownList)gridResearchBook.Rows[rowIndex].Cells[5].FindControl("bookPubYear");
                    TextBox bookPubName = (TextBox)gridResearchBook.Rows[rowIndex].Cells[6].FindControl("bookPubName");
                    //Label bookApi = (Label)gridResearchBook.Rows[rowIndex].Cells[7].FindControl("bookApi");

                    drCurrentRow = dtCurrentBookResearchTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;

                    dtCurrentBookResearchTable.Rows[i - 1]["Col1"] = bookPubType.SelectedItem.Text;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col2"] = bookPaperTitle.Text;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col3"] = bookIsbnNo.Text;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col4"] = bookAuthorStatus.SelectedItem.Text;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col5"] = bookPubYear.Text;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col6"] = bookPubName.Text;
                    //dtCurrentBookResearchTable.Rows[i - 1]["Col7"] = bookApi.Text;
                    rowIndex++;
                }
                dtCurrentBookResearchTable.Rows.Add(drCurrentRow);
                ViewState["CurrentBookResearchTable"] = dtCurrentBookResearchTable;

                gridResearchBook.DataSource = dtCurrentBookResearchTable;
                gridResearchBook.DataBind();

                DropDownList txn = (DropDownList)gridResearchBook.Rows[rowIndex].Cells[1].FindControl("bookPubType");
                txn.Focus();
                // txn.Focus;
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }
        SetPreviousDataBookResearch();
    }
    private void SetPreviousDataBookResearch()
    {
        int rowIndex = 0;
        if (ViewState["CurrentBookResearchTable"] != null)
        {
            DataTable book_dt = (DataTable)ViewState["CurrentBookResearchTable"];
            if (book_dt.Rows.Count > 0)
            {
                for (int i = 0; i < book_dt.Rows.Count; i++)
                {
                    DropDownList bookPubType = (DropDownList)gridResearchBook.Rows[rowIndex].Cells[1].FindControl("bookPubType");
                    TextBox bookPaperTitle = (TextBox)gridResearchBook.Rows[rowIndex].Cells[2].FindControl("bookPaperTitle");
                    TextBox bookIsbnNo = (TextBox)gridResearchBook.Rows[rowIndex].Cells[3].FindControl("bookIsbnNo");
                    DropDownList bookAuthorStatus = (DropDownList)gridResearchBook.Rows[rowIndex].Cells[4].FindControl("bookAuthorStatus");
                    DropDownList bookPubYear = (DropDownList)gridResearchBook.Rows[rowIndex].Cells[5].FindControl("bookPubYear");
                    TextBox bookPubName = (TextBox)gridResearchBook.Rows[rowIndex].Cells[6].FindControl("bookPubName");
                    //Label bookApi = (Label)gridResearchBook.Rows[rowIndex].Cells[7].FindControl("bookApi");
                    // drCurrentRow["RowNumber"] = i + 1;

                    gridResearchBook.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                    bookPubType.SelectedItem.Text = book_dt.Rows[i]["Col1"].ToString();
                    bookPaperTitle.Text = book_dt.Rows[i]["Col2"].ToString();
                    bookIsbnNo.Text = book_dt.Rows[i]["Col3"].ToString();
                    bookAuthorStatus.SelectedItem.Text = book_dt.Rows[i]["Col4"].ToString();
                    bookPubYear.Text = book_dt.Rows[i]["Col5"].ToString();
                    bookPubName.Text = book_dt.Rows[i]["Col6"].ToString();
                    //bookApi.Text = book_dt.Rows[i]["Col7"].ToString();
                    rowIndex++;
                }
            }
        }
    }
    protected void ButtonAddbookResearch_Click(object sender, EventArgs e)
    {
        AddNewRowBookResearch();
    }
    protected void gridResearchBook_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SetRowDataBookResearch();
        if (ViewState["CurrentBookResearchTable"] != null)
        {
            DataTable book_dt = (DataTable)ViewState["CurrentBookResearchTable"];
            DataRow drCurrentRow = null;
            int rowIndex = Convert.ToInt32(e.RowIndex);
            if (book_dt.Rows.Count > 1)
            {
                book_dt.Rows.Remove(book_dt.Rows[rowIndex]);
                drCurrentRow = book_dt.NewRow();
                ViewState["CurrentBookResearchTable"] = book_dt;
                gridResearchBook.DataSource = book_dt;
                gridResearchBook.DataBind();

                for (int i = 0; i < gridResearchBook.Rows.Count - 1; i++)
                {
                    gridResearchBook.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                }
                SetPreviousDataBookResearch();
            }
        }
    }
    private void SetRowDataBookResearch()
    {
        checkerCatBookResearchRow = false;
        int rowIndex = 0;

        if (ViewState["CurrentBookResearchTable"] != null)
        {
            DataTable dtCurrentBookResearchTable = (DataTable)ViewState["CurrentBookResearchTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentBookResearchTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentBookResearchTable.Rows.Count; i++)
                {
                    DropDownList bookPubType = (DropDownList)gridResearchBook.Rows[rowIndex].Cells[1].FindControl("bookPubType");
                    TextBox bookPaperTitle = (TextBox)gridResearchBook.Rows[rowIndex].Cells[2].FindControl("bookPaperTitle");
                    TextBox bookIsbnNo = (TextBox)gridResearchBook.Rows[rowIndex].Cells[3].FindControl("bookIsbnNo");
                    DropDownList bookAuthorStatus = (DropDownList)gridResearchBook.Rows[rowIndex].Cells[4].FindControl("bookAuthorStatus");
                    DropDownList bookPubYear = (DropDownList)gridResearchBook.Rows[rowIndex].Cells[5].FindControl("bookPubYear");
                    TextBox bookPubName = (TextBox)gridResearchBook.Rows[rowIndex].Cells[6].FindControl("bookPubName");
                    //Label bookApi = (Label)gridResearchBook.Rows[rowIndex].Cells[7].FindControl("bookApi");

                    drCurrentRow = dtCurrentBookResearchTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col1"] = bookPubType.SelectedItem.Text;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col2"] = bookPaperTitle.Text;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col3"] = bookIsbnNo.Text;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col4"] = bookAuthorStatus.SelectedItem.Text;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col5"] = bookPubYear.Text;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col6"] = bookPubName.Text;
                    //dtCurrentBookResearchTable.Rows[i - 1]["Col7"] = bookApi.Text;
                    rowIndex++;
                }

                ViewState["CurrentBookResearchTable"] = dtCurrentBookResearchTable;
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
    

    private void FirstGridViewResearchProjectRow()
    {
        DataTable project_dt = new DataTable();
        DataRow project_dr = null;
        project_dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
        project_dt.Columns.Add(new DataColumn("Col1", typeof(string)));
        project_dt.Columns.Add(new DataColumn("Col2", typeof(string)));
        project_dt.Columns.Add(new DataColumn("Col3", typeof(string)));
        project_dt.Columns.Add(new DataColumn("Col4", typeof(string)));
        project_dt.Columns.Add(new DataColumn("Col5", typeof(string)));
        //project_dt.Columns.Add(new DataColumn("Col6", typeof(string)));
        project_dr = project_dt.NewRow();
        project_dr["RowNumber"] = 1;
        project_dr["Col1"] = string.Empty;
        project_dr["Col2"] = string.Empty;
        project_dr["Col3"] = string.Empty;
        project_dr["Col4"] = string.Empty;
        project_dr["Col5"] = string.Empty;
        //project_dr["Col6"] = string.Empty;
        project_dt.Rows.Add(project_dr);

        ViewState["CurrentResearchProjectTable"] = project_dt;


        gridResearchProject.DataSource = project_dt;
        gridResearchProject.DataBind();


        DropDownList txn = (DropDownList)gridResearchProject.Rows[0].Cells[1].FindControl("researchProjectType");
        txn.Focus();
        Button btnAdd = (Button)gridResearchProject.FooterRow.Cells[5].FindControl("ButtonAddResearchProject");
        Page.Form.DefaultFocus = btnAdd.ClientID;

    }
    private void AddNewRowResearchProject()
    {
        int rowIndex = 0;

        if (ViewState["CurrentResearchProjectTable"] != null)
        {
            DataTable dtCurrentResearchProjectTable = (DataTable)ViewState["CurrentResearchProjectTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentResearchProjectTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentResearchProjectTable.Rows.Count; i++)
                {
                    DropDownList researchProjectType = (DropDownList)gridResearchProject.Rows[rowIndex].Cells[1].FindControl("researchProjectType");
                    TextBox researchProjectTitle = (TextBox)gridResearchProject.Rows[rowIndex].Cells[2].FindControl("researchProjectTitle");
                    TextBox researchProjectStatus = (TextBox)gridResearchProject.Rows[rowIndex].Cells[3].FindControl("researchProjectStatus");
                    TextBox researchProjectPeriod = (TextBox)gridResearchProject.Rows[rowIndex].Cells[4].FindControl("researchProjectPeriod");
                    TextBox researchProjectSponsor = (TextBox)gridResearchProject.Rows[rowIndex].Cells[5].FindControl("researchProjectSponsor");
                    //Label researchProjectApi = (Label)gridResearchProject.Rows[rowIndex].Cells[6].FindControl("researchProjectApi");
                    drCurrentRow = dtCurrentResearchProjectTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;

                    dtCurrentResearchProjectTable.Rows[i - 1]["Col1"] = researchProjectType.SelectedItem.Text;
                    dtCurrentResearchProjectTable.Rows[i - 1]["Col2"] = researchProjectTitle.Text;
                    dtCurrentResearchProjectTable.Rows[i - 1]["Col3"] = researchProjectStatus.Text;
                    dtCurrentResearchProjectTable.Rows[i - 1]["Col4"] = researchProjectPeriod.Text;
                    dtCurrentResearchProjectTable.Rows[i - 1]["Col5"] = researchProjectSponsor.Text;
                    //dtCurrentResearchProjectTable.Rows[i - 1]["Col6"] = researchProjectApi.Text;
                    rowIndex++;
                }
                dtCurrentResearchProjectTable.Rows.Add(drCurrentRow);
                ViewState["CurrentResearchProjectTable"] = dtCurrentResearchProjectTable;

                gridResearchProject.DataSource = dtCurrentResearchProjectTable;
                gridResearchProject.DataBind();

                DropDownList txn = (DropDownList)gridResearchProject.Rows[rowIndex].Cells[1].FindControl("researchProjectType");
                txn.Focus();
                // txn.Focus;
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }
        SetPreviousDataResearchProject();
    }
    private void SetPreviousDataResearchProject()
    {
        int rowIndex = 0;
        if (ViewState["CurrentResearchProjectTable"] != null)
        {
            DataTable project_dt = (DataTable)ViewState["CurrentResearchProjectTable"];
            if (project_dt.Rows.Count > 0)
            {
                for (int i = 0; i < project_dt.Rows.Count; i++)
                {
                    DropDownList researchProjectType = (DropDownList)gridResearchProject.Rows[rowIndex].Cells[1].FindControl("researchProjectType");
                    TextBox researchProjectTitle = (TextBox)gridResearchProject.Rows[rowIndex].Cells[2].FindControl("researchProjectTitle");
                    TextBox researchProjectStatus = (TextBox)gridResearchProject.Rows[rowIndex].Cells[3].FindControl("researchProjectStatus");
                    TextBox researchProjectPeriod = (TextBox)gridResearchProject.Rows[rowIndex].Cells[4].FindControl("researchProjectPeriod");
                    TextBox researchProjectSponsor = (TextBox)gridResearchProject.Rows[rowIndex].Cells[5].FindControl("researchProjectSponsor");
                    //Label researchProjectApi = (Label)gridResearchProject.Rows[rowIndex].Cells[6].FindControl("researchProjectApi");
                    // drCurrentRow["RowNumber"] = i + 1;

                    gridResearchProject.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                    researchProjectType.SelectedItem.Text = project_dt.Rows[i]["Col1"].ToString();
                    researchProjectTitle.Text = project_dt.Rows[i]["Col2"].ToString();
                    researchProjectStatus.Text = project_dt.Rows[i]["Col3"].ToString();
                    researchProjectPeriod.Text = project_dt.Rows[i]["Col4"].ToString();
                    researchProjectSponsor.Text = project_dt.Rows[i]["Col5"].ToString();
                    //researchProjectApi.Text = project_dt.Rows[i]["Col6"].ToString();
                    rowIndex++;
                }
            }
        }
    }
    protected void ButtonAddResearchProject_Click(object sender, EventArgs e)
    {
        AddNewRowResearchProject();
    }
    protected void gridResearchProject_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SetRowDataResearchProject();
        if (ViewState["CurrentResearchProjectTable"] != null)
        {
            DataTable project_dt = (DataTable)ViewState["CurrentResearchProjectTable"];
            DataRow drCurrentRow = null;
            int rowIndex = Convert.ToInt32(e.RowIndex);
            if (project_dt.Rows.Count > 1)
            {
                project_dt.Rows.Remove(project_dt.Rows[rowIndex]);
                drCurrentRow = project_dt.NewRow();
                ViewState["CurrentResearchProjectTable"] = project_dt;
                gridResearchProject.DataSource = project_dt;
                gridResearchProject.DataBind();

                for (int i = 0; i < gridResearchProject.Rows.Count - 1; i++)
                {
                    gridResearchProject.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                }
                SetPreviousDataResearchProject();
            }
        }
    }
    private void SetRowDataResearchProject()
    {
        checkerCatResearchProject = false;
        int rowIndex = 0;

        if (ViewState["CurrentResearchProjectTable"] != null)
        {
            DataTable dtCurrentResearchProjectTable = (DataTable)ViewState["CurrentResearchProjectTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentResearchProjectTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentResearchProjectTable.Rows.Count; i++)
                {
                    DropDownList researchProjectType = (DropDownList)gridResearchProject.Rows[rowIndex].Cells[1].FindControl("researchProjectType");
                    TextBox researchProjectTitle = (TextBox)gridResearchProject.Rows[rowIndex].Cells[2].FindControl("researchProjectTitle");
                    TextBox researchProjectStatus = (TextBox)gridResearchProject.Rows[rowIndex].Cells[3].FindControl("researchProjectStatus");
                    TextBox researchProjectPeriod = (TextBox)gridResearchProject.Rows[rowIndex].Cells[4].FindControl("researchProjectPeriod");
                    TextBox researchProjectSponsor = (TextBox)gridResearchProject.Rows[rowIndex].Cells[5].FindControl("researchProjectSponsor");
                    //Label researchProjectApi = (Label)gridResearchProject.Rows[rowIndex].Cells[6].FindControl("researchProjectApi");

                    drCurrentRow = dtCurrentResearchProjectTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;
                    dtCurrentResearchProjectTable.Rows[i - 1]["Col1"] = researchProjectType.SelectedItem.Text;
                    dtCurrentResearchProjectTable.Rows[i - 1]["Col2"] = researchProjectTitle.Text;
                    dtCurrentResearchProjectTable.Rows[i - 1]["Col3"] = researchProjectStatus.Text;
                    dtCurrentResearchProjectTable.Rows[i - 1]["Col4"] = researchProjectPeriod.Text;
                    dtCurrentResearchProjectTable.Rows[i - 1]["Col5"] = researchProjectSponsor.Text;
                    //dtCurrentResearchProjectTable.Rows[i - 1]["Col6"] = researchProjectApi.Text;
                    rowIndex++;
                }

                ViewState["CurrentResearchProjectTable"] = dtCurrentResearchProjectTable;
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


    private void FirstGridViewFellowshipRow()
    {
        DataTable project_dt = new DataTable();
        DataRow project_dr = null;
        project_dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
        project_dt.Columns.Add(new DataColumn("Col1", typeof(string)));
        project_dt.Columns.Add(new DataColumn("Col2", typeof(string)));
        project_dt.Columns.Add(new DataColumn("Col3", typeof(string)));
        project_dt.Columns.Add(new DataColumn("Col4", typeof(string)));
        project_dt.Columns.Add(new DataColumn("Col5", typeof(string)));
        project_dt.Columns.Add(new DataColumn("Col6", typeof(string)));
        //project_dt.Columns.Add(new DataColumn("Col7", typeof(string)));
        project_dr = project_dt.NewRow();
        project_dr["RowNumber"] = 1;
        project_dr["Col1"] = string.Empty;
        project_dr["Col2"] = string.Empty;
        project_dr["Col3"] = string.Empty;
        project_dr["Col4"] = string.Empty;
        project_dr["Col5"] = string.Empty;
        project_dr["Col6"] = string.Empty;
        //project_dr["Col7"] = string.Empty;
        project_dt.Rows.Add(project_dr);

        ViewState["CurrentFellowshipTable"] = project_dt;


        gridFellowship.DataSource = project_dt;
        gridFellowship.DataBind();


        DropDownList txn = (DropDownList)gridFellowship.Rows[0].Cells[1].FindControl("fellowshipType");
        txn.Focus();
        Button btnAdd = (Button)gridFellowship.FooterRow.Cells[5].FindControl("ButtonAddFellowship");
        Page.Form.DefaultFocus = btnAdd.ClientID;

    }
    private void AddNewRowFellowship()
    {
        int rowIndex = 0;

        if (ViewState["CurrentFellowshipTable"] != null)
        {
            DataTable dtCurrentFellowshipTable = (DataTable)ViewState["CurrentFellowshipTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentFellowshipTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentFellowshipTable.Rows.Count; i++)
                {
                    DropDownList fellowshipType = (DropDownList)gridFellowship.Rows[rowIndex].Cells[1].FindControl("fellowshipType");
                    TextBox fellowshipTitle = (TextBox)gridFellowship.Rows[rowIndex].Cells[2].FindControl("fellowshipTitle");
                    DropDownList fellowshipLevel = (DropDownList)gridFellowship.Rows[rowIndex].Cells[3].FindControl("fellowshipLevel");
                    DropDownList fellowshipPart = (DropDownList)gridFellowship.Rows[rowIndex].Cells[4].FindControl("fellowshipPart");
                    TextBox fellowshipSponsor = (TextBox)gridFellowship.Rows[rowIndex].Cells[5].FindControl("fellowshipSponsor");
                    TextBox fellowshipPeriod = (TextBox)gridFellowship.Rows[rowIndex].Cells[6].FindControl("fellowshipPeriod");
                    //Label fellowshipApi = (Label)gridFellowship.Rows[rowIndex].Cells[7].FindControl("fellowshipApi");
                    drCurrentRow = dtCurrentFellowshipTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;

                    dtCurrentFellowshipTable.Rows[i - 1]["Col1"] = fellowshipType.SelectedItem.Text;
                    dtCurrentFellowshipTable.Rows[i - 1]["Col2"] = fellowshipTitle.Text;
                    dtCurrentFellowshipTable.Rows[i - 1]["Col3"] = fellowshipLevel.SelectedItem.Text;
                    dtCurrentFellowshipTable.Rows[i - 1]["Col4"] = fellowshipPart.SelectedItem.Text;
                    dtCurrentFellowshipTable.Rows[i - 1]["Col5"] = fellowshipSponsor.Text;
                    dtCurrentFellowshipTable.Rows[i - 1]["Col6"] = fellowshipPeriod.Text;
                    //dtCurrentFellowshipTable.Rows[i - 1]["Col7"] = fellowshipApi.Text;
                    rowIndex++;
                }
                dtCurrentFellowshipTable.Rows.Add(drCurrentRow);
                ViewState["CurrentFellowshipTable"] = dtCurrentFellowshipTable;

                gridFellowship.DataSource = dtCurrentFellowshipTable;
                gridFellowship.DataBind();

                DropDownList txn = (DropDownList)gridFellowship.Rows[rowIndex].Cells[1].FindControl("fellowshipType");
                txn.Focus();
                // txn.Focus;
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }
        SetPreviousDataFellowship();
    }
    private void SetPreviousDataFellowship()
    {
        int rowIndex = 0;
        if (ViewState["CurrentFellowshipTable"] != null)
        {
            DataTable project_dt = (DataTable)ViewState["CurrentFellowshipTable"];
            if (project_dt.Rows.Count > 0)
            {
                for (int i = 0; i < project_dt.Rows.Count; i++)
                {
                    DropDownList fellowshipType = (DropDownList)gridFellowship.Rows[rowIndex].Cells[1].FindControl("fellowshipType");
                    TextBox fellowshipTitle = (TextBox)gridFellowship.Rows[rowIndex].Cells[2].FindControl("fellowshipTitle");
                    DropDownList fellowshipLevel = (DropDownList)gridFellowship.Rows[rowIndex].Cells[3].FindControl("fellowshipLevel");
                    DropDownList fellowshipPart = (DropDownList)gridFellowship.Rows[rowIndex].Cells[4].FindControl("fellowshipPart");
                    TextBox fellowshipSponsor = (TextBox)gridFellowship.Rows[rowIndex].Cells[5].FindControl("fellowshipSponsor");
                    TextBox fellowshipPeriod = (TextBox)gridFellowship.Rows[rowIndex].Cells[6].FindControl("fellowshipPeriod");
                    //Label fellowshipApi = (Label)gridFellowship.Rows[rowIndex].Cells[7].FindControl("fellowshipApi");
                    // drCurrentRow["RowNumber"] = i + 1;

                    gridFellowship.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                    fellowshipType.SelectedItem.Text = project_dt.Rows[i]["Col1"].ToString();
                    fellowshipTitle.Text = project_dt.Rows[i]["Col2"].ToString();
                    fellowshipLevel.SelectedItem.Text = project_dt.Rows[i]["Col3"].ToString();
                    fellowshipPart.SelectedItem.Text = project_dt.Rows[i]["Col4"].ToString();
                    fellowshipSponsor.Text = project_dt.Rows[i]["Col5"].ToString();
                    fellowshipPeriod.Text = project_dt.Rows[i]["Col6"].ToString();
                    //fellowshipApi.Text = project_dt.Rows[i]["Col7"].ToString();
                    rowIndex++;
                }
            }
        }
    }
    protected void ButtonAddFellowship_Click(object sender, EventArgs e)
    {
        AddNewRowFellowship();
    }
    protected void gridFellowship_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SetRowDataFellowship();
        if (ViewState["CurrentFellowshipTable"] != null)
        {
            DataTable project_dt = (DataTable)ViewState["CurrentFellowshipTable"];
            DataRow drCurrentRow = null;
            int rowIndex = Convert.ToInt32(e.RowIndex);
            if (project_dt.Rows.Count > 1)
            {
                project_dt.Rows.Remove(project_dt.Rows[rowIndex]);
                drCurrentRow = project_dt.NewRow();
                ViewState["CurrentFellowshipTable"] = project_dt;
                gridFellowship.DataSource = project_dt;
                gridFellowship.DataBind();

                for (int i = 0; i < gridFellowship.Rows.Count - 1; i++)
                {
                    gridFellowship.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                }
                SetPreviousDataFellowship();
            }
        }
    }
    private void SetRowDataFellowship()
    {
        checkerCatFellowship = false;
        int rowIndex = 0;

        if (ViewState["CurrentFellowshipTable"] != null)
        {
            DataTable dtCurrentFellowshipTable = (DataTable)ViewState["CurrentFellowshipTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentFellowshipTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentFellowshipTable.Rows.Count; i++)
                {
                    DropDownList fellowshipType = (DropDownList)gridFellowship.Rows[rowIndex].Cells[1].FindControl("fellowshipType");
                    TextBox fellowshipTitle = (TextBox)gridFellowship.Rows[rowIndex].Cells[2].FindControl("fellowshipTitle");
                    DropDownList fellowshipLevel = (DropDownList)gridFellowship.Rows[rowIndex].Cells[3].FindControl("fellowshipLevel");
                    DropDownList fellowshipPart = (DropDownList)gridFellowship.Rows[rowIndex].Cells[4].FindControl("fellowshipPart");
                    TextBox fellowshipSponsor = (TextBox)gridFellowship.Rows[rowIndex].Cells[5].FindControl("fellowshipSponsor");
                    TextBox fellowshipPeriod = (TextBox)gridFellowship.Rows[rowIndex].Cells[6].FindControl("fellowshipPeriod");
                    //Label fellowshipApi = (Label)gridFellowship.Rows[rowIndex].Cells[7].FindControl("fellowshipApi");

                    drCurrentRow = dtCurrentFellowshipTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;
                    dtCurrentFellowshipTable.Rows[i - 1]["Col1"] = fellowshipType.SelectedItem.Text;
                    dtCurrentFellowshipTable.Rows[i - 1]["Col2"] = fellowshipTitle.Text;
                    dtCurrentFellowshipTable.Rows[i - 1]["Col3"] = fellowshipLevel.SelectedItem.Text;
                    dtCurrentFellowshipTable.Rows[i - 1]["Col4"] = fellowshipPart.SelectedItem.Text;
                    dtCurrentFellowshipTable.Rows[i - 1]["Col5"] = fellowshipSponsor.Text;
                    dtCurrentFellowshipTable.Rows[i - 1]["Col6"] = fellowshipPeriod.Text;
                    //dtCurrentFellowshipTable.Rows[i - 1]["Col7"] = fellowshipApi.Text;
                    rowIndex++;
                }

                ViewState["CurrentFellowshipTable"] = dtCurrentFellowshipTable;
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


    private void FirstGridViewElearnRow()
    {
        DataTable project_dt = new DataTable();
        DataRow project_dr = null;
        project_dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
        project_dt.Columns.Add(new DataColumn("Col1", typeof(string)));
        project_dt.Columns.Add(new DataColumn("Col2", typeof(string)));
        project_dt.Columns.Add(new DataColumn("Col3", typeof(string)));
        project_dt.Columns.Add(new DataColumn("Col4", typeof(string)));
        project_dt.Columns.Add(new DataColumn("Col5", typeof(string)));
        //project_dt.Columns.Add(new DataColumn("Col6", typeof(string)));
        project_dr = project_dt.NewRow();
        project_dr["RowNumber"] = 1;
        project_dr["Col1"] = string.Empty;
        project_dr["Col2"] = string.Empty;
        project_dr["Col3"] = string.Empty;
        project_dr["Col4"] = string.Empty;
        project_dr["Col5"] = string.Empty;
        //project_dr["Col6"] = string.Empty;
        project_dt.Rows.Add(project_dr);

        ViewState["CurrentElearnTable"] = project_dt;


        gridElearn.DataSource = project_dt;
        gridElearn.DataBind();


        TextBox txn = (TextBox)gridElearn.Rows[0].Cells[1].FindControl("eLearnTitle");
        txn.Focus();
        Button btnAdd = (Button)gridElearn.FooterRow.Cells[5].FindControl("ButtonAddElearn");
        Page.Form.DefaultFocus = btnAdd.ClientID;

    }
    private void AddNewRowElearn()
    {
        int rowIndex = 0;

        if (ViewState["CurrentElearnTable"] != null)
        {
            DataTable dtCurrentElearnTable = (DataTable)ViewState["CurrentElearnTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentElearnTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentElearnTable.Rows.Count; i++)
                {
                    TextBox eLearnTitle = (TextBox)gridElearn.Rows[rowIndex].Cells[1].FindControl("eLearnTitle");
                    TextBox eLearnDetailAgency = (TextBox)gridElearn.Rows[rowIndex].Cells[2].FindControl("eLearnDetailAgency");
                    TextBox eLearnModule = (TextBox)gridElearn.Rows[rowIndex].Cells[3].FindControl("eLearnModule");
                    DropDownList eLearnStatus = (DropDownList)gridElearn.Rows[rowIndex].Cells[4].FindControl("eLearnStatus");
                    TextBox eLearnPeriod = (TextBox)gridElearn.Rows[rowIndex].Cells[5].FindControl("eLearnPeriod");
                    //Label eLearnApi = (Label)gridElearn.Rows[rowIndex].Cells[6].FindControl("eLearnApi");
                    drCurrentRow = dtCurrentElearnTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;

                    dtCurrentElearnTable.Rows[i - 1]["Col1"] = eLearnTitle.Text;
                    dtCurrentElearnTable.Rows[i - 1]["Col2"] = eLearnDetailAgency.Text;
                    dtCurrentElearnTable.Rows[i - 1]["Col3"] = eLearnModule.Text;
                    dtCurrentElearnTable.Rows[i - 1]["Col4"] = eLearnStatus.SelectedItem.Text;
                    dtCurrentElearnTable.Rows[i - 1]["Col5"] = eLearnPeriod.Text;
                    //dtCurrentElearnTable.Rows[i - 1]["Col6"] = eLearnApi.Text;
                    rowIndex++;
                }
                dtCurrentElearnTable.Rows.Add(drCurrentRow);
                ViewState["CurrentElearnTable"] = dtCurrentElearnTable;

                gridElearn.DataSource = dtCurrentElearnTable;
                gridElearn.DataBind();

                TextBox txn = (TextBox)gridElearn.Rows[rowIndex].Cells[1].FindControl("eLearnTitle");
                txn.Focus();
                // txn.Focus;
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }
        SetPreviousDataElearn();
    }
    private void SetPreviousDataElearn()
    {
        int rowIndex = 0;
        if (ViewState["CurrentElearnTable"] != null)
        {
            DataTable project_dt = (DataTable)ViewState["CurrentElearnTable"];
            if (project_dt.Rows.Count > 0)
            {
                for (int i = 0; i < project_dt.Rows.Count; i++)
                {
                    TextBox eLearnTitle = (TextBox)gridElearn.Rows[rowIndex].Cells[1].FindControl("eLearnTitle");
                    TextBox eLearnDetailAgency = (TextBox)gridElearn.Rows[rowIndex].Cells[2].FindControl("eLearnDetailAgency");
                    TextBox eLearnModule = (TextBox)gridElearn.Rows[rowIndex].Cells[3].FindControl("eLearnModule");
                    DropDownList eLearnStatus = (DropDownList)gridElearn.Rows[rowIndex].Cells[4].FindControl("eLearnStatus");
                    TextBox eLearnPeriod = (TextBox)gridElearn.Rows[rowIndex].Cells[5].FindControl("eLearnPeriod");
                    //Label eLearnApi = (Label)gridElearn.Rows[rowIndex].Cells[6].FindControl("eLearnApi");
                    // drCurrentRow["RowNumber"] = i + 1;

                    gridElearn.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                    eLearnTitle.Text = project_dt.Rows[i]["Col1"].ToString();
                    eLearnDetailAgency.Text = project_dt.Rows[i]["Col2"].ToString();
                    eLearnModule.Text = project_dt.Rows[i]["Col3"].ToString();
                    eLearnStatus.SelectedItem.Text = project_dt.Rows[i]["Col4"].ToString();
                    eLearnPeriod.Text = project_dt.Rows[i]["Col5"].ToString();
                    //eLearnApi.Text = project_dt.Rows[i]["Col6"].ToString();
                    rowIndex++;
                }
            }
        }
    }
    protected void ButtonAddElearn_Click(object sender, EventArgs e)
    {
        AddNewRowElearn();
    }
    protected void gridElearn_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SetRowDataElearn();
        if (ViewState["CurrentElearnTable"] != null)
        {
            DataTable project_dt = (DataTable)ViewState["CurrentElearnTable"];
            DataRow drCurrentRow = null;
            int rowIndex = Convert.ToInt32(e.RowIndex);
            if (project_dt.Rows.Count > 1)
            {
                project_dt.Rows.Remove(project_dt.Rows[rowIndex]);
                drCurrentRow = project_dt.NewRow();
                ViewState["CurrentElearnTable"] = project_dt;
                gridElearn.DataSource = project_dt;
                gridElearn.DataBind();

                for (int i = 0; i < gridElearn.Rows.Count - 1; i++)
                {
                    gridElearn.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                }
                SetPreviousDataElearn();
            }
        }
    }
    private void SetRowDataElearn()
    {
        checkerCatElearn = false;
        int rowIndex = 0;

        if (ViewState["CurrentElearnTable"] != null)
        {
            DataTable dtCurrentElearnTable = (DataTable)ViewState["CurrentElearnTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentElearnTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentElearnTable.Rows.Count; i++)
                {
                    TextBox eLearnTitle = (TextBox)gridElearn.Rows[rowIndex].Cells[1].FindControl("eLearnTitle");
                    TextBox eLearnDetailAgency = (TextBox)gridElearn.Rows[rowIndex].Cells[2].FindControl("eLearnDetailAgency");
                    TextBox eLearnModule = (TextBox)gridElearn.Rows[rowIndex].Cells[3].FindControl("eLearnModule");
                    DropDownList eLearnStatus = (DropDownList)gridElearn.Rows[rowIndex].Cells[4].FindControl("eLearnStatus");
                    TextBox eLearnPeriod = (TextBox)gridElearn.Rows[rowIndex].Cells[5].FindControl("eLearnPeriod");
                    //Label eLearnApi = (Label)gridElearn.Rows[rowIndex].Cells[6].FindControl("eLearnApi");

                    drCurrentRow = dtCurrentElearnTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;
                    dtCurrentElearnTable.Rows[i - 1]["Col1"] = eLearnTitle.Text;
                    dtCurrentElearnTable.Rows[i - 1]["Col2"] = eLearnDetailAgency.Text;
                    dtCurrentElearnTable.Rows[i - 1]["Col3"] = eLearnModule.Text;
                    dtCurrentElearnTable.Rows[i - 1]["Col4"] = eLearnStatus.SelectedItem.Text;
                    dtCurrentElearnTable.Rows[i - 1]["Col5"] = eLearnPeriod.Text;
                    //dtCurrentElearnTable.Rows[i - 1]["Col6"] = eLearnApi.Text;
                    rowIndex++;
                }

                ViewState["CurrentElearnTable"] = dtCurrentElearnTable;
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


    protected void saveResearch_Click(object sender, EventArgs e)
    {
        bool section1 = false;
        bool section2 = false;
        bool section3 = false;
        bool section4 = false;
        bool section5 = false;
        bool section6 = false;
        bool section7 = false;

        if (checkerCatPhdResearch)
            SetRowDataPhdResearch();
        if (checkerCatBookResearchRow)
            SetRowDataBookResearch();
        if (checkerCatResearchProject)
            SetRowDataResearchProject();
        if (checkerCatFellowship)
            SetRowDataFellowship();
        if (checkerCatElearn)
            SetRowDataElearn();



        MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True");

        try
        {
            connection.Open();
        }
        catch (MySqlException ex)
        {
            //exception while opening the connection
        }

        string row1 = a1.Text;
        string prev31 = hrs11.Text;
        string prev21 = hrs12.Text;
        string prev11 = hrs13.Text;

        MySqlCommand cmd = connection.CreateCommand();

        cmd.CommandText = "INSERT INTO api_data_ii(User_ID, Activity, PreviousThird, PreviousSecond, PreviousOne) values (@uid, @a1," +
                       "@hrs11, @hrs12, @hrs13)";

        cmd.Parameters.AddWithValue("@uid", 2000);
        cmd.Parameters.AddWithValue("@a1", row1);
        cmd.Parameters.AddWithValue("@hrs11", prev31);
        cmd.Parameters.AddWithValue("@hrs12", prev21);
        cmd.Parameters.AddWithValue("@hrs13", prev11);

        try
        {
            cmd.ExecuteNonQuery();
            section1 = true;
        }
        catch (MySqlException ex)
        {
            // exception while executing the mysql query
            System.Diagnostics.Debug.WriteLine(ex.ToString());
            section1 = false;
        }


        cmd.Parameters.Clear();

        string row2 = a2.Text;
        string prev32 = hrs21.Text;
        string prev22 = hrs22.Text;
        string prev12 = hrs23.Text;

        cmd.CommandText = "INSERT INTO api_data_ii(User_ID, Activity, PreviousThird, PreviousSecond, PreviousOne) values (@uid, @a2," +
                       "@hrs21, @hrs22, @hrs23)";

        cmd.Parameters.AddWithValue("@uid", 2000);
        cmd.Parameters.AddWithValue("@a2", row2);
        cmd.Parameters.AddWithValue("@hrs21", prev32);
        cmd.Parameters.AddWithValue("@hrs22", prev22);
        cmd.Parameters.AddWithValue("@hrs23", prev12);

        try
        {
            cmd.ExecuteNonQuery();
            section1 = true;
        }
        catch (MySqlException ex)
        {
            // exception while executing the mysql query
            System.Diagnostics.Debug.WriteLine(ex.ToString());
            section1 = false;
        }


        cmd.Parameters.Clear();

        string row3 = a3.Text;
        string prev33 = hrs31.Text;
        string prev23 = hrs32.Text;
        string prev13 = hrs33.Text;

        cmd.CommandText = "INSERT INTO api_data_ii(User_ID, Activity, PreviousThird, PreviousSecond, PreviousOne) values (@uid, @a3," +
                       "@hrs31, @hrs32, @hrs33)";

        cmd.Parameters.AddWithValue("@uid", 2000);
        cmd.Parameters.AddWithValue("@a3", row3);
        cmd.Parameters.AddWithValue("@hrs31", prev33);
        cmd.Parameters.AddWithValue("@hrs32", prev23);
        cmd.Parameters.AddWithValue("@hrs33", prev13);

        try
        {
            cmd.ExecuteNonQuery();
            section1 = true;
        }
        catch (MySqlException ex)
        {
            // exception while executing the mysql query
            System.Diagnostics.Debug.WriteLine(ex.ToString());
            section1 = false;
        }


        cmd.Parameters.Clear();

        string row4 = b1.Text;
        string prev34 = hrs41.Text;
        string prev24 = hrs42.Text;
        string prev14 = hrs43.Text;

        cmd.CommandText = "INSERT INTO api_data_ii(User_ID, Activity, PreviousThird, PreviousSecond, PreviousOne) values (@uid, @b1," +
                       "@hrs41, @hrs42, @hrs43)";

        cmd.Parameters.AddWithValue("@uid", 2000);
        cmd.Parameters.AddWithValue("@b1", row4);
        cmd.Parameters.AddWithValue("@hrs41", prev34);
        cmd.Parameters.AddWithValue("@hrs42", prev24);
        cmd.Parameters.AddWithValue("@hrs43", prev14);

        try
        {
            cmd.ExecuteNonQuery();
            section1 = true;
        }
        catch (MySqlException ex)
        {
            // exception while executing the mysql query
            System.Diagnostics.Debug.WriteLine(ex.ToString());
            section1 = false;
        }


        cmd.Parameters.Clear();

        string row5 = b2.Text;
        string prev35 = hrs51.Text;
        string prev25 = hrs52.Text;
        string prev15 = hrs53.Text;

        cmd.CommandText = "INSERT INTO api_data_ii(User_ID, Activity, PreviousThird, PreviousSecond, PreviousOne) values (@uid, @b2," +
                       "@hrs51, @hrs52, @hrs53)";

        cmd.Parameters.AddWithValue("@uid", 2000);
        cmd.Parameters.AddWithValue("@b2", row5);
        cmd.Parameters.AddWithValue("@hrs51", prev35);
        cmd.Parameters.AddWithValue("@hrs52", prev25);
        cmd.Parameters.AddWithValue("@hrs53", prev15);

        try
        {
            cmd.ExecuteNonQuery();
            section1 = true;
        }
        catch (MySqlException ex)
        {
            // exception while executing the mysql query
            System.Diagnostics.Debug.WriteLine(ex.ToString());
            section1 = true;
        }


        cmd.Parameters.Clear();

        string row6 = c1.Text;
        string prev36 = hrs61.Text;
        string prev26 = hrs62.Text;
        string prev16 = hrs63.Text;

        cmd.CommandText = "INSERT INTO api_data_ii(User_ID, Activity, PreviousThird, PreviousSecond, PreviousOne) values (@uid, @c1," +
                       "@hrs61, @hrs62, @hrs63)";

        cmd.Parameters.AddWithValue("@uid", 2000);
        cmd.Parameters.AddWithValue("@c1", row6);
        cmd.Parameters.AddWithValue("@hrs61", prev36);
        cmd.Parameters.AddWithValue("@hrs62", prev26);
        cmd.Parameters.AddWithValue("@hrs63", prev16);

        try
        {
            cmd.ExecuteNonQuery();
            section1 = true;
        }
        catch (MySqlException ex)
        {
            // exception while executing the mysql query
            System.Diagnostics.Debug.WriteLine(ex.ToString());
            section1 = false;
        }
        cmd.Parameters.Clear();
        int rowIndexA = 0;
        if (ViewState["CurrentPhdResearchTable"] != null)
        {
            DataTable deg_dt = (DataTable)ViewState["CurrentPhdResearchTable"];
            if (deg_dt.Rows.Count > 0)
            {
                for (int i = 0; i < deg_dt.Rows.Count; i++)
                {
                    string phdPaperTitle = deg_dt.Rows[i]["Col1"].ToString();
                    string phdJournalName = deg_dt.Rows[i]["Col2"].ToString();
                    string phDauthorStatus = deg_dt.Rows[i]["Col3"].ToString();
                    string phdImpactFactor = deg_dt.Rows[i]["Col4"].ToString();
                    string phdPubYear = deg_dt.Rows[i]["Col5"].ToString();
                    string phdVolNo = deg_dt.Rows[i]["Col6"].ToString();
                    
                    cmd.CommandText = "INSERT INTO api_data_iii_a(User_ID, TitleOfPaper, JournalName, StatusAsAuthor, " +
                        "ImpactFactor,Year,VolumeNumber) values (@uid6, @phdPaperTitle, @phdJournalName, @phdAuthorStatus, @phdImpactFactor, " +
                        "@phdYear, @phdVolumeNo)";

                    cmd.Parameters.AddWithValue("@uid6", 2000);
                    cmd.Parameters.AddWithValue("@phdPaperTitle", phdPaperTitle);
                    cmd.Parameters.AddWithValue("@phdJournalName", phdJournalName);
                    cmd.Parameters.AddWithValue("@phdAuthorStatus", phDauthorStatus);
                    cmd.Parameters.AddWithValue("@phdImpactFactor", phdImpactFactor);
                    cmd.Parameters.AddWithValue("@phdYear", phdPubYear);
                    cmd.Parameters.AddWithValue("@phdVolumeNo", phdVolNo);
                    try
                    {
                        cmd.ExecuteNonQuery();
                        section2 = true;
                    }
                    catch (MySqlException ex)
                    {
                        // exception while executing the mysql query
                        System.Diagnostics.Debug.WriteLine(ex.ToString());
                        section2 = false;
                    }


                    cmd.Parameters.Clear();
                    rowIndexA++;
                }
            }
        }

        int rowIndexB = 0;
        if (ViewState["CurrentBookResearchTable"] != null)
        {
            DataTable deg_dt = (DataTable)ViewState["CurrentBookResearchTable"];
            if (deg_dt.Rows.Count > 0)
            {
                for (int i = 0; i < deg_dt.Rows.Count; i++)
                {
                    string bookPubType = deg_dt.Rows[i]["Col1"].ToString();
                    string bookPaperTitle = deg_dt.Rows[i]["Col2"].ToString();
                    string bookIsbnNo = deg_dt.Rows[i]["Col3"].ToString();
                    string bookAuthorStatus = deg_dt.Rows[i]["Col4"].ToString();
                    string bookPubYear = deg_dt.Rows[i]["Col5"].ToString();
                    string bookPubName = deg_dt.Rows[i]["Col6"].ToString();
                    

                    cmd.CommandText = "INSERT INTO api_data_iii_b(User_ID, PublicationType, Title, ISBN_No, " +
                        "StatusAsAuthor,Year,Publisher) values (@uid7, @bPubType, @bPaperTitle, @bIsbnNo, @bAuthorStatus, " +
                        "@bPubYear, @bPubName)";

                    cmd.Parameters.AddWithValue("@uid7", 2000);
                    cmd.Parameters.AddWithValue("@bPubType", bookPubType);
                    cmd.Parameters.AddWithValue("@bPaperTitle", bookPaperTitle);
                    cmd.Parameters.AddWithValue("@bIsbnNo", bookIsbnNo);
                    cmd.Parameters.AddWithValue("@bAuthorStatus", bookAuthorStatus);
                    cmd.Parameters.AddWithValue("@bPubYear", bookPubYear);
                    cmd.Parameters.AddWithValue("@bPubName", bookPubName);
                    try
                    {
                        cmd.ExecuteNonQuery();
                        section3 = true;
                    }
                    catch (MySqlException ex)
                    {
                        // exception while executing the mysql query
                        System.Diagnostics.Debug.WriteLine(ex.ToString());
                        section3 = false;
                    }


                    cmd.Parameters.Clear();
                    rowIndexB++;
                }
            }
        }

        int rowIndexC = 0;
        if (ViewState["CurrentResearchProjectTable"] != null)
        {
            DataTable deg_dt = (DataTable)ViewState["CurrentResearchProjectTable"];
            if (deg_dt.Rows.Count > 0)
            {
                for (int i = 0; i < deg_dt.Rows.Count; i++)
                {
                    string researchProjectType = deg_dt.Rows[i]["Col1"].ToString();
                    string researchProjectTitle = deg_dt.Rows[i]["Col2"].ToString();
                    string researchProjectStatus = deg_dt.Rows[i]["Col3"].ToString();
                    string researchProjectPeriod = deg_dt.Rows[i]["Col4"].ToString();
                    string researchProjectSponsor = deg_dt.Rows[i]["Col5"].ToString();
                    

                    cmd.CommandText = "INSERT INTO api_data_iii_c(User_ID, ProjectType, Title, ParticipationAs, " +
                        "Duration, SponsorsDetail) values (@uid8, @rProjectType, @rProjectTitle, @rProjectStatus, @rProjectPeriod, " +
                        "@rProjectSponsor)";

                    cmd.Parameters.AddWithValue("@uid8", 2000);
                    cmd.Parameters.AddWithValue("@rProjectType", researchProjectType);
                    cmd.Parameters.AddWithValue("@rProjectTitle", researchProjectTitle);
                    cmd.Parameters.AddWithValue("@rProjectStatus", researchProjectStatus);
                    cmd.Parameters.AddWithValue("@rProjectPeriod", researchProjectPeriod);
                    cmd.Parameters.AddWithValue("@rProjectSponsor", researchProjectSponsor);
                    try
                    {
                        cmd.ExecuteNonQuery();
                        section4 = true;
                    }
                    catch (MySqlException ex)
                    {
                        // exception while executing the mysql query
                        System.Diagnostics.Debug.WriteLine(ex.ToString());
                        section4 = false;
                    }


                    cmd.Parameters.Clear();
                    rowIndexC++;
                }
            }
        }

        string DmphilA = mPhilA.Text;
        string DmphilAN = resGuideMphil.Text;

        cmd.CommandText = "INSERT INTO api_data_iii_d(User_ID, GuidanceTo, Number) values (@uid, @mPhilA, @resGuideMphil)";

        cmd.Parameters.AddWithValue("@uid", 2000);
        cmd.Parameters.AddWithValue("@mPhilA", DmphilA);
        cmd.Parameters.AddWithValue("@resGuideMphil", DmphilAN);
        try
        {
            cmd.ExecuteNonQuery();
            section5 = true;
        }
        catch (MySqlException ex)
        {
            // exception while executing the mysql query
            System.Diagnostics.Debug.WriteLine(ex.ToString());
            section5 = false;

        }
        cmd.Parameters.Clear();

        string DphdA = phdA.Text;
        string DphdAN = resGuidePhdAward.Text;
        cmd.CommandText = "INSERT INTO api_data_iii_d(User_ID, GuidanceTo, Number) values (@uid, @phdA, @resGuidePhdAward)";
        cmd.Parameters.AddWithValue("@uid", 2000);
        cmd.Parameters.AddWithValue("@phdA", DphdA);
        cmd.Parameters.AddWithValue("@resGuidePhdAward", DphdAN);
        try
        {
            cmd.ExecuteNonQuery();
            section5 = true;
        }
        catch (MySqlException ex)
        {
            // exception while executing the mysql query
            System.Diagnostics.Debug.WriteLine(ex.ToString());
            section5 = false;

        }
        cmd.Parameters.Clear();
        string DphdS = phdS.Text;
        string DphdSN = resGuidePhdSub.Text;
        cmd.CommandText = "INSERT INTO api_data_iii_d(User_ID, GuidanceTo, Number) values (@uid, @phdA, @resGuidePhdAward)";
        cmd.Parameters.AddWithValue("@uid", 2000);
        cmd.Parameters.AddWithValue("@phdA", DphdS);
        cmd.Parameters.AddWithValue("@resGuidePhdAward", DphdSN);
        try
        {
            cmd.ExecuteNonQuery();
            section5 = true;
        }
        catch (MySqlException ex)
        {
            // exception while executing the mysql query
            System.Diagnostics.Debug.WriteLine(ex.ToString());
            section5 = false;

        }
        cmd.Parameters.Clear();
        int rowIndexE = 0;
        if (ViewState["CurrentFellowshipTable"] != null)
        {
            DataTable deg_dt = (DataTable)ViewState["CurrentFellowshipTable"];
            if (deg_dt.Rows.Count > 0)
            {
                for (int i = 0; i < deg_dt.Rows.Count; i++)
                {
                    string fellowshipType = deg_dt.Rows[i]["Col1"].ToString();
                    string fellowshipTitle = deg_dt.Rows[i]["Col2"].ToString();
                    string fellowshipLevel = deg_dt.Rows[i]["Col3"].ToString();
                    string fellowshipPart = deg_dt.Rows[i]["Col4"].ToString();
                    string fellowshipSponsor = deg_dt.Rows[i]["Col5"].ToString();
                    string fellowshipPeriod = deg_dt.Rows[i]["Col6"].ToString();
                    

                    cmd.CommandText = "INSERT INTO api_data_iii_e(User_ID, Type, Title, Level, " +
                        "ParticipationAs, SponsorsDetail, Duration) values (@uid9, @fType, @fTitle, @fLevel, @fPart, " +
                        "@fSponsor, @fPeriod)";

                    cmd.Parameters.AddWithValue("@uid9", 2000);
                    cmd.Parameters.AddWithValue("@fType", fellowshipType);
                    cmd.Parameters.AddWithValue("@fTitle", fellowshipTitle);
                    cmd.Parameters.AddWithValue("@fLevel", fellowshipLevel);
                    cmd.Parameters.AddWithValue("@fPart", fellowshipPart);
                    cmd.Parameters.AddWithValue("@fSponsor", fellowshipSponsor);
                    cmd.Parameters.AddWithValue("@fPeriod", fellowshipPeriod);
                    try
                    {
                        cmd.ExecuteNonQuery();
                        section6 = true;
                    }
                    catch (MySqlException ex)
                    {
                        // exception while executing the mysql query
                        System.Diagnostics.Debug.WriteLine(ex.ToString());
                        section6 = false;

                    }


                    cmd.Parameters.Clear();
                    rowIndexE++;
                }
            }
        }

        int rowIndexF = 0;
        if (ViewState["CurrentElearnTable"] != null)
        {
            DataTable deg_dt = (DataTable)ViewState["CurrentElearnTable"];
            if (deg_dt.Rows.Count > 0)
            {
                for (int i = 0; i < deg_dt.Rows.Count; i++)
                {
                    string eLearnTitle = deg_dt.Rows[i]["Col1"].ToString();
                    string eLearnDetailAgency = deg_dt.Rows[i]["Col2"].ToString();
                    string eLearnModule = deg_dt.Rows[i]["Col3"].ToString();
                    string eLearnStatus = deg_dt.Rows[i]["Col4"].ToString();
                    string eLearnPeriod = deg_dt.Rows[i]["Col5"].ToString();
                    

                    cmd.CommandText = "INSERT INTO api_data_iii_f(User_ID, TitleOfModule, AgencyDetail, ForWhom, " +
                        "StatusAsAuthor, Duration) values (@uid10, @eTitle, @eDetailAgency, @eModule, @eStatus, " +
                        "@ePeriod)";

                    cmd.Parameters.AddWithValue("@uid10", 2000);
                    cmd.Parameters.AddWithValue("@eTitle", eLearnTitle);
                    cmd.Parameters.AddWithValue("@eDetailAgency", eLearnDetailAgency);
                    cmd.Parameters.AddWithValue("@eModule", eLearnModule);
                    cmd.Parameters.AddWithValue("@eStatus", eLearnStatus);
                    cmd.Parameters.AddWithValue("@ePeriod", eLearnPeriod);
                    try
                    {
                        cmd.ExecuteNonQuery();
                        section7 = true;
                    }
                    catch (MySqlException ex)
                    {
                        // exception while executing the mysql query
                        System.Diagnostics.Debug.WriteLine(ex.ToString());
                        section7 = false;
                    }


                    cmd.Parameters.Clear();
                    rowIndexF++;
                }
            }
        }

        if (section1 && section2 && section3 && section4 && section5 && section6 && section7)
        {
            int user_id = 2000; 
            string insert_com = "update application_status set Research = 1 where User_ID = " + user_id.ToString();
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
        Response.Redirect("OtherDetails.aspx");

    }

    protected void assesment_preview()
    {
        if (!this.IsPostBack)
        {
            using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
            {
                connection.Open();

                string retrieve_command = "Select Activity, PreviousThird, PreviousSecond, PreviousOne from api_data_ii where User_ID = " + 2000;

                using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
                {
                    MySqlDataReader dr = retrieve_details.ExecuteReader();
                    while (dr.Read())
                    {
                        if (row1.Text.Equals(dr.GetString("Activity")))
                        {
                            coaRow1co11.Text = dr.GetString("PreviousThird");
                            coaRow1co12.Text = dr.GetString("PreviousSecond");
                            coaRow1co13.Text = dr.GetString("PreviousThird");
                            coaRow1co11.ReadOnly = true;
                            coaRow1co12.ReadOnly = true;
                            coaRow1co13.ReadOnly = true;
                            continue;
                        } else if (row2.Text.Equals(dr.GetString("Activity")))
                        {
                            coaRow2co11.Text = dr.GetString("PreviousThird");
                            coaRow2co12.Text = dr.GetString("PreviousSecond");
                            coaRow2co13.Text = dr.GetString("PreviousThird");
                            coaRow2co11.ReadOnly = true;
                            coaRow2co12.ReadOnly = true;
                            coaRow2co13.ReadOnly = true;
                            continue;
                        }
                        else if (row3.Text.Equals(dr.GetString("Activity")))
                        {
                            coaRow3co11.Text = dr.GetString("PreviousThird");
                            coaRow3co12.Text = dr.GetString("PreviousSecond");
                            coaRow3co13.Text = dr.GetString("PreviousThird");

                            coaRow3co11.ReadOnly = true;
                            coaRow3co12.ReadOnly = true;
                            coaRow3co13.ReadOnly = true;
                            continue;
                        }
                        else if (row4.Text.Equals(dr.GetString("Activity")))
                        {
                            coaRow4co11.Text = dr.GetString("PreviousThird");
                            coaRow4co12.Text = dr.GetString("PreviousSecond");
                            coaRow4co13.Text = dr.GetString("PreviousThird");

                            coaRow4co11.ReadOnly = true;
                            coaRow4co12.ReadOnly = true;
                            coaRow4co13.ReadOnly = true;
                            continue;
                        }
                        else if (row5.Text.Equals(dr.GetString("Activity")))
                        {
                            coaRow5co11.Text = dr.GetString("PreviousThird");
                            coaRow5co12.Text = dr.GetString("PreviousSecond");
                            coaRow5co13.Text = dr.GetString("PreviousThird");

                            coaRow5co11.ReadOnly = true;
                            coaRow5co12.ReadOnly = true;
                            coaRow5co13.ReadOnly = true;
                            continue;
                        }
                        else if (row6.Text.Split(',')[0].Equals(dr.GetString("Activity").Split(',')[0]))
                        {
                            coaRow6co11.Text = dr.GetString("PreviousThird");
                            coaRow6co12.Text = dr.GetString("PreviousSecond");
                            coaRow6co13.Text = dr.GetString("PreviousThird");

                            coaRow6co11.ReadOnly = true;
                            coaRow6co12.ReadOnly = true;
                            coaRow6co13.ReadOnly = true;
                            continue;
                        }
                    }
                }
            }
        }
    }
    protected void research_papers_preview()
    {
        if (!this.IsPostBack)
        {
            using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
            {
                connection.Open();

                string retrieve_command = "Select TitleOfPaper, JournalName, StatusAsAuthor, ImpactFactor, Year, VolumeNumber from api_data_iii_a where User_ID = " + 2000;

                using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
                {
                    using (MySqlDataAdapter da = new MySqlDataAdapter())
                    {
                        da.SelectCommand = retrieve_details;
                        using (DataTable dt = new DataTable())
                        {
                            da.Fill(dt);
                            researchPapersGrid.DataSource = dt;
                            researchPapersGrid.DataBind();
                        }
                    }
                }
            }
        }

    }

    protected void publication_preview()
    {
        if (!this.IsPostBack)
        {
            using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
            {
                connection.Open();

                string retrieve_command = "Select PublicationType, Title, ISBN_No, StatusAsAuthor, Year, Publisher from api_data_iii_b where User_ID = " + 2000;

                using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
                {
                    using (MySqlDataAdapter da = new MySqlDataAdapter())
                    {
                        da.SelectCommand = retrieve_details;
                        using (DataTable dt = new DataTable())
                        {
                            da.Fill(dt);
                            publicationGrid.DataSource = dt;
                            publicationGrid.DataBind();
                        }
                    }
                }
            }
        }

    }

    protected void guidance_preview()
    {
        if (!this.IsPostBack)
        {
            using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
            {
                connection.Open();

                string retrieve_command = "Select GuidanceTo, Number from api_data_iii_d where User_ID = " + 2000;

                using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
                {
                    MySqlDataReader dr = retrieve_details.ExecuteReader();
                    while (dr.Read())
                    {
                        if (grow1.Text.Equals(dr.GetString("GuidanceTo")))
                        {
                            gtext1.Text = dr.GetString("Number");
                            gtext1.ReadOnly = true;
                            continue;
                        }
                        else if (grow2.Text.Equals(dr.GetString("GuidanceTo")))
                        {
                            gtext2.Text = dr.GetString("Number");
                            gtext2.ReadOnly = true;
                            continue;
                        }
                        else if (grow3.Text.Equals(dr.GetString("GuidanceTo")))
                        {
                            gtext3.Text = dr.GetString("Number");
                            gtext3.ReadOnly = true;
                            continue;
                        }
                    }
                }
            }
        }
    }


    protected void research_project_preview()
    {
        if (!this.IsPostBack)
        {
            using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
            {
                connection.Open();

                string retrieve_command = "Select ProjectType, Title, ParticipationAs, Duration, SponsorsDetail from api_data_iii_c where User_ID = " + 2000;

                using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
                {
                    using (MySqlDataAdapter da = new MySqlDataAdapter())
                    {
                        da.SelectCommand = retrieve_details;
                        using (DataTable dt = new DataTable())
                        {
                            da.Fill(dt);
                            researchProjectGrid.DataSource = dt;
                            researchProjectGrid.DataBind();
                        }
                    }
                }
            }
        }

    }


    protected void fellowship_preview()
    {
        if (!this.IsPostBack)
        {
            using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
            {
                connection.Open();

                string retrieve_command = "Select Type, Title, Level, ParticipationAs, SponsorsDetail,Duration from api_data_iii_e where User_ID = " + 2000;

                using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
                {
                    using (MySqlDataAdapter da = new MySqlDataAdapter())
                    {
                        da.SelectCommand = retrieve_details;
                        using (DataTable dt = new DataTable())
                        {
                            da.Fill(dt);
                            fellowshipGrid.DataSource = dt;
                            fellowshipGrid.DataBind();
                        }
                    }
                }
            }
        }

    }
    protected void econtent_preview()
    {
        if (!this.IsPostBack)
        {
            using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
            {
                connection.Open();

                string retrieve_command = "Select TitleOfModule, AgencyDetail, ForWhom, StatusAsAuthor, Duration from api_data_iii_f where User_ID = " + 2000;

                using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
                {
                    using (MySqlDataAdapter da = new MySqlDataAdapter())
                    {
                        da.SelectCommand = retrieve_details;
                        using (DataTable dt = new DataTable())
                        {
                            da.Fill(dt);
                            econtentGrid.DataSource = dt;
                            econtentGrid.DataBind();
                        }
                    }
                }
            }
        }

    }

    protected void proceed_Click(object sender, EventArgs e)
    {
        Response.Redirect("OtherDetails.aspx");
    }
}