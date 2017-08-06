using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

public partial class Experience : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            FirstGridViewTeachRow();
            FirstGridViewResearchRow();
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
        teach_dr = teach_dt.NewRow();
        teach_dr["RowNumber"] = 1;
        teach_dr["Col1"] = string.Empty;
        teach_dr["Col2"] = string.Empty;
        teach_dr["Col3"] = string.Empty;
        teach_dr["Col4"] = string.Empty;
        teach_dr["Col5"] = string.Empty;
        teach_dr["Col6"] = string.Empty;
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
                    drCurrentRow = dtCurrentTeachTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;

                    dtCurrentTeachTable.Rows[i - 1]["Col1"] = experienceTeachUniversityName.Text;
                    dtCurrentTeachTable.Rows[i - 1]["Col2"] = experienceTeachDesignation.Text;
                    dtCurrentTeachTable.Rows[i - 1]["Col3"] = experienceTeachStatus.Text;
                    dtCurrentTeachTable.Rows[i - 1]["Col4"] = experienceTeachSalary.Text;
                    dtCurrentTeachTable.Rows[i - 1]["Col5"] = experienceTeachFrom.Text;
                    dtCurrentTeachTable.Rows[i - 1]["Col6"] = experienceTeachTo.Text;
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
            Response.Write("ViewState is null");
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
                    // drCurrentRow["RowNumber"] = i + 1;

                    gridFullTeach.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                    experienceTeachUniversityName.Text = teach_dt.Rows[i]["Col1"].ToString();
                    experienceTeachDesignation.Text = teach_dt.Rows[i]["Col2"].ToString();
                    experienceTeachStatus.Text = teach_dt.Rows[i]["Col3"].ToString();
                    experienceTeachSalary.Text = teach_dt.Rows[i]["Col4"].ToString();
                    experienceTeachFrom.Text = teach_dt.Rows[i]["Col5"].ToString();
                    experienceTeachTo.Text = teach_dt.Rows[i]["Col6"].ToString();
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
                    drCurrentRow = dtCurrentTeachTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;
                    dtCurrentTeachTable.Rows[i - 1]["Col1"] = experienceTeachUniversityName.Text;
                    dtCurrentTeachTable.Rows[i - 1]["Col2"] = experienceTeachDesignation.Text;
                    dtCurrentTeachTable.Rows[i - 1]["Col3"] = experienceTeachStatus.Text;
                    dtCurrentTeachTable.Rows[i - 1]["Col4"] = experienceTeachSalary.Text;
                    dtCurrentTeachTable.Rows[i - 1]["Col5"] = experienceTeachFrom.Text;
                    dtCurrentTeachTable.Rows[i - 1]["Col6"] = experienceTeachTo.Text;
                    rowIndex++;
                }

                ViewState["CurrentTeachTable"] = dtCurrentTeachTable;
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

    private void FirstGridViewResearchRow()
    {
        DataTable research_dt = new DataTable();
        DataRow research_dr = null;
        research_dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
        research_dt.Columns.Add(new DataColumn("Col1", typeof(string)));
        research_dt.Columns.Add(new DataColumn("Col2", typeof(string)));
        research_dt.Columns.Add(new DataColumn("Col3", typeof(string)));
        research_dt.Columns.Add(new DataColumn("Col4", typeof(string)));
        research_dt.Columns.Add(new DataColumn("Col5", typeof(string)));
        research_dr = research_dt.NewRow();
        research_dr["RowNumber"] = 1;
        research_dr["Col1"] = string.Empty;
        research_dr["Col2"] = string.Empty;
        research_dr["Col3"] = string.Empty;
        research_dr["Col4"] = string.Empty;
        research_dr["Col5"] = string.Empty;
        research_dt.Rows.Add(research_dr);

        ViewState["CurrentResearchTable"] = research_dt;


        gridFullResearch.DataSource = research_dt;
        gridFullResearch.DataBind();


        TextBox txn = (TextBox)gridFullResearch.Rows[0].Cells[1].FindControl("experienceResearchUniversityName");
        txn.Focus();
        Button btnAdd = (Button)gridFullResearch.FooterRow.Cells[5].FindControl("ButtonAdd");
        Page.Form.DefaultFocus = btnAdd.ClientID;

    }
    private void AddNewRowResearch()
    {
        int rowIndex = 0;

        if (ViewState["CurrentResearchTable"] != null)
        {
            DataTable dtCurrentResearchTable = (DataTable)ViewState["CurrentResearchTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentResearchTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentResearchTable.Rows.Count; i++)
                {
                    TextBox experienceResearchUniversityName = (TextBox)gridFullResearch.Rows[rowIndex].Cells[1].FindControl("experienceResearchUniversityName");
                    TextBox experienceResearchDesignation = (TextBox)gridFullResearch.Rows[rowIndex].Cells[2].FindControl("experienceResearchDesignation");
                    TextBox experienceResearchSalary = (TextBox)gridFullResearch.Rows[rowIndex].Cells[3].FindControl("experienceResearchSalary");
                    TextBox experienceResearchFrom = (TextBox)gridFullResearch.Rows[rowIndex].Cells[4].FindControl("experienceResearchFrom");
                    TextBox experienceResearchTo = (TextBox)gridFullResearch.Rows[rowIndex].Cells[5].FindControl("experienceResearchTo");
                    drCurrentRow = dtCurrentResearchTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;

                    dtCurrentResearchTable.Rows[i - 1]["Col1"] = experienceResearchUniversityName.Text;
                    dtCurrentResearchTable.Rows[i - 1]["Col2"] = experienceResearchDesignation.Text;
                    dtCurrentResearchTable.Rows[i - 1]["Col3"] = experienceResearchSalary.Text;
                    dtCurrentResearchTable.Rows[i - 1]["Col4"] = experienceResearchFrom.Text;
                    dtCurrentResearchTable.Rows[i - 1]["Col5"] = experienceResearchTo.Text;
                    rowIndex++;
                }
                dtCurrentResearchTable.Rows.Add(drCurrentRow);
                ViewState["CurrentResearchTable"] = dtCurrentResearchTable;

                gridFullResearch.DataSource = dtCurrentResearchTable;
                gridFullResearch.DataBind();

                TextBox txn = (TextBox)gridFullResearch.Rows[rowIndex].Cells[1].FindControl("experienceResearchUniversityName");
                txn.Focus();
                // txn.Focus;
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }
        SetPreviousDataResearch();
    }
    private void SetPreviousDataResearch()
    {
        int rowIndex = 0;
        if (ViewState["CurrentResearchTable"] != null)
        {
            DataTable research_dt = (DataTable)ViewState["CurrentResearchTable"];
            if (research_dt.Rows.Count > 0)
            {
                for (int i = 0; i < research_dt.Rows.Count; i++)
                {
                    TextBox experienceResearchUniversityName = (TextBox)gridFullResearch.Rows[rowIndex].Cells[1].FindControl("experienceResearchUniversityName");
                    TextBox experienceResearchDesignation = (TextBox)gridFullResearch.Rows[rowIndex].Cells[2].FindControl("experienceResearchDesignation");
                    TextBox experienceResearchSalary = (TextBox)gridFullResearch.Rows[rowIndex].Cells[3].FindControl("experienceResearchSalary");
                    TextBox experienceResearchFrom = (TextBox)gridFullResearch.Rows[rowIndex].Cells[4].FindControl("experienceResearchFrom");
                    TextBox experienceResearchTo = (TextBox)gridFullResearch.Rows[rowIndex].Cells[5].FindControl("experienceResearchTo");
                    // drCurrentRow["RowNumber"] = i + 1;

                    gridFullResearch.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                    experienceResearchUniversityName.Text = research_dt.Rows[i]["Col1"].ToString();
                    experienceResearchDesignation.Text = research_dt.Rows[i]["Col2"].ToString();
                    experienceResearchSalary.Text = research_dt.Rows[i]["Col3"].ToString();
                    experienceResearchFrom.Text = research_dt.Rows[i]["Col4"].ToString();
                    experienceResearchTo.Text = research_dt.Rows[i]["Col5"].ToString();
                    rowIndex++;
                }
            }
        }
    }
    protected void ButtonAddResearch_Click(object sender, EventArgs e)
    {
        AddNewRowResearch();
    }
    protected void gridFullResearch_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SetRowDataResearch();
        if (ViewState["CurrentResearchTable"] != null)
        {
            DataTable research_dt = (DataTable)ViewState["CurrentResearchTable"];
            DataRow drCurrentRow = null;
            int rowIndex = Convert.ToInt32(e.RowIndex);
            if (research_dt.Rows.Count > 1)
            {
                research_dt.Rows.Remove(research_dt.Rows[rowIndex]);
                drCurrentRow = research_dt.NewRow();
                ViewState["CurrentResearchTable"] = research_dt;
                gridFullResearch.DataSource = research_dt;
                gridFullResearch.DataBind();

                for (int i = 0; i < gridFullResearch.Rows.Count - 1; i++)
                {
                    gridFullResearch.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                }
                SetPreviousDataResearch();
            }
        }
    }

    private void SetRowDataResearch()
    {
        int rowIndex = 0;

        if (ViewState["CurrentResearchTable"] != null)
        {
            DataTable dtCurrentResearchTable = (DataTable)ViewState["CurrentResearchTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentResearchTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentResearchTable.Rows.Count; i++)
                {
                    TextBox experienceResearchUniversityName = (TextBox)gridFullResearch.Rows[rowIndex].Cells[1].FindControl("experienceResearchUniversityName");
                    TextBox experienceResearchDesignation = (TextBox)gridFullResearch.Rows[rowIndex].Cells[2].FindControl("experienceResearchDesignation");
                    TextBox experienceResearchSalary = (TextBox)gridFullResearch.Rows[rowIndex].Cells[3].FindControl("experienceResearchSalary");
                    TextBox experienceResearchFrom = (TextBox)gridFullResearch.Rows[rowIndex].Cells[4].FindControl("experienceResearchFrom");
                    TextBox experienceResearchTo = (TextBox)gridFullResearch.Rows[rowIndex].Cells[5].FindControl("experienceResearchTo");
                    drCurrentRow = dtCurrentResearchTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;
                    dtCurrentResearchTable.Rows[i - 1]["Col1"] = experienceResearchUniversityName.Text;
                    dtCurrentResearchTable.Rows[i - 1]["Col2"] = experienceResearchDesignation.Text;
                    dtCurrentResearchTable.Rows[i - 1]["Col3"] = experienceResearchSalary.Text;
                    dtCurrentResearchTable.Rows[i - 1]["Col4"] = experienceResearchFrom.Text;
                    dtCurrentResearchTable.Rows[i - 1]["Col5"] = experienceResearchTo.Text;
                    rowIndex++;
                }

                ViewState["CurrentResearchTable"] = dtCurrentResearchTable;
                //gridFullResearch.DataSource = dtCurrentResearchTable;
                //gridFullResearch.DataBind();
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }
        //SetPreviousDataResearch();
    }

    protected void experienceEmployed_CheckedChanged(object sender, EventArgs e)
    {
        if (experienceEmployed_checkBox.Checked)
        {
            experienceEmployed_details.Visible = false;
        }
        else
        {
            experienceEmployed_details.Visible = true;
        }
    }
}