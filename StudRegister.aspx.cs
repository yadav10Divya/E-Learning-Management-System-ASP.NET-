using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Net;
using System.Net.Mail;

public partial class admin_StudRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //DropDownList1.Items.Clear();
        string connectionString = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);

        con.Open();
        SqlCommand cmd = new SqlCommand("Select Distinct(Name) from CET_branch1", con);
        cmd.Connection = con;
        var obj = cmd.ExecuteReader();
        while (obj.Read())
        {
            DropDownList1.Items.Add(obj.GetString(obj.GetOrdinal("Name")));
        }
        obj.Dispose();
        con.Close();
          
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }



   
    protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
    protected void grdView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "lnkbtnEdit")
        {
            string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
            string TeacherID = commandArgs[0];
            string TFName = commandArgs[1];
            string TMName = commandArgs[2];
            string TLName = commandArgs[3];
            string Subject = commandArgs[4];
            string MNo = commandArgs[5];
            string Add = commandArgs[6];

            Response.Redirect("UpdateStudent.aspx?Student_ID=" + TeacherID + "&SFName=" + TFName + "&SMName=" + TMName + "&SLName=" + TLName + "&STD=" + Subject + "&MNo=" + MNo + "&Address=" + Add);
        }
        if (e.CommandName == "lnkbtnDelete")
        {
            string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
            string TeacherID = commandArgs[0];
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("Delete CET_tbl_Student_Register1 where Student_ID= " + Convert.ToInt32(TeacherID) + "");
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("<script LANGUAGE= 'JavaScript' >alert ('Record Delete Successfully')</Script>");
                con.Close();

            }
            catch (Exception ex)
            {

            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

            int cnt = 0;
            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["ConString"].ConnectionString);
            con.Open();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = "Select Count(Student_ID) from CET_tbl_Student_Register1";
        cmd1.Connection = con;
        cnt = Convert.ToInt32(cmd1.ExecuteScalar());

        if (cnt > 0)
        {
            cmd1.CommandText = "Select Max(Student_ID) from CET_tbl_Student_Register1";
            cmd1.Connection = con;
            cnt = Convert.ToInt32(cmd1.ExecuteScalar());
            cnt = cnt + 1;
        }
        else
        {
            cnt = cnt + 1;
        }

        Random Password = new Random();
        int NewPassword = Password.Next(1000, 10000);

            String Seat = Request.Form["seatno"];
            String Prn = Request.Form["prn"];
            String Name = Request.Form["fname"];
            String MName = Request.Form["mname"];
            String LName = Request.Form["lname"];
            String std = DropDownList1.Text;
            String year = DropDownList2.Text;
            String sem = DropDownList3.Text;
            String mobile= Request.Form["email"];
            String address = Request.Form["address"];
            String strQuery = "insert into CET_tbl_Student_Register1 (Stud_First_Name,Stud_Middle_Name,Stud_Last_Name,Branch,Mobile_No,Address,Password,Seat_No,PRN,Year,Semester) values ('" + Name+ "', '" + MName + "', '" + LName + "','" + std + "','" + mobile + "', '" + address + "', '" + NewPassword + "', '" + Seat + "', '" + Prn + "', '" + year + "', '" + sem + "' )";
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

            Response.Write("<script LANGUAGE= 'JavaScript' >alert ('Record Save Successfully')</Script>");

        try
        {
            try
            {
                MailMessage message = new MailMessage();
                message.From = new MailAddress("contact@ecssofttech.com");

                message.To.Add(new MailAddress(address));

                message.Subject = "Your Account Password And Other Details";
                message.Body = "Dear '" + Name + "' Your Username Is '" + mobile + "' And Password Is '" + NewPassword + "'";

                SmtpClient client = new SmtpClient();
                client.Host = "relay-hosting.secureserver.net";
                client.Port = 25;
                client.Send(message);

                Response.Write("Success");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }


        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
            //If the message failed at some point, let the user know
            //lblResult.Text = ex.ToString(); //alt text "Your message failed to send, please try again."
        }

    }
}

