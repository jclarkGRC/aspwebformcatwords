using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsHelloWorld
{
    public partial class Game : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            object savedCategory = Session["currentCategory"];
            currentCategory.Text = savedCategory.ToString();
            if (!IsPostBack)
            {
                Session["Timer"] = DateTime.Now.AddSeconds(30).ToString();
            }   
        }
        protected void CountSeconds_Tick(object sender, EventArgs e)
        {
            if(DateTime.Compare(DateTime.Now, DateTime.Parse(Session["Timer"].ToString())) < 0)
            {
                msg.Text = "Time Left: " + (((Int32)DateTime.Parse(Session["Timer"].ToString()).Subtract(DateTime.Now).TotalSeconds)%60).ToString() + " Seconds";
            }
            else
            {
                msg.Text = "Time's up!";
                Response.Redirect("Contact.aspx");
            }
        }

        protected void Save_Word(object sender, EventArgs e)
        {
            // Get the current word from the text field
            string currentWord = CurrentWord.Text;
            // Update the label text with the starting letter
            SavedWord.Text = "Enter a word that starts with: "
                + Get_Last_Letter_Of_Word(currentWord);
            // Push the word to the used words list
            usedWords.Items.Add(currentWord);
            // clear the text field after submission
            CurrentWord.Text = "";
            //Reset the timer after entering a word
            Session["Timer"] = DateTime.Now.AddSeconds(30).ToString();
        }
        
        protected char Get_Last_Letter_Of_Word(string word)
        {
            char lastLetter = word[word.Length - 1];
            lastLetter = char.ToUpper(lastLetter);
            return lastLetter;
        }
    }
}

         
            
  



         
