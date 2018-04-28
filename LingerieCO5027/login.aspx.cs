using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace LingerieCO5027
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            var identityDBContext = new IdentityDbContext("IqahConnectionString5");
            var roleStore = new RoleStore<IdentityRole>(identityDBContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            var userStore = new UserStore<IdentityUser>(identityDBContext);
            var manager = new UserManager<IdentityUser>(userStore);

            IdentityRole adminRole = new IdentityRole("RegisteredUser");
            roleManager.Create(adminRole);
            var user = new IdentityUser()
            {
                UserName = txtname.Text,
                Email = txtname.Text,
            };

            IdentityResult result = manager.Create(user, txtpswd.Text);
            if (result.Succeeded)
            {
                manager.AddToRole(user.Id, "RegisteredUser");
                manager.Update(user);
                litResult.Text = "Registration Successful"; //todo: Log in Then
            }
            else
            {
                litResult.Text = "An error has occured: " + result.Errors.FirstOrDefault();
            }
        }

        protected void btnLog_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IqahConnectionString5");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtlognm.Text, txtlogpswd.Text);
            if (user != null)
            {
                LogUserIn(userManager, user);
                litResult2.Text = "Success login";
            }
            else
            {
                litResult2.Text = "Invalid username of password";
            }
        }
        private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

            if (Request.QueryString["~/login.aspx"] != null)
            {
                Response.Redirect(Request.QueryString["~/login.aspx"]);
            }
            else
            {
                String userRoles = usermanager.GetRoles(user.Id).FirstOrDefault();
                if (userRoles.Equals("Admin"))
                {
                    Response.Redirect("~/Admin/Index.aspx");
                }
            }
        }

        protected void txtlogpswd_TextChanged(object sender, EventArgs e)
        {

        }
    }
    }
        
 