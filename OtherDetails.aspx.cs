using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class otherDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void punishedGenderChanged(object sender, EventArgs e)
    {
        //System.Diagnostics.Debug.WriteLine(punishedGenderYes.Checked);
        if (punishedGenderYes.Checked)
        {
            punishedGenderText.Visible = true;
        }
        if (punishedGenderNo.Checked)
        {
            punishedGenderText.Visible = false;
        }
    }

    protected void AppliedPostChanged(object sender, EventArgs e)
    {
        if (AppliedPostYes.Checked)
        {
            AppliedPostText.Visible = true;
        }
        if (AppliedPostNo.Checked)
        {
            AppliedPostText.Visible = false;
        }
    }

    protected void mentallyUnfitChanged(object sender, EventArgs e)
    {
        if (mentallyUnfitYes.Checked)
        {
            mentallyUnfitText.Visible = true;
        }
        if (mentallyUnfitNo.Checked)
        {
            mentallyUnfitText.Visible = false;
        }
    }

    protected void criminalCaseChanged(object sender, EventArgs e)
    {
        if (criminalCaseYes.Checked)
        {
            criminalCaseText.Visible = true;
        }
        if (criminalCaseNo.Checked)
        {
            criminalCaseText.Visible = false;
        }
    }

    protected void btnSaveOtherDetail_Click(object Sender, EventArgs e)
    {
        //lblOtherDetailLang.Text = ComfortLanguage.SelectedItem.Value.ToString();
        lblOtherDetailFellowship.Text = "NA";
        lblOtherDetailResponsibilities.Text = "NA";
        lblOtherDetailAnyInfo.Text = "NA"; 
        lblOtherDetailMinPay.Text = "NA";
        lblOtherDetailTime.Text = yearOtherDetailTxt.Text + " Years, " + monthsOtherDetailTxt.Text + " Months, " + daysOtherDetailTxt.Text + " Days";


        if (punishedGenderYes.Checked)
        {
            lblDisclosure1.Text = "Yes";
            lblDisclosureText1.Text = "ok";
        }
        if (punishedGenderNo.Checked)
        {
            lblDisclosure1.Text = "No";
            lblDisclosureText1.Text = "NA";
        }

        if (mentallyUnfitYes.Checked)
        {
            lblDisclosure2.Text = "Yes";
            lblDisclosureText2.Text = "ok";
        }
        if (mentallyUnfitNo.Checked)
        {
            lblDisclosure2.Text = "No";
            lblDisclosureText2.Text = "NA";
        }

        if (criminalCaseYes.Checked)
        {
            lblDisclosure3.Text = "Yes";
            lblDisclosureText3.Text = "ok";
        }
        if (criminalCaseNo.Checked)
        {
            lblDisclosure3.Text = "No";
            lblDisclosureText3.Text = "NA";
        }

        lblRefreeName1.Text = refreeName1.Text;
        lblRefreeName2.Text = refreeName2.Text;
        lblRefreeName3.Text = refreeName3.Text;
        lblRefreeDegignation1.Text = refreeDesignation1.Text;
        lblRefreeDegignation2.Text = refreeDesignation2.Text;
        lblRefreeDegignation3.Text = refreeDesignation3.Text;
        lblRefreeAddress1.Text = refreeAddress1.Text;
        lblRefreeAddress2.Text = refreeAddress2.Text;
        lblRefreeAddress3.Text = refreeAddress3.Text;
        lblRefreeInstitution1.Text = refreeInstituion1.Text;
        lblRefreeInstitution2.Text = refreeInstituion2.Text;
        lblRefreeInstitution3.Text = refreeInstituion3.Text;
        lblRefreeMobile1.Text = refreeMobile1.Text;
        lblRefreeMobile2.Text = refreeMobile2.Text;
        lblRefreeMobile3.Text = refreeMobile3.Text;
        lblRefreeEmail1.Text = refreeEmail1.Text;
        lblRefreeEmail2.Text = refreeEmail2.Text;
        lblRefreeEmail3.Text = refreeEmail3.Text;
        tblOtherDetails.Visible = true;
        tableOtherDetails.Visible = false;
    }

    protected void btnOtherDetailEdit_Click(object Sender, EventArgs e)
    {
        tableOtherDetails.Visible = true;
        tblOtherDetails.Visible = false;
    }

    protected void btnOtherDetailNext_Click(object Sender, EventArgs e)
    {
        Response.Redirect("Declaration.aspx");
    }
}