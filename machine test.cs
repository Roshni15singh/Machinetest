using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Machine_test
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-HMHN45V  ;initial catalog=dbmachinetest ;integrated security= true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BINDDATA();
            }

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_emp_insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", txtname.Text);
            cmd.Parameters.AddWithValue("@Age", txtage.Text);
            cmd.Parameters.AddWithValue("@Qualification", txtquqlification.Text);
            cmd.Parameters.AddWithValue("@Organisation", txtorganization.Text);
            cmd.Parameters.AddWithValue("@Yearofexp", txtyrofexp.Text);
            cmd.Parameters.AddWithValue("@GrpforFitmentatRBAI", txtgrp.Text);
            cmd.Parameters.AddWithValue("@Position", txtpos.Text);
            cmd.Parameters.AddWithValue("@OverallRating", txtover.Text);
            cmd.Parameters.AddWithValue("@Location", txtlocation.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            BINDDATA();
        }

       public void BINDDATA()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_emp_get", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            grd.DataSource = dt;
            grd.DataBind();

        }






    }
}