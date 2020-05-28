<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detay.aspx.cs" Inherits="AdresDefteri.Detay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
											<asp:Button ID="btnSave" runat="server" Text="Kaydet" OnClick="btnSave_Click"/>

										  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                      <asp:Button runat="server" ID="btnDeleteAddress" Text="Sil" OnClientClick="javascript:return confirm('Dİkkat bu kaydı silinecek');" OnClick="btnDeleteAddress_OnClick" />
										 </td>
                  </tr>

                </table>

        </div>
    </form>
</body>
</html>
