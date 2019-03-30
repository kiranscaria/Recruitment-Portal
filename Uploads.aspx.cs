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
   private int user_id = 0;
  
    const int MAX_ALLOWED_JOURNALS = 10;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            user_id = int.Parse(Request.Cookies["uid"].Value);
        }
        catch (Exception ex)
        {

        }
        fillDegreeTypeDropDown();
        fillResearchDegreeDropDown();
        fillEmployerDropDown();
    }

    protected void fillResearchDegreeDropDown()
    {
        if (!this.IsPostBack)
        {
            using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
            {
                connection.Open();

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

    /// <summary>
    /// DropDown values updation
    /// </summary>
    protected void fillEmployerDropDown()
    {
        if (!this.IsPostBack)
        {
            using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
            {
                connection.Open();

                string retrieve_command = "select distinct Employer from experience_table where User_ID = " + user_id.ToString();

                using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
                {
                    employer.DataSource = retrieve_details.ExecuteReader();
                    employer.DataTextField = "Employer";
                    employer.DataBind();
                }
            }

            employer.Items.Insert(0, new ListItem("Employer", "0"));
        }
    }



    protected void Employer_Changed(object sender, EventArgs e)
    {
        using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
        {
            connection.Open();
            string retrieve_command = "select distinct Designation from experience_table where User_ID = " + user_id.ToString() + " and Employer = '" + employer.SelectedItem.ToString() + "'";

            using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
            {
                designation.DataSource = retrieve_details.ExecuteReader();
                designation.DataTextField = "Designation";
                designation.DataBind();
            }
        }

        designation.Items.Insert(0, new ListItem("Select Designation", "0"));
    }

    protected void Designation_Changed(object sender, EventArgs e)
    {
        using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
        {
            connection.Open();
            string retrieve_command = "select distinct Status from experience_table where Designation = " + '"' + designation.SelectedItem.ToString() + '"' + " and User_ID = " + user_id.ToString() ;

            using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
            {
                status.DataSource = retrieve_details.ExecuteReader();
                status.DataTextField = "Status";
                status.DataBind();
            }
        }

        status.Items.Insert(0, new ListItem("Select Status", "0"));
    }

    /// <summary>
    /// 
    /// </summary>



    protected void researchUniversityName_Changed(object sender, EventArgs e)
    {
        using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
        {
            connection.Open();
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






    protected void paperOrBook_Changed(object sender, EventArgs e)
    {
        using (MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True"))
        {
            connection.Open();
            if(paperOrBook.SelectedItem.ToString().Equals("Research Paper"))
            {
               string retrieve_command = "select distinct TitleOfPaper from api_data_iii_a where User_ID = " + user_id.ToString();
                using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
                {
                    paperOrBookSelected.DataSource = retrieve_details.ExecuteReader();
                    paperOrBookSelected.DataTextField = "TitleOfPaper";
                    paperOrBookSelected.DataBind();
                }
                paperOrBookSelected.Items.Insert(0, new ListItem("Select Research Paper", "0"));
            }
            else
            {
              string  retrieve_command = "select distinct Title from api_data_iii_b where User_ID = " + user_id.ToString();
                using (MySqlCommand retrieve_details = new MySqlCommand(retrieve_command, connection))
                {
                    paperOrBookSelected.DataSource = retrieve_details.ExecuteReader();
                    paperOrBookSelected.DataTextField = "Title";
                    paperOrBookSelected.DataBind();
                }
                paperOrBookSelected.Items.Insert(0, new ListItem("Select Books", "0"));

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


    protected void btnUpload_Experience_Click1(object sender, EventArgs e)
    {
        if (FileUploadExperience.HasFiles)
        {
            foreach (HttpPostedFile uploadedFile in FileUploadExperience.PostedFiles)
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

                        string fileName = employer.SelectedItem.ToString() + " " + designation.SelectedItem.ToString() + " " + status.SelectedItem.ToString() + ext;
                        string fullPath = Server.MapPath("~/DegreeDocs/").ToString() + fileName;
                        
                        uploadedFile.SaveAs(System.IO.Path.Combine(Server.MapPath("~/DegreeDocs/"), fileName));
                        fileListExp.Text += String.Format("{0}<br />", uploadedFile.FileName);

                        string insert_com = "update experience_table set File_Upload = '" +   fileName.ToString() + "'" + " where User_ID = " + user_id + " and Employer = '"  + employer.SelectedItem.ToString()  + "' and Designation = '"  + designation.SelectedItem.ToString()  + "' and Status = '"  + status.SelectedItem.ToString() + "'";

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
                        lblMessage_Experience.ForeColor = System.Drawing.Color.Green;
                        lblMessage_Experience.Text = "Document Uploaded Successfully";
                    }
                    else
                    {
                        lblMessage_Experience.ForeColor = System.Drawing.Color.Red;
                        lblMessage_Experience.Text = "File Size exceeded " + limit / 1024 + " KB";
                    }
                }
                else
                {
                    lblMessage_Experience.ForeColor = System.Drawing.Color.Red;
                    lblMessage_Experience.Text = "File format not recognised." + " Upload pdf format";
                }

            }
        }
    }

    protected void btn_paperOrBooksUpload_Click(object sender, EventArgs e)
    {
        string sql = "SELECT count(*) FROM api_data_iii_b where isnull(File_Upload) and User_ID = " + user_id;
        string sql2 = "SELECT count(*) FROM api_data_iii_a where isnull(File_Upload)";

        MySqlConnection conn = new MySqlConnection("server=localhost;user id=root; password = tiger; database=recruitmentdatabase; persistsecurityinfo=True");
        conn.Open();
        MySqlCommand cmd2 = new MySqlCommand(sql, conn);
        MySqlCommand cmd = new MySqlCommand(sql2, conn);
        int count1 = 0;
        int count2 = 0;

        MySqlDataReader reader = cmd2.ExecuteReader();
        while (reader.Read())
        {
            count1 = int.Parse(reader.GetString("count(*)"));
        }
        reader.Close();
        MySqlDataReader reader2 = cmd.ExecuteReader();
        while (reader2.Read())
        {
            count2 = int.Parse(reader2.GetString("count(*)"));
        }

        if (conn != null) conn.Close();

        if((count1 + count2 + 1) > MAX_ALLOWED_JOURNALS)
        {
            lblMessage_paperOrBooks.ForeColor = System.Drawing.Color.Red;
            lblMessage_paperOrBooks.Text = "Maximum allowed journals exceed";
            return;
        }

        if (FileUploadPapersOrBooks.HasFiles)
        {
            foreach (HttpPostedFile uploadedFile in FileUploadPapersOrBooks.PostedFiles)
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
                        

                        string fileName = paperOrBook.SelectedItem.ToString() + " " + paperOrBookSelected.SelectedItem.ToString()  + ext;
                        string fullPath = Server.MapPath("~/DegreeDocs/").ToString() + fileName;

                        uploadedFile.SaveAs(System.IO.Path.Combine(Server.MapPath("~/DegreeDocs/"), fileName));
                        fileListExp.Text += String.Format("{0}<br />", uploadedFile.FileName);
                        string insert_com = "";
                        if (paperOrBook.SelectedItem.ToString().Equals("Research Paper"))
                        {
                             insert_com = "update api_data_iii_a set File_Upload = " + '"' + fileName.ToString() + '"' + "where User_ID = " + user_id.ToString() + " and TitleOfPaper = " + '"' + paperOrBookSelected.SelectedItem.ToString()  + '"';
                        }
                        else
                        {
                            insert_com = "update api_data_iii_b set File_Upload = " + '"' + fileName.ToString() + '"' + "where User_ID = " + user_id.ToString() + " and Title = " + '"' + paperOrBookSelected.SelectedItem.ToString() + '"';
                        }
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
                        lblMessage_paperOrBooks.ForeColor = System.Drawing.Color.Green;
                        lblMessage_paperOrBooks.Text = "Document Uploaded Successfully";
                    }
                    else
                    {
                        lblMessage_paperOrBooks.ForeColor = System.Drawing.Color.Red;
                        lblMessage_paperOrBooks.Text = "File Size exceeded " + limit / 1024 + " KB";
                    }
                }
                else
                {
                    lblMessage_paperOrBooks.ForeColor = System.Drawing.Color.Red;
                    lblMessage_paperOrBooks.Text = "File format not recognised." + " Upload pdf format";
                }

            }
        }
    }
}



