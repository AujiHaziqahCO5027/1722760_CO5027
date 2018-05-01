using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace LingerieCO5027.Admin
{
    public partial class image : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ProductId = Request.QueryString["ProductId"];
            string filename = ProductId + ".jpg";

            Img.ImageUrl = "/image/" + filename;

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string ProductId = Request.QueryString["ProductId"];

            string filename = ProductId + ".jpg";
            string saveLocation = Server.MapPath("~/image/" + filename);

            Imgupcontrol.SaveAs(saveLocation);
        }
    }
}