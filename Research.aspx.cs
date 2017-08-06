using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Research : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            FirstGridViewPhdResearchRow();
            FirstGridViewOtherResearchRow();
            FirstGridViewBookResearchRow();
            FirstGridViewOtherJournalResearchRow();
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
        phd_dt.Columns.Add(new DataColumn("Col7", typeof(string)));
        phd_dt.Columns.Add(new DataColumn("Col8", typeof(string)));
        phd_dt.Columns.Add(new DataColumn("Col9", typeof(string)));
        phd_dt.Columns.Add(new DataColumn("Col10", typeof(string)));
        phd_dt.Columns.Add(new DataColumn("Col11", typeof(string)));
        phd_dr = phd_dt.NewRow();
        phd_dr["RowNumber"] = 1;
        phd_dr["Col1"] = string.Empty;
        phd_dr["Col2"] = string.Empty;
        phd_dr["Col3"] = string.Empty;
        phd_dr["Col4"] = string.Empty;
        phd_dr["Col5"] = string.Empty;
        phd_dr["Col6"] = string.Empty;
        phd_dr["Col7"] = string.Empty;
        phd_dr["Col8"] = string.Empty;
        phd_dr["Col9"] = string.Empty;
        phd_dr["Col10"] = string.Empty;
        phd_dr["Col11"] = string.Empty;
        phd_dt.Rows.Add(phd_dr);

        ViewState["CurrentPhdResearchTable"] = phd_dt;


        gridResearchPhd.DataSource = phd_dt;
        gridResearchPhd.DataBind();


        TextBox txn = (TextBox)gridResearchPhd.Rows[0].Cells[1].FindControl("phdPubType");
        txn.Focus();
        Button btnAdd = (Button)gridResearchPhd.FooterRow.Cells[5].FindControl("ButtonAdd");
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
                    TextBox phdPubType = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[1].FindControl("phdPubType");
                    TextBox phdPaperTitle = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[2].FindControl("phdPaperTitle");
                    TextBox phdJournalName = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[3].FindControl("phdJournalName");
                    TextBox phdImpactFactor = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[4].FindControl("phdImpactFactor");
                    DropDownList phdPubYear = (DropDownList)gridResearchPhd.Rows[rowIndex].Cells[5].FindControl("phdPubYear");
                    TextBox phdVolNo = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[6].FindControl("phdVolNo");
                    TextBox phdPageNo = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[7].FindControl("phdPageNo");
                    TextBox phdIsbnNo = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[8].FindControl("phdIsbnNo");
                    DropDownList phdRefreed = (DropDownList)gridResearchPhd.Rows[rowIndex].Cells[9].FindControl("phdRefreed");
                    TextBox phdReferenceNo = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[10].FindControl("phdReferenceNo");
                    TextBox phdAuthor = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[11].FindControl("phdAuthor");
                    drCurrentRow = dtCurrentPhdResearchTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;

                    dtCurrentPhdResearchTable.Rows[i - 1]["Col1"] = phdPubType.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col2"] = phdPaperTitle.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col3"] = phdJournalName.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col4"] = phdImpactFactor.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col5"] = phdPubYear.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col6"] = phdVolNo.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col7"] = phdPageNo.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col8"] = phdIsbnNo.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col9"] = phdRefreed.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col10"] = phdReferenceNo.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col11"] = phdAuthor.Text;
                    rowIndex++;
                }
                dtCurrentPhdResearchTable.Rows.Add(drCurrentRow);
                ViewState["CurrentPhdResearchTable"] = dtCurrentPhdResearchTable;

                gridResearchPhd.DataSource = dtCurrentPhdResearchTable;
                gridResearchPhd.DataBind();

                TextBox txn = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[1].FindControl("phdPubType");
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
                    TextBox phdPubType = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[1].FindControl("phdPubType");
                    TextBox phdPaperTitle = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[2].FindControl("phdPaperTitle");
                    TextBox phdJournalName = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[3].FindControl("phdJournalName");
                    TextBox phdImpactFactor = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[4].FindControl("phdImpactFactor");
                    DropDownList phdPubYear = (DropDownList)gridResearchPhd.Rows[rowIndex].Cells[5].FindControl("phdPubYear");
                    TextBox phdVolNo = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[6].FindControl("phdVolNo");
                    TextBox phdPageNo = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[7].FindControl("phdPageNo");
                    TextBox phdIsbnNo = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[8].FindControl("phdIsbnNo");
                    DropDownList phdRefreed = (DropDownList)gridResearchPhd.Rows[rowIndex].Cells[9].FindControl("phdRefreed");
                    TextBox phdReferenceNo = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[10].FindControl("phdReferenceNo");
                    TextBox phdAuthor = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[11].FindControl("phdAuthor");
                    // drCurrentRow["RowNumber"] = i + 1;

                    gridResearchPhd.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                    phdPubType.Text = phd_dt.Rows[i]["Col1"].ToString();
                    phdPaperTitle.Text = phd_dt.Rows[i]["Col2"].ToString();
                    phdJournalName.Text = phd_dt.Rows[i]["Col3"].ToString();
                    phdImpactFactor.Text = phd_dt.Rows[i]["Col4"].ToString();
                    phdPubYear.Text = phd_dt.Rows[i]["Col5"].ToString();
                    phdVolNo.Text = phd_dt.Rows[i]["Col6"].ToString();
                    phdPageNo.Text = phd_dt.Rows[i]["Col7"].ToString();
                    phdIsbnNo.Text = phd_dt.Rows[i]["Col8"].ToString();
                    phdRefreed.Text = phd_dt.Rows[i]["Col9"].ToString();
                    phdReferenceNo.Text = phd_dt.Rows[i]["Col10"].ToString();
                    phdAuthor.Text = phd_dt.Rows[i]["Col11"].ToString();
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
        int rowIndex = 0;

        if (ViewState["CurrentPhdResearchTable"] != null)
        {
            DataTable dtCurrentPhdResearchTable = (DataTable)ViewState["CurrentPhdResearchTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentPhdResearchTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentPhdResearchTable.Rows.Count; i++)
                {
                    TextBox phdPubType = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[1].FindControl("phdPubType");
                    TextBox phdPaperTitle = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[2].FindControl("phdPaperTitle");
                    TextBox phdJournalName = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[3].FindControl("phdJournalName");
                    TextBox phdImpactFactor = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[4].FindControl("phdImpactFactor");
                    DropDownList phdPubYear = (DropDownList)gridResearchPhd.Rows[rowIndex].Cells[5].FindControl("phdPubYear");
                    TextBox phdVolNo = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[6].FindControl("phdVolNo");
                    TextBox phdPageNo = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[7].FindControl("phdPageNo");
                    TextBox phdIsbnNo = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[8].FindControl("phdIsbnNo");
                    DropDownList phdRefreed = (DropDownList)gridResearchPhd.Rows[rowIndex].Cells[9].FindControl("phdRefreed");
                    TextBox phdReferenceNo = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[10].FindControl("phdReferenceNo");
                    TextBox phdAuthor = (TextBox)gridResearchPhd.Rows[rowIndex].Cells[11].FindControl("phdAuthor");

                    drCurrentRow = dtCurrentPhdResearchTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col1"] = phdPubType.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col2"] = phdPaperTitle.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col3"] = phdJournalName.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col4"] = phdImpactFactor.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col5"] = phdPubYear.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col6"] = phdVolNo.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col7"] = phdPageNo.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col8"] = phdIsbnNo.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col9"] = phdRefreed.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col10"] = phdReferenceNo.Text;
                    dtCurrentPhdResearchTable.Rows[i - 1]["Col11"] = phdAuthor.Text;
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

    private void FirstGridViewOtherResearchRow()
    {
        DataTable other_dt = new DataTable();
        DataRow other_dr = null;
        other_dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
        other_dt.Columns.Add(new DataColumn("Col1", typeof(string)));
        other_dt.Columns.Add(new DataColumn("Col2", typeof(string)));
        other_dt.Columns.Add(new DataColumn("Col3", typeof(string)));
        other_dt.Columns.Add(new DataColumn("Col4", typeof(string)));
        other_dt.Columns.Add(new DataColumn("Col5", typeof(string)));
        other_dt.Columns.Add(new DataColumn("Col6", typeof(string)));
        other_dt.Columns.Add(new DataColumn("Col7", typeof(string)));
        other_dt.Columns.Add(new DataColumn("Col8", typeof(string)));
        other_dt.Columns.Add(new DataColumn("Col9", typeof(string)));
        other_dt.Columns.Add(new DataColumn("Col10", typeof(string)));
        other_dt.Columns.Add(new DataColumn("Col11", typeof(string)));
        other_dr = other_dt.NewRow();
        other_dr["RowNumber"] = 1;
        other_dr["Col1"] = string.Empty;
        other_dr["Col2"] = string.Empty;
        other_dr["Col3"] = string.Empty;
        other_dr["Col4"] = string.Empty;
        other_dr["Col5"] = string.Empty;
        other_dr["Col6"] = string.Empty;
        other_dr["Col7"] = string.Empty;
        other_dr["Col8"] = string.Empty;
        other_dr["Col9"] = string.Empty;
        other_dr["Col10"] = string.Empty;
        other_dr["Col11"] = string.Empty;
        other_dt.Rows.Add(other_dr);

        ViewState["CurrentOtherResearchTable"] = other_dt;


        gridResearchOther.DataSource = other_dt;
        gridResearchOther.DataBind();


        TextBox txn = (TextBox)gridResearchOther.Rows[0].Cells[1].FindControl("otherPubType");
        txn.Focus();
        Button btnAdd = (Button)gridResearchOther.FooterRow.Cells[5].FindControl("ButtonAdd");
        Page.Form.DefaultFocus = btnAdd.ClientID;

    }

    private void AddNewRowOtherResearch()
    {
        int rowIndex = 0;

        if (ViewState["CurrentOtherResearchTable"] != null)
        {
            DataTable dtCurrentOtherResearchTable = (DataTable)ViewState["CurrentOtherResearchTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentOtherResearchTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentOtherResearchTable.Rows.Count; i++)
                {
                    TextBox otherPubType = (TextBox)gridResearchOther.Rows[rowIndex].Cells[1].FindControl("otherPubType");
                    TextBox otherPaperTitle = (TextBox)gridResearchOther.Rows[rowIndex].Cells[2].FindControl("otherPaperTitle");
                    TextBox otherJournalName = (TextBox)gridResearchOther.Rows[rowIndex].Cells[3].FindControl("otherJournalName");
                    TextBox otherImpactFactor = (TextBox)gridResearchOther.Rows[rowIndex].Cells[4].FindControl("otherImpactFactor");
                    DropDownList otherPubYear = (DropDownList)gridResearchOther.Rows[rowIndex].Cells[5].FindControl("otherPubYear");
                    TextBox otherVolNo = (TextBox)gridResearchOther.Rows[rowIndex].Cells[6].FindControl("otherVolNo");
                    TextBox otherPageNo = (TextBox)gridResearchOther.Rows[rowIndex].Cells[7].FindControl("otherPageNo");
                    TextBox otherIsbnNo = (TextBox)gridResearchOther.Rows[rowIndex].Cells[8].FindControl("otherIsbnNo");
                    DropDownList otherRefreed = (DropDownList)gridResearchOther.Rows[rowIndex].Cells[9].FindControl("otherRefreed");
                    TextBox otherReferenceNo = (TextBox)gridResearchOther.Rows[rowIndex].Cells[10].FindControl("otherReferenceNo");
                    TextBox otherAuthor = (TextBox)gridResearchOther.Rows[rowIndex].Cells[11].FindControl("otherAuthor");
                    drCurrentRow = dtCurrentOtherResearchTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;

                    dtCurrentOtherResearchTable.Rows[i - 1]["Col1"] = otherPubType.Text;
                    dtCurrentOtherResearchTable.Rows[i - 1]["Col2"] = otherPaperTitle.Text;
                    dtCurrentOtherResearchTable.Rows[i - 1]["Col3"] = otherJournalName.Text;
                    dtCurrentOtherResearchTable.Rows[i - 1]["Col4"] = otherImpactFactor.Text;
                    dtCurrentOtherResearchTable.Rows[i - 1]["Col5"] = otherPubYear.Text;
                    dtCurrentOtherResearchTable.Rows[i - 1]["Col6"] = otherVolNo.Text;
                    dtCurrentOtherResearchTable.Rows[i - 1]["Col7"] = otherPageNo.Text;
                    dtCurrentOtherResearchTable.Rows[i - 1]["Col8"] = otherIsbnNo.Text;
                    dtCurrentOtherResearchTable.Rows[i - 1]["Col9"] = otherRefreed.Text;
                    dtCurrentOtherResearchTable.Rows[i - 1]["Col10"] = otherReferenceNo.Text;
                    dtCurrentOtherResearchTable.Rows[i - 1]["Col11"] = otherAuthor.Text;
                    rowIndex++;
                }
                dtCurrentOtherResearchTable.Rows.Add(drCurrentRow);
                ViewState["CurrentOtherResearchTable"] = dtCurrentOtherResearchTable;

                gridResearchOther.DataSource = dtCurrentOtherResearchTable;
                gridResearchOther.DataBind();

                TextBox txn = (TextBox)gridResearchOther.Rows[rowIndex].Cells[1].FindControl("otherPubType");
                txn.Focus();
                // txn.Focus;
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }
        SetPreviousDataOtherResearch();
    }
    private void SetPreviousDataOtherResearch()
    {
        int rowIndex = 0;
        if (ViewState["CurrentOtherResearchTable"] != null)
        {
            DataTable other_dt = (DataTable)ViewState["CurrentOtherResearchTable"];
            if (other_dt.Rows.Count > 0)
            {
                for (int i = 0; i < other_dt.Rows.Count; i++)
                {
                    TextBox otherPubType = (TextBox)gridResearchOther.Rows[rowIndex].Cells[1].FindControl("otherPubType");
                    TextBox otherPaperTitle = (TextBox)gridResearchOther.Rows[rowIndex].Cells[2].FindControl("otherPaperTitle");
                    TextBox otherJournalName = (TextBox)gridResearchOther.Rows[rowIndex].Cells[3].FindControl("otherJournalName");
                    TextBox otherImpactFactor = (TextBox)gridResearchOther.Rows[rowIndex].Cells[4].FindControl("otherImpactFactor");
                    DropDownList otherPubYear = (DropDownList)gridResearchOther.Rows[rowIndex].Cells[5].FindControl("otherPubYear");
                    TextBox otherVolNo = (TextBox)gridResearchOther.Rows[rowIndex].Cells[6].FindControl("otherVolNo");
                    TextBox otherPageNo = (TextBox)gridResearchOther.Rows[rowIndex].Cells[7].FindControl("otherPageNo");
                    TextBox otherIsbnNo = (TextBox)gridResearchOther.Rows[rowIndex].Cells[8].FindControl("otherIsbnNo");
                    DropDownList otherRefreed = (DropDownList)gridResearchOther.Rows[rowIndex].Cells[9].FindControl("otherRefreed");
                    TextBox otherReferenceNo = (TextBox)gridResearchOther.Rows[rowIndex].Cells[10].FindControl("otherReferenceNo");
                    TextBox otherAuthor = (TextBox)gridResearchOther.Rows[rowIndex].Cells[11].FindControl("otherAuthor");
                    // drCurrentRow["RowNumber"] = i + 1;

                    gridResearchOther.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                    otherPubType.Text = other_dt.Rows[i]["Col1"].ToString();
                    otherPaperTitle.Text = other_dt.Rows[i]["Col2"].ToString();
                    otherJournalName.Text = other_dt.Rows[i]["Col3"].ToString();
                    otherImpactFactor.Text = other_dt.Rows[i]["Col4"].ToString();
                    otherPubYear.Text = other_dt.Rows[i]["Col5"].ToString();
                    otherVolNo.Text = other_dt.Rows[i]["Col6"].ToString();
                    otherPageNo.Text = other_dt.Rows[i]["Col7"].ToString();
                    otherIsbnNo.Text = other_dt.Rows[i]["Col8"].ToString();
                    otherRefreed.Text = other_dt.Rows[i]["Col9"].ToString();
                    otherReferenceNo.Text = other_dt.Rows[i]["Col10"].ToString();
                    otherAuthor.Text = other_dt.Rows[i]["Col11"].ToString();
                    rowIndex++;
                }
            }
        }
    }
    protected void ButtonAddotherResearch_Click(object sender, EventArgs e)
    {
        AddNewRowOtherResearch();
    }
    protected void gridResearchOther_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SetRowDataOtherResearch();
        if (ViewState["CurrentOtherResearchTable"] != null)
        {
            DataTable other_dt = (DataTable)ViewState["CurrentOtherResearchTable"];
            DataRow drCurrentRow = null;
            int rowIndex = Convert.ToInt32(e.RowIndex);
            if (other_dt.Rows.Count > 1)
            {
                other_dt.Rows.Remove(other_dt.Rows[rowIndex]);
                drCurrentRow = other_dt.NewRow();
                ViewState["CurrentOtherResearchTable"] = other_dt;
                gridResearchOther.DataSource = other_dt;
                gridResearchOther.DataBind();

                for (int i = 0; i < gridResearchOther.Rows.Count - 1; i++)
                {
                    gridResearchOther.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                }
                SetPreviousDataOtherResearch();
            }
        }
    }

    private void SetRowDataOtherResearch()
    {
        int rowIndex = 0;

        if (ViewState["CurrentOtherResearchTable"] != null)
        {
            DataTable dtCurrentOtherResearchTable = (DataTable)ViewState["CurrentOtherResearchTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentOtherResearchTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentOtherResearchTable.Rows.Count; i++)
                {
                    TextBox otherPubType = (TextBox)gridResearchOther.Rows[rowIndex].Cells[1].FindControl("otherPubType");
                    TextBox otherPaperTitle = (TextBox)gridResearchOther.Rows[rowIndex].Cells[2].FindControl("otherPaperTitle");
                    TextBox otherJournalName = (TextBox)gridResearchOther.Rows[rowIndex].Cells[3].FindControl("otherJournalName");
                    TextBox otherImpactFactor = (TextBox)gridResearchOther.Rows[rowIndex].Cells[4].FindControl("otherImpactFactor");
                    DropDownList otherPubYear = (DropDownList)gridResearchOther.Rows[rowIndex].Cells[5].FindControl("otherPubYear");
                    TextBox otherVolNo = (TextBox)gridResearchOther.Rows[rowIndex].Cells[6].FindControl("otherVolNo");
                    TextBox otherPageNo = (TextBox)gridResearchOther.Rows[rowIndex].Cells[7].FindControl("otherPageNo");
                    TextBox otherIsbnNo = (TextBox)gridResearchOther.Rows[rowIndex].Cells[8].FindControl("otherIsbnNo");
                    DropDownList otherRefreed = (DropDownList)gridResearchOther.Rows[rowIndex].Cells[9].FindControl("otherRefreed");
                    TextBox otherReferenceNo = (TextBox)gridResearchOther.Rows[rowIndex].Cells[10].FindControl("otherReferenceNo");
                    TextBox otherAuthor = (TextBox)gridResearchOther.Rows[rowIndex].Cells[11].FindControl("otherAuthor");

                    drCurrentRow = dtCurrentOtherResearchTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;
                    dtCurrentOtherResearchTable.Rows[i - 1]["Col1"] = otherPubType.Text;
                    dtCurrentOtherResearchTable.Rows[i - 1]["Col2"] = otherPaperTitle.Text;
                    dtCurrentOtherResearchTable.Rows[i - 1]["Col3"] = otherJournalName.Text;
                    dtCurrentOtherResearchTable.Rows[i - 1]["Col4"] = otherImpactFactor.Text;
                    dtCurrentOtherResearchTable.Rows[i - 1]["Col5"] = otherPubYear.Text;
                    dtCurrentOtherResearchTable.Rows[i - 1]["Col6"] = otherVolNo.Text;
                    dtCurrentOtherResearchTable.Rows[i - 1]["Col7"] = otherPageNo.Text;
                    dtCurrentOtherResearchTable.Rows[i - 1]["Col8"] = otherIsbnNo.Text;
                    dtCurrentOtherResearchTable.Rows[i - 1]["Col9"] = otherRefreed.Text;
                    dtCurrentOtherResearchTable.Rows[i - 1]["Col10"] = otherReferenceNo.Text;
                    dtCurrentOtherResearchTable.Rows[i - 1]["Col11"] = otherAuthor.Text;
                    rowIndex++;
                }

                ViewState["CurrentOtherResearchTable"] = dtCurrentOtherResearchTable;
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
        book_dt.Columns.Add(new DataColumn("Col7", typeof(string)));
        book_dt.Columns.Add(new DataColumn("Col8", typeof(string)));
        book_dr = book_dt.NewRow();
        book_dr["RowNumber"] = 1;
        book_dr["Col1"] = string.Empty;
        book_dr["Col2"] = string.Empty;
        book_dr["Col3"] = string.Empty;
        book_dr["Col4"] = string.Empty;
        book_dr["Col5"] = string.Empty;
        book_dr["Col6"] = string.Empty;
        book_dr["Col7"] = string.Empty;
        book_dr["Col8"] = string.Empty;
        book_dt.Rows.Add(book_dr);

        ViewState["CurrentBookResearchTable"] = book_dt;


        gridResearchBook.DataSource = book_dt;
        gridResearchBook.DataBind();


        DropDownList txn = (DropDownList)gridResearchBook.Rows[0].Cells[1].FindControl("bookPubType");
        txn.Focus();
        Button btnAdd = (Button)gridResearchBook.FooterRow.Cells[5].FindControl("ButtonAdd");
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
                    TextBox bookImpactFactor = (TextBox)gridResearchBook.Rows[rowIndex].Cells[3].FindControl("bookImpactFactor");
                    TextBox bookIsbnNo = (TextBox)gridResearchBook.Rows[rowIndex].Cells[4].FindControl("bookIsbnNo");
                    TextBox bookAuthor = (TextBox)gridResearchBook.Rows[rowIndex].Cells[5].FindControl("bookAuthor");
                    TextBox bookPubName = (TextBox)gridResearchBook.Rows[rowIndex].Cells[6].FindControl("bookPubName");
                    DropDownList bookPubYear = (DropDownList)gridResearchBook.Rows[rowIndex].Cells[7].FindControl("bookPubYear");
                    DropDownList bookLevel = (DropDownList)gridResearchBook.Rows[rowIndex].Cells[8].FindControl("bookLevel");
                    drCurrentRow = dtCurrentBookResearchTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;

                    dtCurrentBookResearchTable.Rows[i - 1]["Col1"] = bookPubType.Text;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col2"] = bookPaperTitle.Text;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col3"] = bookImpactFactor.Text;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col4"] = bookIsbnNo.Text;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col5"] = bookAuthor.Text;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col6"] = bookPubName.Text;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col7"] = bookPubYear.Text;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col8"] = bookLevel.Text;
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
                    TextBox bookImpactFactor = (TextBox)gridResearchBook.Rows[rowIndex].Cells[3].FindControl("bookImpactFactor");
                    TextBox bookIsbnNo = (TextBox)gridResearchBook.Rows[rowIndex].Cells[4].FindControl("bookIsbnNo");
                    TextBox bookAuthor = (TextBox)gridResearchBook.Rows[rowIndex].Cells[5].FindControl("bookAuthor");
                    TextBox bookPubName = (TextBox)gridResearchBook.Rows[rowIndex].Cells[6].FindControl("bookPubName");
                    DropDownList bookPubYear = (DropDownList)gridResearchBook.Rows[rowIndex].Cells[7].FindControl("bookPubYear");
                    DropDownList bookLevel = (DropDownList)gridResearchBook.Rows[rowIndex].Cells[8].FindControl("bookLevel");
                    // drCurrentRow["RowNumber"] = i + 1;

                    gridResearchBook.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                    bookPubType.Text = book_dt.Rows[i]["Col1"].ToString();
                    bookPaperTitle.Text = book_dt.Rows[i]["Col2"].ToString();
                    bookImpactFactor.Text = book_dt.Rows[i]["Col3"].ToString();
                    bookIsbnNo.Text = book_dt.Rows[i]["Col4"].ToString();
                    bookAuthor.Text = book_dt.Rows[i]["Col5"].ToString();
                    bookPubName.Text = book_dt.Rows[i]["Col6"].ToString();
                    bookPubYear.Text = book_dt.Rows[i]["Col7"].ToString();
                    bookLevel.Text = book_dt.Rows[i]["Col8"].ToString();
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
                    TextBox bookImpactFactor = (TextBox)gridResearchBook.Rows[rowIndex].Cells[3].FindControl("bookImpactFactor");
                    TextBox bookIsbnNo = (TextBox)gridResearchBook.Rows[rowIndex].Cells[4].FindControl("bookIsbnNo");
                    TextBox bookAuthor = (TextBox)gridResearchBook.Rows[rowIndex].Cells[5].FindControl("bookAuthor");
                    TextBox bookPubName = (TextBox)gridResearchBook.Rows[rowIndex].Cells[6].FindControl("bookPubName");
                    DropDownList bookPubYear = (DropDownList)gridResearchBook.Rows[rowIndex].Cells[7].FindControl("bookPubYear");
                    DropDownList bookLevel = (DropDownList)gridResearchBook.Rows[rowIndex].Cells[8].FindControl("bookLevel");

                    drCurrentRow = dtCurrentBookResearchTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col1"] = bookPubType.Text;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col2"] = bookPaperTitle.Text;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col3"] = bookImpactFactor.Text;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col4"] = bookIsbnNo.Text;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col5"] = bookAuthor.Text;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col6"] = bookPubName.Text;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col7"] = bookPubYear.Text;
                    dtCurrentBookResearchTable.Rows[i - 1]["Col8"] = bookLevel.Text;
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


    private void FirstGridViewOtherJournalResearchRow()
    {
        DataTable otherJournal_dt = new DataTable();
        DataRow otherJournal_dr = null;
        otherJournal_dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
        otherJournal_dt.Columns.Add(new DataColumn("Col1", typeof(string)));
        otherJournal_dt.Columns.Add(new DataColumn("Col2", typeof(string)));
        otherJournal_dt.Columns.Add(new DataColumn("Col3", typeof(string)));
        otherJournal_dt.Columns.Add(new DataColumn("Col4", typeof(string)));
        otherJournal_dt.Columns.Add(new DataColumn("Col5", typeof(string)));
        otherJournal_dt.Columns.Add(new DataColumn("Col6", typeof(string)));
        otherJournal_dt.Columns.Add(new DataColumn("Col7", typeof(string)));
        otherJournal_dt.Columns.Add(new DataColumn("Col8", typeof(string)));
        otherJournal_dr = otherJournal_dt.NewRow();
        otherJournal_dr["RowNumber"] = 1;
        otherJournal_dr["Col1"] = string.Empty;
        otherJournal_dr["Col2"] = string.Empty;
        otherJournal_dr["Col3"] = string.Empty;
        otherJournal_dr["Col4"] = string.Empty;
        otherJournal_dr["Col5"] = string.Empty;
        otherJournal_dr["Col6"] = string.Empty;
        otherJournal_dr["Col7"] = string.Empty;
        otherJournal_dr["Col8"] = string.Empty;
        otherJournal_dt.Rows.Add(otherJournal_dr);

        ViewState["CurrentOtherJournalResearchTable"] = otherJournal_dt;


        gridResearchOtherJournal.DataSource = otherJournal_dt;
        gridResearchOtherJournal.DataBind();


        DropDownList txn = (DropDownList)gridResearchOtherJournal.Rows[0].Cells[1].FindControl("otherJournalPubType");
        txn.Focus();
        Button btnAdd = (Button)gridResearchOtherJournal.FooterRow.Cells[5].FindControl("ButtonAdd");
        Page.Form.DefaultFocus = btnAdd.ClientID;

    }

    private void AddNewRowOtherJournalResearch()
    {
        int rowIndex = 0;

        if (ViewState["CurrentOtherJournalResearchTable"] != null)
        {
            DataTable dtCurrentOtherJournalResearchTable = (DataTable)ViewState["CurrentOtherJournalResearchTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentOtherJournalResearchTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentOtherJournalResearchTable.Rows.Count; i++)
                {
                    DropDownList otherJournalPubType = (DropDownList)gridResearchOtherJournal.Rows[rowIndex].Cells[1].FindControl("otherJournalPubType");
                    TextBox otherJournalPaperTitle = (TextBox)gridResearchOtherJournal.Rows[rowIndex].Cells[2].FindControl("otherJournalPaperTitle");
                    TextBox otherJournalImpactFactor = (TextBox)gridResearchOtherJournal.Rows[rowIndex].Cells[3].FindControl("otherJournalImpactFactor");
                    TextBox otherJournalIsbnNo = (TextBox)gridResearchOtherJournal.Rows[rowIndex].Cells[4].FindControl("otherJournalIsbnNo");
                    TextBox otherJournalAuthor = (TextBox)gridResearchOtherJournal.Rows[rowIndex].Cells[5].FindControl("otherJournalAuthor");
                    TextBox otherJournalPubName = (TextBox)gridResearchOtherJournal.Rows[rowIndex].Cells[6].FindControl("otherJournalPubName");
                    DropDownList otherJournalPubYear = (DropDownList)gridResearchOtherJournal.Rows[rowIndex].Cells[7].FindControl("otherJournalPubYear");
                    DropDownList otherJournalLevel = (DropDownList)gridResearchOtherJournal.Rows[rowIndex].Cells[8].FindControl("otherJournalLevel");
                    drCurrentRow = dtCurrentOtherJournalResearchTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;

                    dtCurrentOtherJournalResearchTable.Rows[i - 1]["Col1"] = otherJournalPubType.Text;
                    dtCurrentOtherJournalResearchTable.Rows[i - 1]["Col2"] = otherJournalPaperTitle.Text;
                    dtCurrentOtherJournalResearchTable.Rows[i - 1]["Col3"] = otherJournalImpactFactor.Text;
                    dtCurrentOtherJournalResearchTable.Rows[i - 1]["Col4"] = otherJournalIsbnNo.Text;
                    dtCurrentOtherJournalResearchTable.Rows[i - 1]["Col5"] = otherJournalAuthor.Text;
                    dtCurrentOtherJournalResearchTable.Rows[i - 1]["Col6"] = otherJournalPubName.Text;
                    dtCurrentOtherJournalResearchTable.Rows[i - 1]["Col7"] = otherJournalPubYear.Text;
                    dtCurrentOtherJournalResearchTable.Rows[i - 1]["Col8"] = otherJournalLevel.Text;
                    rowIndex++;
                }
                dtCurrentOtherJournalResearchTable.Rows.Add(drCurrentRow);
                ViewState["CurrentOtherJournalResearchTable"] = dtCurrentOtherJournalResearchTable;

                gridResearchOtherJournal.DataSource = dtCurrentOtherJournalResearchTable;
                gridResearchOtherJournal.DataBind();

                DropDownList txn = (DropDownList)gridResearchOtherJournal.Rows[rowIndex].Cells[1].FindControl("otherJournalPubType");
                txn.Focus();
                // txn.Focus;
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }
        SetPreviousDataOtherJournalResearch();
    }
    private void SetPreviousDataOtherJournalResearch()
    {
        int rowIndex = 0;
        if (ViewState["CurrentOtherJournalResearchTable"] != null)
        {
            DataTable otherJournal_dt = (DataTable)ViewState["CurrentOtherJournalResearchTable"];
            if (otherJournal_dt.Rows.Count > 0)
            {
                for (int i = 0; i < otherJournal_dt.Rows.Count; i++)
                {
                    DropDownList otherJournalPubType = (DropDownList)gridResearchOtherJournal.Rows[rowIndex].Cells[1].FindControl("otherJournalPubType");
                    TextBox otherJournalPaperTitle = (TextBox)gridResearchOtherJournal.Rows[rowIndex].Cells[2].FindControl("otherJournalPaperTitle");
                    TextBox otherJournalImpactFactor = (TextBox)gridResearchOtherJournal.Rows[rowIndex].Cells[3].FindControl("otherJournalImpactFactor");
                    TextBox otherJournalIsbnNo = (TextBox)gridResearchOtherJournal.Rows[rowIndex].Cells[4].FindControl("otherJournalIsbnNo");
                    TextBox otherJournalAuthor = (TextBox)gridResearchOtherJournal.Rows[rowIndex].Cells[5].FindControl("otherJournalAuthor");
                    TextBox otherJournalPubName = (TextBox)gridResearchOtherJournal.Rows[rowIndex].Cells[6].FindControl("otherJournalPubName");
                    DropDownList otherJournalPubYear = (DropDownList)gridResearchOtherJournal.Rows[rowIndex].Cells[7].FindControl("otherJournalPubYear");
                    DropDownList otherJournalLevel = (DropDownList)gridResearchOtherJournal.Rows[rowIndex].Cells[8].FindControl("otherJournalLevel");
                    // drCurrentRow["RowNumber"] = i + 1;

                    gridResearchOtherJournal.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                    otherJournalPubType.Text = otherJournal_dt.Rows[i]["Col1"].ToString();
                    otherJournalPaperTitle.Text = otherJournal_dt.Rows[i]["Col2"].ToString();
                    otherJournalImpactFactor.Text = otherJournal_dt.Rows[i]["Col3"].ToString();
                    otherJournalIsbnNo.Text = otherJournal_dt.Rows[i]["Col4"].ToString();
                    otherJournalAuthor.Text = otherJournal_dt.Rows[i]["Col5"].ToString();
                    otherJournalPubName.Text = otherJournal_dt.Rows[i]["Col6"].ToString();
                    otherJournalPubYear.Text = otherJournal_dt.Rows[i]["Col7"].ToString();
                    otherJournalLevel.Text = otherJournal_dt.Rows[i]["Col8"].ToString();
                    rowIndex++;
                }
            }
        }
    }
    protected void ButtonAddotherJournalResearch_Click(object sender, EventArgs e)
    {
        AddNewRowOtherJournalResearch();
    }
    protected void gridResearchOtherJournal_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SetRowDataOtherJournalResearch();
        if (ViewState["CurrentOtherJournalResearchTable"] != null)
        {
            DataTable otherJournal_dt = (DataTable)ViewState["CurrentOtherJournalResearchTable"];
            DataRow drCurrentRow = null;
            int rowIndex = Convert.ToInt32(e.RowIndex);
            if (otherJournal_dt.Rows.Count > 1)
            {
                otherJournal_dt.Rows.Remove(otherJournal_dt.Rows[rowIndex]);
                drCurrentRow = otherJournal_dt.NewRow();
                ViewState["CurrentOtherJournalResearchTable"] = otherJournal_dt;
                gridResearchOtherJournal.DataSource = otherJournal_dt;
                gridResearchOtherJournal.DataBind();

                for (int i = 0; i < gridResearchOtherJournal.Rows.Count - 1; i++)
                {
                    gridResearchOtherJournal.Rows[i].Cells[0].Text = Convert.ToString(i + 1);
                }
                SetPreviousDataOtherJournalResearch();
            }
        }
    }

    private void SetRowDataOtherJournalResearch()
    {
        int rowIndex = 0;

        if (ViewState["CurrentOtherJournalResearchTable"] != null)
        {
            DataTable dtCurrentOtherJournalResearchTable = (DataTable)ViewState["CurrentOtherJournalResearchTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentOtherJournalResearchTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentOtherJournalResearchTable.Rows.Count; i++)
                {
                    DropDownList otherJournalPubType = (DropDownList)gridResearchOtherJournal.Rows[rowIndex].Cells[1].FindControl("otherJournalPubType");
                    TextBox otherJournalPaperTitle = (TextBox)gridResearchOtherJournal.Rows[rowIndex].Cells[2].FindControl("otherJournalPaperTitle");
                    TextBox otherJournalImpactFactor = (TextBox)gridResearchOtherJournal.Rows[rowIndex].Cells[3].FindControl("otherJournalImpactFactor");
                    TextBox otherJournalIsbnNo = (TextBox)gridResearchOtherJournal.Rows[rowIndex].Cells[4].FindControl("otherJournalIsbnNo");
                    TextBox otherJournalAuthor = (TextBox)gridResearchOtherJournal.Rows[rowIndex].Cells[5].FindControl("otherJournalAuthor");
                    TextBox otherJournalPubName = (TextBox)gridResearchOtherJournal.Rows[rowIndex].Cells[6].FindControl("otherJournalPubName");
                    DropDownList otherJournalPubYear = (DropDownList)gridResearchOtherJournal.Rows[rowIndex].Cells[7].FindControl("otherJournalPubYear");
                    DropDownList otherJournalLevel = (DropDownList)gridResearchOtherJournal.Rows[rowIndex].Cells[8].FindControl("otherJournalLevel");

                    drCurrentRow = dtCurrentOtherJournalResearchTable.NewRow();
                    drCurrentRow["RowNumber"] = i + 1;
                    dtCurrentOtherJournalResearchTable.Rows[i - 1]["Col1"] = otherJournalPubType.Text;
                    dtCurrentOtherJournalResearchTable.Rows[i - 1]["Col2"] = otherJournalPaperTitle.Text;
                    dtCurrentOtherJournalResearchTable.Rows[i - 1]["Col3"] = otherJournalImpactFactor.Text;
                    dtCurrentOtherJournalResearchTable.Rows[i - 1]["Col4"] = otherJournalIsbnNo.Text;
                    dtCurrentOtherJournalResearchTable.Rows[i - 1]["Col5"] = otherJournalAuthor.Text;
                    dtCurrentOtherJournalResearchTable.Rows[i - 1]["Col6"] = otherJournalPubName.Text;
                    dtCurrentOtherJournalResearchTable.Rows[i - 1]["Col7"] = otherJournalPubYear.Text;
                    dtCurrentOtherJournalResearchTable.Rows[i - 1]["Col8"] = otherJournalLevel.Text;
                    rowIndex++;
                }

                ViewState["CurrentOtherJournalResearchTable"] = dtCurrentOtherJournalResearchTable;
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
}