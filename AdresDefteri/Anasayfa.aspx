<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="AdresDefteri.Anasayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


	<link href="Content/Style/main.css" rel="stylesheet" />
	<link href="Content/Script/fancybox/dist/jquery.fancybox.min.css" rel="stylesheet" />
	
    <title>Adres Defteri</title>
	
 
</head>
<body>
    <form id="form1" runat="server">
      <div id="pageContainer">
        <div class="header">
          <div id="mainContent">
						<%--ana sayfa içerk burada yer alacak---%>
            <div id="operations">
              <ul>
                <li><a id="btnAddress" href="javascript:;">Yeni Adres</a></li>
                <li><a id="btnAddresses" href="javascript:;">Adreslerim</a></li>
              </ul>
            </div>

            <div id="operationContainer">
              <div id="newAddress">
                <table>
                  <tr>
                    <td>Ad</td>
                    <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox>
											<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Ad alanı gereklidir." ForeColor="Red"></asp:RequiredFieldValidator>
											</td>
                  </tr>

                   <tr>
                    <td>Soyad</td>
                    <td><asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
											<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSurname" ErrorMessage="Soyad alanı boş geçilemez." ForeColor="Red"></asp:RequiredFieldValidator>
										 </td>
                  </tr>


                  
                   <tr>
                    <td>Takma Ad</td>
                    <td><asp:TextBox ID="txtNickName" runat="server"></asp:TextBox></td>
                  </tr>


                  
                   <tr>
                    <td>Doğum Tarih</td>
                    <td>
											<asp:Calendar ID="calBirth" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
												<DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
												<NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
												<OtherMonthDayStyle ForeColor="#CC9966" />
												<SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
												<SelectorStyle BackColor="#FFCC66" />
												<TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
												<TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
											</asp:Calendar>
										 </td>
                  </tr>


                  
                   <tr>
                    <td>Cinsiyet</td>
                    <td>
											<asp:DropDownList ID="ddlGender" runat="server">
												<asp:ListItem>Seçiniz..</asp:ListItem>
												<asp:ListItem>Erkek</asp:ListItem>
												<asp:ListItem>Bayan</asp:ListItem>
											</asp:DropDownList>
										 </td>
                  </tr>


                  
                   <tr>
                    <td>Cep Telefonu</td>
                    <td><asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
											<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMobile" ErrorMessage="Cep telefonu alanı boş bırakılamaz." ForeColor="Red"></asp:RequiredFieldValidator>
										 </td>
                  </tr>


                  
                   <tr>
                    <td>Sabit Telefon</td>
                    <td><asp:TextBox ID="txtHome" runat="server"></asp:TextBox></td>
                  </tr>


                  
                   <tr>
                    <td>E-Posta</td>
                    <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                  </tr>


                  
                   <tr>
                    <td>Fax</td>
                    <td><asp:TextBox ID="txtFax" runat="server"></asp:TextBox></td>
                  </tr>


                  
                   <tr>
                    <td>Adres</td>
                    <td><asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></td>
                  </tr>


                  
                   <tr>
                    <td>Not</td>
                    <td><asp:TextBox ID="txtNote" runat="server"></asp:TextBox></td>
                  </tr>


                  
                   <tr>
                    <td>&nbsp;</td>
                    <td>
											<asp:Button ID="btnSave" runat="server" Text="Kaydet" OnClick="btnSave_Click" />
										 </td>
                  </tr>

                </table>

              </div>
              <div id="myAddresses">
                
                <div id="searchControl">
                  
                  <asp:TextBox runat="server" ID="txtSearchKeyword"></asp:TextBox>
                  <asp:Button runat="server" ID="btnSearch" Text="Ara" CausesValidation="False" OnClick="btnSearch_OnClick"/>
                </div>
                
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" CssClass="gvAddress">
									<AlternatingRowStyle BackColor="White" />
									<Columns>
										<asp:BoundField DataField="Name" HeaderText="Ad" />
										<asp:BoundField DataField="Surname" HeaderText="Soyad" />
										<asp:BoundField DataField="NickName" HeaderText="Takma Ad" />
										<asp:BoundField DataField="MobileNumber" HeaderText="Cep Numarası" />
										<asp:BoundField DataField="Email" HeaderText="E-Posta" />
										<asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Detay.aspx?id={0}" Text="Detay" />
									</Columns>
									<EditRowStyle BackColor="#2461BF" />
									<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
									<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
									<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
									<RowStyle BackColor="#EFF3FB" />
									<SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
									<SortedAscendingCellStyle BackColor="#F5F7FB" />
									<SortedAscendingHeaderStyle BackColor="#6D95E1" />
									<SortedDescendingCellStyle BackColor="#E9EBEF" />
									<SortedDescendingHeaderStyle BackColor="#4870BE" />
								</asp:GridView>
                
                
              </div>
            </div>

            <div class="cls"></div>


          </div>
        </div>
      </div>
			
        <div>
        </div>
    </form>

  <!--javascript -->
   <script   src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="Content/Script/fancybox/dist/jquery.fancybox.min.js"></script>

  <script src="Content/Script/main.js"></script>
</body>
</html>
<!--DESKTOP-I43KRTU\MSSQLSERVER2019-->