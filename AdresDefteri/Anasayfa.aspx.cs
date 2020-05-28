using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AdresDefteri.Model;
using AdresDefteri.DataLayer;

namespace AdresDefteri
{
	public partial class Anasayfa : System.Web.UI.Page
	{
		AddressDataHelper _helper = new AddressDataHelper();

		
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!Page.IsPostBack)
			{
				var data = _helper.GetAddresses();
				GridViewDataBind(data);
			}

			var activePage = ActivePage;
			ClientScript.RegisterStartupScript(GetType(),"Page","<script type='text/javascript'>setActivePage('"+activePage+"')</script>");
		}

		private void GridViewDataBind(List<Address> data)
		{
			GridView1.DataSource = data;
			GridView1.DataBind();
		}

		protected void btnSave_Click(object sender, EventArgs e)
		{
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
			var affectedRowsNumber=_helper.AddAddress(address);
			if (affectedRowsNumber>0)
			{
				
				ClearAddressForm();
			}
			
		}

		private void ClearAddressForm()
		{
			
			txtName.Text = string.Empty;
			txtSurname.Text = string.Empty;
			txtNickName.Text = string.Empty;
			calBirth.SelectedDate = DateTime.Now;
			ddlGender.SelectedIndex = 0;
			txtMobile.Text = string.Empty;
			txtHome.Text = string.Empty;
			txtAddress.Text = string.Empty;
			txtFax.Text = String.Empty;
			txtEmail.Text = string.Empty;
			txtNote.Text = string.Empty;
		}

		protected void btnSearch_OnClick(object sender, EventArgs e)
		{
			if (!string.IsNullOrEmpty((txtSearchKeyword.Text)))
			{
				var keyword = txtSearchKeyword.Text;
				List<Address> data = _helper.GetAddress(keyword);
				GridView1.DataSource = data;
				GridView1.DataBind();
				ActivePage = "addresses";
			}
		}

		public string ActivePage
		{
			get
			{
				var sessionActivePage = Session["activePage"];
				return sessionActivePage != null ? sessionActivePage.ToString() : string.Empty;
			}
			set { Session["activePage"] = value; }
		}
	}
}