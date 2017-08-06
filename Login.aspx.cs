using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


public partial class Login : System.Web.UI.Page
{
    MySqlConnection connection = new MySqlConnection("server=localhost;user id=root; password = blackhat; database=curaj_recruitment; persistsecurityinfo=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private bool ValidateCredentials(string userName, string password)
    {
        bool returnValue = false;

        if (userName.Length <= 50 && password.Length <= 30)
        {

            try
            {
                string sql = "select count(*) from user_credentials where Email = @username limit 1";
                string sql2 = "select * from user_credentials where Email = @username2 limit 1";


                connection.Open();
                MySqlCommand cmd = new MySqlCommand(sql, connection);

                MySqlParameter user = new MySqlParameter();
                user.ParameterName = "@username";
                user.Value = userName.Trim();
                cmd.Parameters.Add(user);

                int count = Convert.ToInt32(cmd.ExecuteScalar());

                if (count > 0)
                {
                    MySqlCommand cmd2 = new MySqlCommand(sql2, connection);

                    MySqlParameter user2 = new MySqlParameter();
                    user2.ParameterName = "@username2";
                    user2.Value = userName.Trim();
                    cmd2.Parameters.Add(user2);

                    MySqlDataReader reader = cmd2.ExecuteReader();
                    string hashedPass = "";
                    while (reader.Read())
                    {
                        hashedPass = reader.GetString("acc_password");
                    }

                    if(Hashing.ValidatePassword(password,hashedPass))
                        returnValue = true;          
                }
            }
            catch (MySqlException ex)
            {
                // Log your error
              //  errorLabel.Text = ex.ToString();
            }
            finally
            {
                if (connection != null) connection.Close();
            }
        }
        else
        {
            //errorLabel.Text = "Username or password exceed the limit";
        }

        return returnValue;
    }


    protected void loginBtn_Click(object sender, EventArgs e)
    {
        string EncodedResponse = Request.Form["g-recaptcha-response"];

        if (Recaptcha.Validater(EncodedResponse).Equals("True"))
        {
            //Here goes the real meat of login
            string uname = loginEmail.Text;
            string upass = loginPwd.Text;

            if (ValidateCredentials(uname, upass))
            {

                string guid = Guid.NewGuid().ToString();

                Session["AuthToken"] = guid;
                
                Response.Cookies.Add(new HttpCookie("AuthToken", guid));

                string sql2 = "select * from user_credentials where Email = @username2 limit 1";

                try
                {
                    connection.Open();

                    MySqlCommand cmd2 = new MySqlCommand(sql2, connection);

                    MySqlParameter user2 = new MySqlParameter();
                    user2.ParameterName = "@username2";
                    user2.Value = uname.Trim();
                    cmd2.Parameters.Add(user2);

                    MySqlDataReader reader = cmd2.ExecuteReader();
                    string email_id = "";
                    string user_id = "";

                    while (reader.Read())
                    {
                        email_id = reader.GetString("Email");
                        user_id = reader.GetString("User_ID");
                    }


                    Response.Cookies.Add(new HttpCookie("email", email_id));
                    Response.Cookies.Add(new HttpCookie("uid", user_id));

                    System.Diagnostics.Debug.WriteLine(Request.Cookies["email"].Value);
                    System.Diagnostics.Debug.WriteLine(Request.Cookies["uid"].Value);
                   
                }
                catch(MySqlException ex)
                {

                }
                finally
                {
                    if (connection != null) connection.Close();
                }

                Response.Redirect("GeneralDetails.aspx");
            }
            else
            {
                invalid_usrPwd.Visible = true;
            }


        }
        else
        {
            captchaVerification.Visible = true;
        }
    }
}