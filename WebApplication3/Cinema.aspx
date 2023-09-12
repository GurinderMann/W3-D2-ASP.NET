<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cinema.aspx.cs" Inherits="WebApplication3.Cinema" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
      
      <div  class="w-25 mx-auto mt-5 d-flex flex-column">
           <h2>Benvenuto al cinema</h2>

        <form>

         <div class="mb-3">
        <label class="form-label">Inserisci il tuo nome</label>
        <input id="nome" type="text" class="form-control" runat="server">
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNome" runat="server"
        ControlToValidate="nome"
        InitialValue=""
        ErrorMessage="Il campo Nome è obbligatorio."
        ForeColor="Red"
        Display="Dynamic">
       </asp:RequiredFieldValidator>
        </div>

        <div class="mb-3">
        <label class="form-label">Inserisci il tuo Cognome</label>
        <input id="cognome" type="text" class="form-control" runat="server">
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCognome" runat="server"
        ControlToValidate="cognome"
        InitialValue=""
        ErrorMessage="Il campo Cognome è obbligatorio."
        ForeColor="Red"
        Display="Dynamic">
        </asp:RequiredFieldValidator>
        </div>

        <asp:DropDownList CssClass="dropdown-center" ID="DropDownList1" runat="server"  
                OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem CssClass="dropdown-item" Value="SalaNord" Text="Sala Nord"></asp:ListItem>
                <asp:ListItem CssClass="dropdown-item" Value="SalaSud" Text="Sala Sud"></asp:ListItem>
                <asp:ListItem CssClass="dropdown-item" Value="SalaEst" Text="Sala Est"></asp:ListItem>
            </asp:DropDownList>

           <div class="d-flex w-100 mt-3 justify-content-center  "> 
           <p>Biglietto ridotto</p>
           <asp:CheckBox ID="CheckBox1" runat="server" CssClass="form-check" />
                     
           </div>
         <asp:Button ID="Button1" runat="server" Text="Prenota"  class="btn btn-primary" OnClick="Button1_Click" />
       </form>

     


            </div>
    </form>
       <div class="d-flex flex-column align-items-center justify-content-center mt-5 mx-auto w-25 text-bg-success">
       <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
       <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
       <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
       
   </div>
</body>
</html>
