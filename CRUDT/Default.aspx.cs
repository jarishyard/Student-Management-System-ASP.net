using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUDT
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadStudents();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (StudentID.Text.Length == 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please Enter Student ID');", true);
                return;
            }

            if (StudentName.Text.Length==0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please Enter Student Name');", true);
                return;
            }

            if (Country.SelectedIndex <= 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please Select Country');", true);
                return;
            }

            if (Age.Text.Length == 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please Enter Age');", true);
                return;
            }

            if (Mobile.Text.Length == 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please Enter Mobile');", true);
                return;
            }

            SqlConnection con = new SqlConnection("Data Source = JARISH; Initial Catalog = ProgrammingDB; Persist Security Info = True; User ID = sa; Password = 1234567; ");
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into Studentinfo_Tab values(" + int.Parse(StudentID.Text) + ", '" + StudentName.Text + "', '" + Country.SelectedValue + "', " + double.Parse(Age.Text) + ", '" + Mobile.Text + "')", con);
            comm.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
            
            con.Close();

            LoadStudents();


        }

         void LoadStudents()
        {
            SqlConnection con = new SqlConnection("Data Source = JARISH; Initial Catalog = ProgrammingDB; Persist Security Info = True; User ID = sa; Password = 1234567; ");
            con.Open();

            SqlCommand comm = new SqlCommand("select * from Studentinfo_Tab;", con);

            DataTable dtStudentList = new DataTable();
            dtStudentList.Load(comm.ExecuteReader());
            StudentList.DataSource = dtStudentList;
            StudentList.DataBind();

            con.Close();


        }
    }


}