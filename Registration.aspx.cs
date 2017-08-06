using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Registration : System.Web.UI.Page
{
    MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = blackhat; database = curaj_recruitment;persistsecurityinfo=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        logout();
    }

    protected void registerBtn_Click(object sender, EventArgs e)
    {
        string EncodedResponse = Request.Form["g-recaptcha-response"];

        if (Recaptcha.Validater(EncodedResponse).Equals("True"))
        {
            if (!(pwdRegister.Text.Equals(pwdConfRegister.Text)))
            {
                passwordMatchWarning.Visible = true;
                return;
            }
            if (!(regEmail.Text.Equals(regConfEmail.Text)))
            {
                emailMatchWarning.Visible = true;
                return;
            }
            try
            {
                connection.Open();
            }
            catch (MySqlException ex)
            {
                // Error log
            }
            try
            {

                MySqlCommand cmd = connection.CreateCommand();
                string hashedPass = Hashing.HashPassword(pwdRegister.Text);

                cmd.CommandText = "INSERT INTO user_credentials(Email, acc_password, Mobile_No) values (@email_id,@passwd,@mobileNo)";
                
                cmd.Parameters.AddWithValue("@email_id", regEmail.Text);
                cmd.Parameters.AddWithValue("@passwd", hashedPass);
                cmd.Parameters.AddWithValue("@mobileNo", registerMobile.Text);

                int check = cmd.ExecuteNonQuery();
                if (check > 0)
                {
                    accountCreated.Visible = true;
                }
            }
            catch (MySqlException ex)
            {
                if (ex.Number == 1062)
                {
                    emailExistWarning.Visible = true;
                    return;
                }
                else
                {

                    // remove this after testing .....
                    //errorLabel.Text = ex.ToString();
                }
            }
            finally
            {
                if ((connection != null)) connection.Close();
            }
        }
        else
        {
            captchaVerification.Visible = true;
        }

        regEmail.Text = "";
        regConfEmail.Text = "";
        pwdRegister.Text = "";
        pwdConfRegister.Text = "";
        registerMobile.Text = "";
    }

    public void logout()
    {
        Session.Clear();
        Session.Abandon();
        Session.RemoveAll();

        if (Request.Cookies["ASP.NET_SessionId"] != null)
        {
            Response.Cookies["ASP.NET_SessionId"].Value = string.Empty;
            Response.Cookies["ASP.NET_SessionId"].Expires = DateTime.Now.AddMonths(-20);
        }

        if (Request.Cookies["AuthToken"] != null)
        {
            Response.Cookies["AuthToken"].Value = string.Empty;
            Response.Cookies["AuthToken"].Expires = DateTime.Now.AddMonths(-20);
        }
    }
}