using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Somewords : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
 
    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
        
    }

    protected void CBF110013_DDL1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selectedWord = CBF110013_DDL1.SelectedItem.ToString();
        string yahooSearchUrl = $"https://tw.dictionary.search.yahoo.com/search?p={selectedWord}";
        string hyperlinkHtml = $"<a href='{yahooSearchUrl}'>{selectedWord}</a>";

        CBF110013msg.Text += $"{hyperlinkHtml} ==> {CBF110013_DDL1.SelectedValue.ToString()}<br/>";

    }
   
    protected void CBF110013_PreviousButton_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Url = "Default.aspx";

      
        Response.Redirect(Url);
    }



  
}