using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class otherDetails : System.Web.UI.Page
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
                        if (int.Parse(dr["Other_Details"].ToString()) == 0)
                        {
                            tableOtherDetails.Visible = true;
                            tblOtherDetails.Visible = false;
                        }
                        else
                        {
                            tableOtherDetails.Visible = false;
                            tblOtherDetails.Visible = true;
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
        lblOtherDetailResponsibilities.Text = responsibilitiesText.Value;
        lblOtherDetailAnyInfo.Text = anyOtherInfoText.Value; 
        lblOtherDetailMinPay.Text = minPayText.Value;
        lblOtherDetailTime.Text = yearOtherDetailTxt.Text + " Years, " + monthsOtherDetailTxt.Text + " Months, " + daysOtherDetailTxt.Text + " Days";

        if (teachLangEng.Checked)
        {
            lblLang.Text = "English";
        }
        if (teachLangHin.Checked)
        {
            lblLang.Text = "Hindi";
        }
        if (teachLangBoth.Checked)
        {
            lblLang.Text = "Both (English and Hindi)";
        }

        if (punishedGenderYes.Checked)
        {
            lblLang.Text = "Yes";
            lblDisclosureText1.Text = punishedGenderText.Value;
        }
        if (punishedGenderNo.Checked)
        {
            lblDisclosure1.Text = "No";
            lblDisclosureText1.Text = "NA";
        }

        if (mentallyUnfitYes.Checked)
        {
            lblDisclosure2.Text = "Yes";
            lblDisclosureText2.Text = mentallyUnfitText.Value;
        }
        if (mentallyUnfitNo.Checked)
        {
            lblDisclosure2.Text = "No";
            lblDisclosureText2.Text = "NA";
        }

        if (criminalCaseYes.Checked)
        {
            lblDisclosure3.Text = "Yes";
            lblDisclosureText3.Text = criminalCaseText.Value;
        }
        if (criminalCaseNo.Checked)
        {
            lblDisclosure3.Text = "No";
            lblDisclosureText3.Text = "NA";
        }

        if (AppliedPostYes.Checked)
            lblDisclosure4.Text = "Yes";
        if (AppliedPostNo.Checked)
            lblDisclosure4.Text = "No";

        if (DeputationYes.Checked)
            lblDisclosure5.Text = "Yes";
        if (DeputationNo.Checked)
            lblDisclosure5.Text = "No";

        if (RetiredPersonYes.Checked)
            lblDisclosure6.Text = "Yes";
        if (criminalCaseNo.Checked)
            lblDisclosure6.Text = "No";

        lblRefreeName1.Text = refreeName1.Text;
        lblRefreeName2.Text = refreeName2.Text;
        lblRefreeName3.Text = refreeName3.Text;
        lblRefreeDesignation1.Text = refreeDesignation1.Text;
        lblRefreeDesignation2.Text = refreeDesignation2.Text;
        lblRefreeDesignation3.Text = refreeDesignation3.Text;
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

        if (!this.IsPostBack)
        {
            MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True");

            string insert_com = "update application_status set Other_Details = 0 where User_ID = " + user_id.ToString();
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

    protected void btnOtherDetailNext_Click(object Sender, EventArgs e)
    {
        using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
        {
            connection.Open();

            string insert_command = "insert into other_details (User_ID, Language, Responsibilities, ReleavantInfo, IntialPay, JoinYear, JoinMonth, JoinDay, GenderOffence, GenderReason, MedicallyUnfit, MedicalReason, CriminalCase, CriminalReason, AppliedPost, Deputation, RetiredPerson) " +
                "values (@User_ID, @Language, @Responsibilities, @ReleavantInfo, @IntialPay, @JoinYear, @JoinMonth, @JoinDay, @GenderOffence, @GenderReason, @MedicallyUnfit, @MedicalReason, @CriminalCase, @CriminalReason, @AppliedPost, @Deputation, @RetiredPerson)";
            using (MySqlCommand insert_details = new MySqlCommand(insert_command, connection))
            {
                System.Diagnostics.Debug.WriteLine("Here");
                insert_details.Parameters.AddWithValue("@User_ID", user_id);
                insert_details.Parameters.AddWithValue("@Language", lblLang.Text);
                insert_details.Parameters.AddWithValue("@Responsibilities", responsibilitiesText.Value.ToString());
                insert_details.Parameters.AddWithValue("@ReleavantInfo", anyOtherInfoText.Value.ToString());
                insert_details.Parameters.AddWithValue("@IntialPay", minPayText.Value.ToString());
                insert_details.Parameters.AddWithValue("@GenderOffence", lblDisclosure1.Text);
                insert_details.Parameters.AddWithValue("@GenderReason", punishedGenderText.Value.ToString());
                insert_details.Parameters.AddWithValue("@MedicallyUnfit", lblDisclosure2.Text);
                insert_details.Parameters.AddWithValue("@MedicalReason", mentallyUnfitText.Value.ToString());
                insert_details.Parameters.AddWithValue("@CriminalCase", lblDisclosure3.Text);
                insert_details.Parameters.AddWithValue("@CriminalReason", criminalCaseText.Value.ToString());
                insert_details.Parameters.AddWithValue("@AppliedPost", lblDisclosure4.Text);
                insert_details.Parameters.AddWithValue("@Deputation", lblDisclosure5.Text);
                insert_details.Parameters.AddWithValue("@RetiredPerson", lblDisclosure6.Text);
          //      insert_details.Parameters.AddWithValue("@Condition", AcceptanceConditions.Value.ToString());
                insert_details.Parameters.AddWithValue("@JoinYear", yearOtherDetailTxt.Text);
                insert_details.Parameters.AddWithValue("@JoinMonth", monthsOtherDetailTxt.Text);
                insert_details.Parameters.AddWithValue("@JoinDay", daysOtherDetailTxt.Text);
                try
                {
                    insert_details.ExecuteNonQuery();
                    insert_details.Dispose();
                    System.Diagnostics.Debug.WriteLine("Registered successfully......!");

                    string insert_com = "update application_status set Other_Details = 1 where User_ID = " + user_id.ToString();
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

        using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
        {
            connection.Open();

            string insert_command = "insert into reference_table (User_ID, Ref_Name, Ref_Institution, Ref_Designation, Ref_Address, Ref_MobileNo, Ref_EmailId) " +
                "values (@User_ID, @Ref_Name, @Ref_Institution, @Ref_Designation, @Ref_Address, @Ref_MobileNo, @Ref_EmailId)";
            using (MySqlCommand insert_details = new MySqlCommand(insert_command, connection))
            {
                System.Diagnostics.Debug.WriteLine("Here");
                insert_details.Parameters.AddWithValue("@User_ID", user_id);
                insert_details.Parameters.AddWithValue("@Ref_Name", lblRefreeName1.Text);
                insert_details.Parameters.AddWithValue("@Ref_Institution", lblRefreeInstitution1.Text);
                insert_details.Parameters.AddWithValue("@Ref_Designation", lblRefreeDesignation1.Text);
                insert_details.Parameters.AddWithValue("@Ref_Address", lblRefreeAddress1.Text);
                insert_details.Parameters.AddWithValue("@Ref_MobileNo", lblRefreeMobile1.Text);
                insert_details.Parameters.AddWithValue("@Ref_EmailId", lblRefreeEmail1.Text);
                
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
                    connection.Close();
                }
            }
        }
        using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
        {
            connection.Open();

            string insert_command = "insert into reference_table (User_ID, Ref_Name, Ref_Institution, Ref_Designation, Ref_Address, Ref_MobileNo, Ref_EmailId) " +
                "values (@User_ID, @Ref_Name, @Ref_Institution, @Ref_Designation, @Ref_Address, @Ref_MobileNo, @Ref_EmailId)";
            using (MySqlCommand insert_details = new MySqlCommand(insert_command, connection))
            {
                System.Diagnostics.Debug.WriteLine("Here");
                insert_details.Parameters.AddWithValue("@User_ID", user_id);
                insert_details.Parameters.AddWithValue("@Ref_Name", lblRefreeName2.Text);
                insert_details.Parameters.AddWithValue("@Ref_Institution", lblRefreeInstitution2.Text);
                insert_details.Parameters.AddWithValue("@Ref_Designation", lblRefreeDesignation2.Text);
                insert_details.Parameters.AddWithValue("@Ref_Address", lblRefreeAddress2.Text);
                insert_details.Parameters.AddWithValue("@Ref_MobileNo", lblRefreeMobile2.Text);
                insert_details.Parameters.AddWithValue("@Ref_EmailId", lblRefreeEmail2.Text);

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
                    connection.Close();
                }
            }
        }
        using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
        {
            connection.Open();

            string insert_command = "insert into reference_table (User_ID, Ref_Name, Ref_Institution, Ref_Designation, Ref_Address, Ref_MobileNo, Ref_EmailId) " +
                "values (@User_ID, @Ref_Name, @Ref_Institution, @Ref_Designation, @Ref_Address, @Ref_MobileNo, @Ref_EmailId)";
            using (MySqlCommand insert_details = new MySqlCommand(insert_command, connection))
            {
                System.Diagnostics.Debug.WriteLine("Here");
                insert_details.Parameters.AddWithValue("@User_ID", user_id);
                insert_details.Parameters.AddWithValue("@Ref_Name", lblRefreeName3.Text);
                insert_details.Parameters.AddWithValue("@Ref_Institution", lblRefreeInstitution3.Text);
                insert_details.Parameters.AddWithValue("@Ref_Designation", lblRefreeDesignation3.Text);
                insert_details.Parameters.AddWithValue("@Ref_Address", lblRefreeAddress3.Text);
                insert_details.Parameters.AddWithValue("@Ref_MobileNo", lblRefreeMobile3.Text);
                insert_details.Parameters.AddWithValue("@Ref_EmailId", lblRefreeEmail3.Text);

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
                    connection.Close();
                }
            }
        }
        Response.Redirect("Declaration.aspx");
    }
}