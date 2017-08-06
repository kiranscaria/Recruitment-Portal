using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MySql.Data.MySqlClient;
using System.IO;
using System.Data.SqlClient;

public partial class GeneralDetails : System.Web.UI.Page
{
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

                int user_id = 400; // replace with session variable
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
                            cardPersonalDetails.Visible = true;
                            cardPersonalDetails_Preview.Visible = false;
                        }
                        else
                        {
                            cardPersonalDetails.Visible = false;
                            cardPersonalDetails_Preview.Visible = true;
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

    protected void addressChanged(object sender, EventArgs e)
    {
        if (permanentAddress.Checked == true) // Check Box Checked
        {
            pAddress1.Text = cAddress1.Text;
            pAddress2.Text = cAddress2.Text;
            pCity.Text = cCity.Text;
            pState.Text = cState.Text;
            pCountry.Text = cCountry.Text;
            pPin.Text = cPin.Text;
        }
        else
        {
            pAddress1.Text = "";
            pAddress2.Text = "";
            pCity.Text = "";
            pState.Text = "";
            pCountry.Text = "";
            pPin.Text = "";
        }
    }

    protected void btnGeneralDetailsSubmit(object Sender, EventArgs e)
    {
        // code to save the data

        lblFname.Text = name.Text;
        lblGender.Text = genderList.SelectedItem.Text;
        lblDob.Text = dob.Text;

        lblCategory.Text = categoryList.SelectedItem.Text;
        lblPwd.Text = pwdList.SelectedItem.Text;
        lblExServiceman.Text = exServiemanList.SelectedItem.Text;

        lblNation.Text = nationalityList.SelectedItem.Text;
        lblMstatus.Text = maritalStatus.SelectedItem.Text;
        lblMinority.Text = minorityList.SelectedItem.Text;

        lblFatherName.Text = fathersName.Text;
        lblMotherName.Text = mothersName.Text;

        lblEmail.Text = email.Text;
        lblAltEmail.Text = altEmail.Text;

        lblPhoneNo.Text = phoneNumber.Text;
        lblMobileNo.Text = mobileNumber.Text;

        lblAadharNo.Text = aadharNumber.Text;

        lblCAdd1.Text = cAddress1.Text;
        lblCAdd2.Text = cAddress2.Text;
        lblCCityState.Text = cCity.Text + "," + cState.SelectedItem.Text;
        lblCPinCountry.Text = cPin.Text + "," + cCountry.SelectedItem.Text;

        lblPAdd1.Text = pAddress1.Text;
        lblPAdd2.Text = pAddress2.Text;
        lblPCityState.Text = pCity.Text + "," + pState.SelectedItem.Text;
        lblPPinCountry.Text = pPin.Text + "," + pCountry.SelectedItem.Text;

        cardPersonalDetails.Visible = false;
        cardPersonalDetails_Preview.Visible = true;

    }

    protected void btnPersonalDetailsEdit_Click(object Sender, EventArgs e)
    {
        cardPersonalDetails.Visible = true;
        cardPersonalDetails_Preview.Visible = false;

        if (!this.IsPostBack)
        {
            MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True");

            int user_id = 402; //
            string insert_com = "update application_status set General_Details = 0 where User_ID = " + user_id.ToString();
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

    protected void btnPersonalDetailsNext_Click(object Sender, EventArgs e)
    {
        dataEntry();

        Response.Redirect("AcademicDetails.aspx");
    }

    protected void dataEntry()
    {
        using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
        {
            connection.Open();

            string insert_command = "insert into personal_details (User_ID, Name, Fathers_Name, Mothers_Name, DOB, Gender, Category, Marital_Status, PWD, Minority, Nationality, ExServiceman, Alternate_Email, Phone_Number, Aadhar_No," +
                "Perm_Address_Line1, Perm_Address_Line2, Perm_City, Perm_State, Perm_Pincode, Perm_Country, Corres_Address_Line1, Corres_Address_Line2, Corres_City, Corres_State, Corres_Pincode, Corres_Country, Photo_Loc, Sign_Loc) " +
                "values (@User_ID, @Name, @Fathers_Name, @Mothers_Name, STR_TO_DATE(@DOB, '%d-%m-%Y'), @Gender, @Category, @Marital_Status, @PWD, @Minority, @Nationality, @ExServiceman, @Alternate_Email, @Phone_Number, @Aadhar_No," +
                "@Perm_Address_Line1, @Perm_Address_Line2, @Perm_City, @Perm_State, @Perm_Pincode, @Perm_Country, @Corres_Address_Line1, @Corres_Address_Line2, @Corres_City, @Corres_State, @Corres_Pincode, @Corres_Country, @Photo_Loc, @Sign_Loc)";
            using (MySqlCommand insert_details = new MySqlCommand(insert_command, connection))
            {
                System.Diagnostics.Debug.WriteLine("Here");
                int user_name = 402; // int.Parse(HttpContext.Current.Session["user_id"].ToString());
                insert_details.Parameters.AddWithValue("@User_ID", user_name);
                insert_details.Parameters.AddWithValue("@Name", name.Text);
                insert_details.Parameters.AddWithValue("@Fathers_Name", fathersName.Text);
                insert_details.Parameters.AddWithValue("@Mothers_Name", mothersName.Text);
                insert_details.Parameters.AddWithValue("@DOB", dob.Text);
                insert_details.Parameters.AddWithValue("@Gender", genderList.SelectedItem.ToString());
                insert_details.Parameters.AddWithValue("@Category", categoryList.SelectedItem.ToString());
                insert_details.Parameters.AddWithValue("@Marital_Status", maritalStatus.SelectedItem.ToString());
                insert_details.Parameters.AddWithValue("@PWD", pwdList.SelectedItem.ToString());
                insert_details.Parameters.AddWithValue("@Minority", minorityList.SelectedItem.ToString());
                insert_details.Parameters.AddWithValue("@Nationality", nationalityList.SelectedItem.ToString());
                insert_details.Parameters.AddWithValue("@ExServiceman", exServiemanList.SelectedItem.ToString());
                insert_details.Parameters.AddWithValue("@Alternate_Email", altEmail.Text);
                insert_details.Parameters.AddWithValue("@Phone_Number", phoneNumber.Text);
                insert_details.Parameters.AddWithValue("@Aadhar_No", aadharNumber.Text);
                insert_details.Parameters.AddWithValue("@Perm_Address_Line1", pAddress1.Text);
                insert_details.Parameters.AddWithValue("@Perm_Address_Line2", pAddress2.Text);
                insert_details.Parameters.AddWithValue("@Perm_City", pCity.Text);
                insert_details.Parameters.AddWithValue("@Perm_State", pState.SelectedItem.ToString());
                insert_details.Parameters.AddWithValue("@Perm_Pincode", pPin.Text);
                insert_details.Parameters.AddWithValue("@Perm_Country", cCountry.SelectedItem.ToString());
                insert_details.Parameters.AddWithValue("@Corres_Address_Line1", cAddress1.Text);
                insert_details.Parameters.AddWithValue("@Corres_Address_Line2", cAddress2.Text);
                insert_details.Parameters.AddWithValue("@Corres_City", cCity.Text);
                insert_details.Parameters.AddWithValue("@Corres_State", cState.SelectedItem.ToString());
                insert_details.Parameters.AddWithValue("@Corres_Pincode", cPin.Text);
                insert_details.Parameters.AddWithValue("@Corres_Country", cCountry.SelectedItem.ToString());
                insert_details.Parameters.AddWithValue("@Photo_Loc", FileUpload_Photo_Loc.Text);
                insert_details.Parameters.AddWithValue("@Sign_Loc", FileUpload_Sign_Loc.Text);
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
                    int user_id = 402; //
                    string insert_com = "update application_status set General_Details = 1 where User_ID = " + user_id.ToString();
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
        }
    }

    protected void btnUpload_Photo_Click(object Sender, EventArgs e)
    {
        // Read the file and save it
        if (FileUpload_Photo.HasFile)
        {
            string filePath = FileUpload_Photo.PostedFile.FileName;
            string filename = Path.GetFileName(filePath);
            string ext = Path.GetExtension(filename);
            

            // Get the size in bytes of the file to upload.
            int fileSize = FileUpload_Sign.PostedFile.ContentLength;
            int limit = 102400;

            if (ext == ".jpg" || ext == ".jpeg" || ext == ".png" || ext == ".gif")
            {
                if (fileSize < limit)
                {
                    string fileName = "Photo" + ext;
                    FileUpload_Photo_Loc.Text = filename;
                    string destPath = "C:/Users/AKP LAB/Documents/My Web Sites/Recruitment_New/server_photos/" + fileName;
                    photoPreview.ImageUrl = "~/server_photos/" + fileName;

                    FileUpload_Photo.SaveAs(destPath);  //this will save the file in the application directory

                    FileUpload_Photo_Loc.Text = filename;
                    //to view the file when you click hyperlink below:
                    HyperLinkPhoto.NavigateUrl = "file:///" + destPath;

                    lblMessage_Photo.ForeColor = System.Drawing.Color.Green;
                    lblMessage_Photo.Text = "Photo Uploaded Successfully";
                }
                else
                {
                    lblMessage_Sign.ForeColor = System.Drawing.Color.Red;
                    lblMessage_Sign.Text = "File Size exceeded " + limit / 1024 + " KB";
                }
            }
            else
            {
                lblMessage_Photo.ForeColor = System.Drawing.Color.Red;
                lblMessage_Photo.Text = "File format not recognised." +
                  " Upload jpg/png/gif formats";
            }

        }
        else
        {
            lblMessage_Photo.ForeColor = System.Drawing.Color.Red;
            lblMessage_Photo.Text = "File format not recognised." +
              " Upload jpg/png/gif formats";
        }
    }

    protected void btnUpload_Sign_Click(object Sender, EventArgs e)
    {
        // Read the file and save it
        if (FileUpload_Sign.HasFile)
        {
            string filePath = FileUpload_Sign.PostedFile.FileName;
            string filename = Path.GetFileName(filePath);
            string ext = Path.GetExtension(filename);

            // Get the size in bytes of the file to upload.
            int fileSize = FileUpload_Sign.PostedFile.ContentLength;
            int limit = 51200;

            if (ext == ".jpg" || ext == ".jpeg" || ext == ".png" || ext == ".gif")
            {
                if (fileSize < limit)
                {
                    string fileName = "Sign" + ext;
                    FileUpload_Sign_Loc.Text = filename;
                    string destPath = "C:/Users/AKP LAB/Documents/My Web Sites/Recruitment_New/server_photos/" + fileName;
                    signPreview.ImageUrl = "~/server_photos/" + fileName;

                    FileUpload_Sign.SaveAs(destPath);  //this will save the file in the application directory

                    FileUpload_Sign_Loc.Text = filename;
                    //to view the file when you click hyperlink below:
                    HyperLinkSign.NavigateUrl = "file:///" + destPath;

                    lblMessage_Sign.ForeColor = System.Drawing.Color.Green;
                    lblMessage_Sign.Text = "Signature Uploaded Successfully";
                }
                else
                {
                    lblMessage_Sign.ForeColor = System.Drawing.Color.Red;
                    lblMessage_Sign.Text = "File Size exceeded " + limit/1024 + " KB";
                }
                
            }
            else
            {
                lblMessage_Sign.ForeColor = System.Drawing.Color.Red;
                lblMessage_Sign.Text = "File format not recognised." +
                  " Upload jpg/png/gif formats";
            }

        }
        else
        {
            lblMessage_Photo.ForeColor = System.Drawing.Color.Red;
            lblMessage_Photo.Text = "File format not recognised." +
              " Upload jpg/png/gif formats";
        }

    }
}