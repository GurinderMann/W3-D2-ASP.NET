<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication3.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    
    <div  class="w-25 mx-auto mt-5 d-flex flex-column">
        <form runat="server">

            <div class="mb-3">

             <label for="exampleInputEmail1" class="form-label">Email address</label
             <input id="email" type="email" class="form-control" aria-describedby="emailHelp" runat="server" required />
             <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>

             <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server"
                 ControlToValidate="email" ErrorMessage="Email is required." Display="Dynamic" ForeColor="Red" />

             <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server"
                ControlToValidate="email" ErrorMessage="Invalid email format." Display="Dynamic" ForeColor="Red"
                ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />

              </div>

             <div class="mb-3">

            <label for="exampleInputPassword1" class="form-label">Password</label>
            <input runat="server" id="password" type="password" class="form-control" required />

            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server"
                ControlToValidate="password" ErrorMessage="Password is required." Display="Dynamic" ForeColor="Red" />
             </div>
    
             <asp:Button ID="Button1" runat="server" Text="Registra"  class="btn btn-primary" OnClick="Button1_Click" />
        </form>

     </div>
    
</body>
</html>
