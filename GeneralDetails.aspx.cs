using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MySql.Data.MySqlClient;
using System.IO;

public partial class GeneralDetails : System.Web.UI.Page
{
    private int user_id;
    private string email_id_stored;
    private string mobile_no_stored;


    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            user_id = int.Parse(Request.Cookies["uid"].Value);
            email_id_stored = Request.Cookies["Email"].Value.ToString();
            mobile_no_stored = Request.Cookies["mobile"].Value.ToString();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(ex);
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
                        if (int.Parse(dr["General_Details"].ToString()) == 0)
                        {
                            email.Text = email_id_stored;
                            mobileNumber.Text = mobile_no_stored;
                            cardPersonalDetails.Visible = true;
                            cardPersonalDetails_Preview.Visible = false;
                        }
                        if (int.Parse(dr["General_Details"].ToString()) == 1)
                        {
                            // fill the data
                            using (MySqlConnection con = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
                            {
                                
                                con.Open();

                                string insert_command = "select * from personal_details where User_ID = " + user_id.ToString();

                                using (MySqlCommand insert_details = new MySqlCommand(insert_command, con))
                                {
                                    //
                                    MySqlDataReader data_reader = insert_details.ExecuteReader();
                                    insert_details.Dispose();
                                    System.Diagnostics.Debug.WriteLine("Registered successfully......!");

                                    while (data_reader.Read())
                                    {
                                        // fill the preview data
                                        lblFname.Text = data_reader["Name"].ToString();
                                        lblGender.Text = data_reader["Gender"].ToString(); 
                                        lblDob.Text = data_reader["DOB"].ToString();

                                        lblCategory.Text = data_reader["Category"].ToString();
                                        lblPwd.Text = data_reader["PWD"].ToString();
                                        lblExServiceman.Text = data_reader["ExServiceMan"].ToString();

                                        lblNation.Text = data_reader["Nationality"].ToString();
                                        lblMstatus.Text = data_reader["Marital_Status"].ToString();
                                        lblMinority.Text = data_reader["Minority"].ToString();

                                        lblFatherName.Text = data_reader["Fathers_Name"].ToString();
                                        lblMotherName.Text = data_reader["Mothers_Name"].ToString();

                                        lblEmail.Text = email_id_stored;
                                        lblAltEmail.Text = data_reader["Alternate_Email"].ToString();

                                        lblPhoneNo.Text = data_reader["Phone_Number"].ToString();
                                        lblMobileNo.Text = mobile_no_stored;

                                        lblAadharNo.Text = data_reader["Aadhar_No"].ToString();

                                        lblCAdd1.Text = data_reader["Corres_Address_Line1"].ToString();
                                        lblCAdd2.Text = data_reader["Corres_Address_Line1"].ToString();
                                        lblCCityState.Text = data_reader["Corres_City"].ToString() + ", " + data_reader["Corres_State"].ToString();
                                        lblCPinCountry.Text = data_reader["Corres_Country"].ToString() + ", " + data_reader["Corres_Pincode"].ToString();

                                        lblPAdd1.Text = data_reader["Perm_Address_Line1"].ToString();
                                        lblPAdd2.Text = data_reader["Perm_Address_Line2"].ToString();
                                        lblPCityState.Text = data_reader["Perm_City"].ToString() + ", " + data_reader["Perm_State"].ToString();
                                        lblPPinCountry.Text = data_reader["Perm_Country"].ToString() + ", " + data_reader["Perm_Pincode"].ToString();

                                        HyperLinkPhoto.NavigateUrl = data_reader["Photo_Loc"].ToString();
                                        HyperLinkSign.NavigateUrl = data_reader["Sign_Loc"].ToString();

                                        photoPreview.ImageUrl = "~/server_photos/" + data_reader["Photo_Loc"].ToString();
                                        signPreview.ImageUrl = "~/server_photos/" + data_reader["Sign_Loc"].ToString();

                                        // filling the edit are with data
                                        name.Text = data_reader["Name"].ToString();
                                        fathersName.Text = data_reader["Fathers_Name"].ToString();
                                        mothersName.Text = data_reader["Mothers_Name"].ToString();
                                        dob.Text = data_reader["DOB"].ToString();
                                        genderList.ClearSelection();
                                        genderList.Items.FindByValue(data_reader["Gender"].ToString()).Selected = true;
                                        categoryList.ClearSelection();
                                        categoryList.Items.FindByValue(data_reader["Category"].ToString()).Selected = true;
                                        maritalStatus.ClearSelection();
                                        maritalStatus.Items.FindByValue(data_reader["Marital_Status"].ToString()).Selected = true;
                                        pwdList.ClearSelection();
                                        pwdList.Items.FindByValue(data_reader["PWD"].ToString()).Selected = true;
                                        minorityList.ClearSelection();
                                        minorityList.Items.FindByValue(data_reader["Minority"].ToString()).Selected = true;
                                        nationalityList.ClearSelection();
                                        nationalityList.Items.FindByValue(data_reader["Nationality"].ToString()).Selected = true;
                                        exServiemanList.ClearSelection();
                                        exServiemanList.Items.FindByValue(data_reader["ExServiceMan"].ToString()).Selected = true;
                                        altEmail.Text = data_reader["Alternate_Email"].ToString();
                                        phoneNumber.Text = data_reader["Phone_Number"].ToString();
                                        aadharNumber.Text = data_reader["Aadhar_No"].ToString();
                                        pAddress1.Text = data_reader["Perm_Address_Line1"].ToString();
                                        pAddress2.Text = data_reader["Perm_Address_Line2"].ToString();
                                        pCity.Text = data_reader["Perm_City"].ToString();
                                        pState.ClearSelection();
                                        pState.Items.FindByValue(data_reader["Perm_State"].ToString()).Selected = true;
                                        pCountry.ClearSelection();
                                        pCountry.Items.FindByValue(data_reader["Perm_Country"].ToString()).Selected = true;
                                        pPin.Text = data_reader["Perm_Pincode"].ToString();
                                        cAddress1.Text = data_reader["Corres_Address_Line1"].ToString();
                                        cAddress2.Text = data_reader["Corres_Address_Line1"].ToString();
                                        cCity.Text = data_reader["Corres_City"].ToString();
                                        cState.ClearSelection();
                                        cState.Items.FindByValue(data_reader["Corres_State"].ToString()).Selected = true;
                                        cPin.Text = data_reader["Corres_Pincode"].ToString();
                                        cCountry.ClearSelection();
                                        cCountry.Items.FindByValue(data_reader["Corres_Country"].ToString()).Selected = true;
                                        FileUpload_Photo_Loc.Text = data_reader["Photo_Loc"].ToString();
                                        FileUpload_Sign_Loc.Text = data_reader["Sign_Loc"].ToString();
                                        email.Text = email_id_stored.ToString();
                                        mobileNumber.Text = mobile_no_stored.ToString();
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
                                    con.Close();
                                }

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

        lblEmail.Text = email_id_stored;
        lblAltEmail.Text = altEmail.Text;

        lblPhoneNo.Text = phoneNumber.Text;
        lblMobileNo.Text = mobile_no_stored;

        lblAadharNo.Text = aadharNumber.Text;

        lblCAdd1.Text = cAddress1.Text;
        lblCAdd2.Text = cAddress2.Text;
        lblCCityState.Text = cCity.Text + ", " + cState.SelectedItem.Text;
        lblCPinCountry.Text = cPin.Text + ", " + cCountry.SelectedItem.Text;

        lblPAdd1.Text = pAddress1.Text;
        lblPAdd2.Text = pAddress2.Text;
        lblPCityState.Text = pCity.Text + ", " + pState.SelectedItem.Text;
        lblPPinCountry.Text = pPin.Text + ", " + pCountry.SelectedItem.Text;


        cardPersonalDetails.Visible = false;
        cardPersonalDetails_Preview.Visible = true;

    }

    protected void btnPersonalDetailsEdit_Click(object Sender, EventArgs e)
    {
                
        MySqlConnection con = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True");
        con.Open();

        string insert_com = "update application_status set General_Details = 0 where User_ID = " + user_id.ToString();
        using (MySqlCommand update_details = new MySqlCommand(insert_com, con))
        {
            try
            {
                update_details.ExecuteNonQuery();
                update_details.Dispose();
                System.Diagnostics.Debug.WriteLine("Updated successfully......");

                MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True");

                connection.Open();

                string delete_string = "delete from personal_details where User_ID = " + user_id.ToString();
                MySqlCommand delete_command = new MySqlCommand(delete_string, connection);
                delete_command.ExecuteNonQuery();
                delete_command.Dispose();
                con.Close();

                cardPersonalDetails.Visible = true;
                cardPersonalDetails_Preview.Visible = false;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex);
                Response.Write("<b>something really bad happened.....Please try again</b> ");
            }
            finally
            {
                con.Close();
            }
        }
        
        cardPersonalDetails.Visible = true;
        cardPersonalDetails_Preview.Visible = false;

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
                "values (@User_ID, @Name, @Fathers_Name, @Mothers_Name, @DOB, @Gender, @Category, @Marital_Status, @PWD, @Minority, @Nationality, @ExServiceman, @Alternate_Email, @Phone_Number, @Aadhar_No," +
                "@Perm_Address_Line1, @Perm_Address_Line2, @Perm_City, @Perm_State, @Perm_Pincode, @Perm_Country, @Corres_Address_Line1, @Corres_Address_Line2, @Corres_City, @Corres_State, @Corres_Pincode, @Corres_Country, @Photo_Loc, @Sign_Loc)";
            using (MySqlCommand insert_details = new MySqlCommand(insert_command, connection))
            {
                System.Diagnostics.Debug.WriteLine("Here");
                insert_details.Parameters.AddWithValue("@User_ID", user_id);
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
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine(ex);
                    Response.Write("<b>something really bad happened.....Please try again</b> ");
                }
                finally
                {
                    
                    
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
            int fileSize = FileUpload_Photo.PostedFile.ContentLength;
            int limit = 102400;

            if (ext == ".jpg" || ext == ".jpeg" || ext == ".png" || ext == ".gif")
            {
                if (fileSize < limit)
                {
                    string fileName = "Photo" + ext;
                    FileUpload_Photo_Loc.Text = filename;
                    string destPath = "C:/Users/Kiran/Documents/GitHub/Recruitment-Portal/server_photos/" + fileName;
                    photoPreview.ImageUrl = "~/server_photos/" + fileName;

                    FileUpload_Photo.SaveAs(destPath);  //this will save the file in the application directory

                    //to view the file when you click hyperlink below:
                    HyperLinkPhoto.NavigateUrl = "file:///" + destPath;
                    lblMessage_Photo_Loc.Text = fileName;

                    lblMessage_Photo.ForeColor = System.Drawing.Color.Green;
                    lblMessage_Photo.Text = "Photo Uploaded Successfully";
                }
                else
                {
                    lblMessage_Photo.ForeColor = System.Drawing.Color.Red;
                    lblMessage_Photo.Text = "File Size exceeded " + limit / 1024 + " KB";
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
                    string destPath = "C:/Users/Kiran/Documents/GitHub/Recruitment-Portal/server_photos/" + fileName;
                    signPreview.ImageUrl = "~/server_photos/" + fileName;
                    lblMessage_Sign_Loc.Text = fileName;

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
            lblMessage_Sign.ForeColor = System.Drawing.Color.Red;
            lblMessage_Sign.Text = "File format not recognised." +
              " Upload jpg/png/gif formats";
        }

    }
}