using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using Microsoft.AspNet.Identity.Owin;

namespace LingerieCO5027
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReg_Click1(object sender, EventArgs e)
        {
            var identityDBContext = new IdentityDbContext("IqahConnectionString5");
            var roleStore = new RoleStore<IdentityRole>(identityDBContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            var userStore = new UserStore<IdentityUser>(identityDBContext);
            var manager = new UserManager<IdentityUser>(userStore);

            IdentityRole adminRole = new IdentityRole("Admin");
            roleManager.Create(adminRole);
            var user = new IdentityUser()
            {
                UserName = txtname.Text,
                Email = txtname.Text,
            };

            IdentityResult result = manager.Create(user, txtpswd.Text);
            if (result.Succeeded)
            {
                manager.AddToRole(user.Id, "Admin");
                manager.Update(user);
                litResult.Text = "Registration Successful"; //todo: Log in Then
            }
            else
            {
                litResult.Text = "An error has occured: " + result.Errors.FirstOrDefault();
            }
        }
    }
    }