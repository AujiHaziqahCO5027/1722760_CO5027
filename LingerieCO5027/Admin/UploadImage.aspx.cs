using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LingerieCO5027.Admin
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ProductId = Request.QueryString["ProductId"];
            string filename = ProductId + ".jpg";

            Img.ImageUrl = "~/image/" + filename;


        }


        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string ProductId = Request.QueryString["ProductId"];
            string filename = ProductId + ".jpg";
            string savelocation = Server.MapPath("~/image/" + filename);
            Imgupcontrol.SaveAs(savelocation);
        }
    }
}