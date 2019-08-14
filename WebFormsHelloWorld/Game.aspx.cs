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
        // protected List<string> usedWords = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            object savedCategory = Session["currentCategory"];
            currentCategory.Text = savedCategory.ToString();
        }

        protected void Save_Word(object sender, EventArgs e)
        {
            // Get the current word from the text field
            string currentWord = CurrentWord.Text;
            // Update the label text with the starting letter
            SavedWord.Text = "Enter a word that starts with: "
                + Get_Last_Letter_Of_Word(currentWord);
            // Push the word to the used words list
            // this.usedWords.Add(currentWord);
            usedWords.Items.Add(currentWord);
            // clear the text field after submission
            CurrentWord.Text = "";
        }

        protected char Get_Last_Letter_Of_Word(string word)
        {
            char lastLetter = word[word.Length - 1];
            lastLetter = char.ToUpper(lastLetter);
            return lastLetter;
        }
    }
}