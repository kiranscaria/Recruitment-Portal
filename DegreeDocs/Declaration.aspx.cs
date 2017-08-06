using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Declaration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void nocChanged(object sende, EventArgs e)
    {
        if(nocCheck.Checked == true)
        {
            nocText2.Visible = true;
            nocText.Visible = false;
            nocTable.Visible = false;
        }
        else
        {
            nocText.Visible = true;
            nocText2.Visible = false;
            nocTable.Visible = true;
        }

    }

    protected void btnSaveDeclaration_Click(object Sender, EventArgs e)
    {
        lblNameHead.Text = nocNameOfHead.Text;
        lblDesgHead.Text = nocDesignation.Text;
        lblPlaceHead.Text = nocPlace.Text;
        lblDateHead.Text = nocDate.Text;
        lblAddressHead.Text = nocAddress.Text;

        if (nocCheck.Checked == true)
        {
            tblDeclaration.Visible = true;
            tblDeclaration2.Visible = true;
            tblDeclaration1.Visible = false;
            tableDeclaration.Visible = false;
        }
        else
        {
            tblDeclaration.Visible = true;
            tblDeclaration2.Visible = false;
            tblDeclaration1.Visible = true;
            tableDeclaration.Visible = false;
        }
    }

    protected void btnDeclarationrEdit_Click(object Sender, EventArgs e)
    {
        tblDeclaration.Visible = false;
        tableDeclaration.Visible = true;
    }

    protected void btnDeclarationNext_Click(object Sender, EventArgs e)
    {
        Response.Redirect("Uploads.aspx");
    }
}