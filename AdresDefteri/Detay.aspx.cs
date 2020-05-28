using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AdresDefteri.DataLayer;
using AdresDefteri.Model;


namespace AdresDefteri
{
	public partial class Detay : System.Web.UI.Page
	{

		private   AddressDataHelper _helper=new AddressDataHelper();
		protected void Page_Load(object sender, EventArgs e)
		{
			Label1.Visible = false;

			if (!Page.IsPostBack)
			{

				int id;
				if (int.TryParse(Request.QueryString["id"],out id))
				{
					FormDataBind(id);
				}
			}
		}

		private void FormDataBind(int id)
		{
			var address = _helper.GetAddress(id);

			txtName.Text = address.Name;
			txtSurname.Text = address.Surname;
			txtNickName.Text = address.NickName;
			calBirth.SelectedDate = address.BirthDate;
			ddlGender.SelectedValue = address.Gender == true ? "Erkek" : "Bayan";
			txtMobile.Text = address.MobileNumber;
			txtHome.Text = address.HomeNumber;
			txtEmail.Text = address.Email;
			txtFax.Text = address.Fax;
			txtAddress.Text = address.UserAddress;
			txtNote.Text = address.Note;

		}

		protected void btnSave_Click(object sender, EventArgs e)
		{
			int id;
			if (!int.TryParse(Request.QueryString["id"],out id))
			{
				return;
			}
			var address = new Address();
			address.Name = txtName.Text;
			address.Surname = txtSurname.Text;
			address.NickName = txtNickName.Text;
			address.BirthDate = calBirth.SelectedDate;
			if (ddlGender.SelectedValue != "Seçiniz...")
			{
				address.Gender = ddlGender.SelectedValue == "Erkek";
			}
			address.MobileNumber = txtMobile.Text;
			address.HomeNumber = txtHome.Text;
			address.Fax = txtFax.Text;
			address.Email = txtEmail.Text;
			address.UserAddress = txtAddress.Text;
			address.Note = txtNote.Text;

		var result=	_helper.UpdateAddress(address);
			if (result>0)
			{
				Label1.Visible = true;
			}
		}
	

		

		protected void btnDeleteAddress_OnClick(object sender, EventArgs e)
		{
			var id = 0;
			if (int.TryParse(Request.QueryString["id"],out id))
			{
				if (_helper.DeleteAddress(id)>0)
				{
					ClientScript.RegisterStartupScript(GetType(),"Load","<script type='text/javascript'>window.parent.location.href='/Anasayfa.aspx'</script>");
				}
			}
		}
	}
}