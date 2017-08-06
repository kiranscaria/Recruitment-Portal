using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MySql.Data.MySqlClient;
using System.IO;
               
public partial class Uploads : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fillDegreeTypeDropDown();
        fillResearchDegreeDropDown();
    }

    protected void fillResearchDegreeDropDown()
    {
        if (!this.IsPostBack)
        {
            using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
            {
                connection.Open();

                int user_id = 400; // change later 
                string retrieve_command = "select distinct DegreeName from edu_doctorate where User_ID = " + user_id.ToString();

                using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
                {
                    researchDegreeName.DataSource = retrieve_details.ExecuteReader();
                    researchDegreeName.DataTextField = "DegreeName";
                    researchDegreeName.DataBind();
                }
            }

            researchDegreeName.Items.Insert(0, new ListItem("Degree Name", "0"));
        }
    }

    protected void fillDegreeTypeDropDown()
    {
        if (!this.IsPostBack)
        {
            using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
            {
                connection.Open();

                int user_id = 400; // change later 
                string retrieve_command = "select distinct DegreeType from edu_core where User_ID = " + user_id.ToString();

                using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
                {
                    uploadDegreeType.DataSource = retrieve_details.ExecuteReader();
                    uploadDegreeType.DataTextField = "DegreeType";
                    uploadDegreeType.DataBind();
                }
            }

            uploadDegreeType.Items.Insert(0, new ListItem("Degree Type", "0"));
        }
    }

    protected void DegreeType_Changed(object sender, EventArgs e)
    {
        using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
        {
            connection.Open();
            int user_id = 400; // change later 
            string retrieve_command = "select distinct DegreeName from edu_core where User_ID = " + user_id.ToString() + " and DegreeType = " + '"' + uploadDegreeType.SelectedItem.ToString() + '"';

            using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
            {
                uploadDegreeName.DataSource = retrieve_details.ExecuteReader();
                uploadDegreeName.DataTextField = "DegreeName";
                uploadDegreeName.DataBind();
            }
        }

        uploadDegreeName.Items.Insert(0, new ListItem("Select Department", "0"));
    }

    protected void DegreeName_Changed(object sender, EventArgs e)
    {
        using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
        {
            connection.Open();
            int user_id = 400; // change later 
            string retrieve_command = "select distinct University from edu_core where DegreeType = " + '"' + uploadDegreeType.SelectedItem.ToString() + '"' + " and User_ID = " + user_id.ToString() + " and DegreeName = " + '"' + uploadDegreeName.SelectedItem.ToString() + '"';

            using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
            {
                uploadDegreeUniversity.DataSource = retrieve_details.ExecuteReader();
                uploadDegreeUniversity.DataTextField = "University";
                uploadDegreeUniversity.DataBind();
            }
        }

        uploadDegreeUniversity.Items.Insert(0, new ListItem("Select University/Board", "0"));
    }

    protected void UniversityName_Changed(object sender, EventArgs e)
    {
        using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
        {
            connection.Open();
            int user_id = 400; // change later 
            string retrieve_command = "select distinct Year from edu_core where DegreeType = " + '"' + uploadDegreeType.SelectedItem.ToString() + '"' + " and User_ID = " + user_id.ToString() + " and DegreeName = " + '"' + uploadDegreeName.SelectedItem.ToString() + '"' + " and University = " + '"' + uploadDegreeUniversity.SelectedItem.ToString() + '"';

            using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
            {
                uploadDegreeYear.DataSource = retrieve_details.ExecuteReader();
                uploadDegreeYear.DataTextField = "Year";
                uploadDegreeYear.DataBind();
            }
        }

        uploadDegreeYear.Items.Insert(0, new ListItem("Select Year", "0"));
    }

    protected void researchUniversityName_Changed(object sender, EventArgs e)
    {
        using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
        {
            connection.Open();
            int user_id = 400; // change later 
            string retrieve_command = "select distinct RegistrationNo from edu_doctorate where DegreeName = " + '"' + researchDegreeName.SelectedItem.ToString() + '"' + " and User_ID = " + user_id.ToString() + " and ThesisTitle = " + '"' + researchThesisTitle.SelectedItem.ToString() + '"' + " and University = " + '"' + researchUniversity.SelectedItem.ToString() + '"';

            using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
            {
                researchRegistrationNo.DataSource = retrieve_details.ExecuteReader();
                researchRegistrationNo.DataTextField = "RegistrationNo";
                researchRegistrationNo.DataBind();
            }
        }

        researchRegistrationNo.Items.Insert(0, new ListItem("Select Registration No", "0"));
    }

    protected void researchThesisTitle_Changed(object sender, EventArgs e)
    {
        using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
        {
            connection.Open();
            int user_id = 400; // change later 
            string retrieve_command = "select distinct University from edu_doctorate where DegreeName = " + '"' + researchDegreeName.SelectedItem.ToString() + '"' + " and User_ID = " + user_id.ToString() + " and ThesisTitle = " + '"' + researchThesisTitle.SelectedItem.ToString() + '"';

            using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
            {
                researchUniversity.DataSource = retrieve_details.ExecuteReader();
                researchUniversity.DataTextField = "University";
                researchUniversity.DataBind();
            }
        }

        researchUniversity.Items.Insert(0, new ListItem("Select University/Board", "0"));

    }

    protected void researchDegreeName_Changed(object sender, EventArgs e)
    {
        using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
        {
            connection.Open();
            int user_id = 400; // change later 
            string retrieve_command = "select distinct ThesisTitle from edu_doctorate where User_ID = " + user_id.ToString() + " and DegreeName = " + '"' + researchDegreeName.SelectedItem.ToString() + '"';

            using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
            {
                researchThesisTitle.DataSource = retrieve_details.ExecuteReader();
                researchThesisTitle.DataTextField = "ThesisTitle";
                researchThesisTitle.DataBind();
            }
        }

        researchThesisTitle.Items.Insert(0, new ListItem("Select Thesis Title", "0"));
    }

    protected void btnUpload_Academic_2_Click(object sender, EventArgs e)
    {
        {
            if (FileUploadAcademic_2.HasFiles)
            {
                foreach (HttpPostedFile uploadedFile in FileUploadAcademic_2.PostedFiles)
                {
                    string filePath = uploadedFile.FileName;
                    string filename = Path.GetFileName(filePath);
                    string ext = Path.GetExtension(filename);

                    // Get the size in bytes of the file to upload.
                    int fileSize = uploadedFile.ContentLength;
                    int limit = 102400;

                    if (ext == ".pdf")
                    {
                        if (fileSize < limit)
                        {
                            int user_id = 400;

                            string fileName = researchDegreeName.SelectedItem.ToString() + " " + researchThesisTitle.SelectedItem.ToString() + " " + researchUniversity.SelectedItem.ToString() + ext;
                            string fullPath = Server.MapPath("~/DegreeDocs/").ToString() + fileName;

                            uploadedFile.SaveAs(System.IO.Path.Combine(Server.MapPath("~/DegreeDocs/"), fileName));
                            listofuploadedfiles_2.Text += String.Format("{0}<br />", uploadedFile.FileName);

                            string insert_com = "update edu_doctorate set File_Upload = " + '"' + fileName.ToString() + '"' + "where User_ID = " + user_id.ToString() + " and DegreeName = " + '"' + researchDegreeName.SelectedItem.ToString() + '"' + " and ThesisTitle = " + '"' + researchThesisTitle.SelectedItem.ToString() + '"' + " and University = " + '"' + researchUniversity.SelectedItem.ToString() + '"' + " and RegistrationNo = " + '"' + researchRegistrationNo.SelectedItem.ToString() + '"';

                            using (MySqlConnection con = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
                            {
                                con.Open();
                                using (MySqlCommand update_details = new MySqlCommand(insert_com, con))
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
                                        Response.Write("<b>something really bad happened.....Please try again!</b> ");
                                    }
                                    finally
                                    {
                                        con.Close();
                                    }
                                }
                            }
                            lblMessage_Academic_2.ForeColor = System.Drawing.Color.Green;
                            lblMessage_Academic_2.Text = "Document Uploaded Successfully";
                        }
                        else
                        {
                            lblMessage_Academic_2.ForeColor = System.Drawing.Color.Red;
                            lblMessage_Academic_2.Text = "File Size exceeded " + limit / 1024 + " KB";
                        }
                    }
                    else
                    {
                        lblMessage_Academic_2.ForeColor = System.Drawing.Color.Red;
                        lblMessage_Academic_2.Text = "File format not recognised." + " Upload pdf format";
                    }

                }
            }
        }
    }

    protected void btnUpload_Academic_Click(object sender, EventArgs e)
    {

    }

    protected void btnUpload_Academic_1_Click(object sender, EventArgs e)
    {
        if (FileUploadAcademic_1.HasFiles)
        {
            foreach (HttpPostedFile uploadedFile in FileUploadAcademic_1.PostedFiles)
            {
                string filePath = uploadedFile.FileName;
                string filename = Path.GetFileName(filePath);
                string ext = Path.GetExtension(filename);

                // Get the size in bytes of the file to upload.
                int fileSize = uploadedFile.ContentLength;
                int limit = 102400;

                if (ext == ".pdf")
                {
                    if (fileSize < limit)
                    {
                        int user_id = 400;

                        string fileName = uploadDegreeType.SelectedItem.ToString() + " " + uploadDegreeName.SelectedItem.ToString() + " " + uploadDegreeYear.SelectedItem.ToString() + ext;
                        string fullPath = Server.MapPath("~/DegreeDocs/").ToString() + fileName;

                        uploadedFile.SaveAs(System.IO.Path.Combine(Server.MapPath("~/DegreeDocs/"), fileName));
                        listofuploadedfiles_1.Text += String.Format("{0}<br />", uploadedFile.FileName);

                        string insert_com = "update edu_core set File_Upload = " + '"' + fileName.ToString() + '"' + "where User_ID = " + user_id.ToString() + " and DegreeType = " + '"' + uploadDegreeType.SelectedItem.ToString() + '"' + " and DegreeName = " + '"' + uploadDegreeName.SelectedItem.ToString() + '"' + " and University = " + '"' + uploadDegreeUniversity.SelectedItem.ToString() + '"' + " and Year = " + '"' + uploadDegreeYear.SelectedItem.ToString() + '"';

                        using (MySqlConnection con = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
                        {
                            con.Open();
                            using (MySqlCommand update_details = new MySqlCommand(insert_com, con))
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
                                    Response.Write("<b>something really bad happened.....Please try again!</b> ");
                                }
                                finally
                                {
                                    con.Close();
                                }
                            }
                        }
                        lblMessage_Academic_1.ForeColor = System.Drawing.Color.Green;
                        lblMessage_Academic_1.Text = "Document Uploaded Successfully";
                    }
                    else
                    {
                        lblMessage_Academic_1.ForeColor = System.Drawing.Color.Red;
                        lblMessage_Academic_1.Text = "File Size exceeded " + limit / 1024 + " KB";
                    }
                }
                else
                {
                    lblMessage_Academic_1.ForeColor = System.Drawing.Color.Red;
                    lblMessage_Academic_1.Text = "File format not recognised." + " Upload pdf format";
                }

            }
        }
    }
}