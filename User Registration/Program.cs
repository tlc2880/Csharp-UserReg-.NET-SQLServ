//  Name: Tommy Cao
//  Date: 07/11/15
//  Title: C# - User Registration or Sign Up Form with SQL Server
//  Description:  Implementation of user registration or sign up form in C# windows form application.

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace User_Registration
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Form1());
        }
    }
}
