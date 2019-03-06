<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SİGNUP.aspx.cs" Inherits="FINALPROJECT.SİGNUP" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://fonts.googleapis.com/css?family=Gamja+Flower" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
    <script src="http://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
    <link href="CSS/SIGNUP.css" rel="stylesheet" />
    <style>
        form {
    border-left: 3px solid whitesmoke;
    border-right: 3px solid whitesmoke;
    margin: auto;
    margin-top: 200px;
    margin-right: 100px;
    width: 300px;
    height: 400px;
    background-color: rgb(53, 64, 79);
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: space-around;
    transition-property: all;
    transition-duration: 0.4s;
    transition-delay: 0.0s;
    transition-timing-function: ease;
}

    form:hover {
        border-top:none;
        border-bottom:none;
        width: 300px;
        height: 400px;
    }
    #head{
        left:440px;
    }
    </style>
</head>
<body>
   
    <i class="fas fa-laptop-code icon"></i>
    
    <div id="head">
        SPOR HABERLERI LINKLERI
    </div>
    <form runat="server">
            
        <div ID="entry">SIGNUP</div>
            
        <div>
            <asp:TextBox ID="username" CssClass="inputs" runat="server" required="True" placeholder="İsim" AutoCompleteType="None" />
        </div>
        <div>
            <asp:TextBox ID="usersurname" CssClass="inputs" runat="server" required="True" placeholder="Soyisim" AutoCompleteType="None" />
        </div>
        <div>
            <asp:TextBox ID="userjob" CssClass="inputs" runat="server" required="True" placeholder="Meslek" AutoCompleteType="None" />
        </div>
        <div>
            <asp:TextBox ID="useremail" CssClass="inputs" runat="server" required="True" placeholder="Email" AutoCompleteType="None" />
        </div>
        <div>
            <asp:TextBox ID="userpassword" CssClass="inputs" runat="server" required="True" TextMode="Password" placeholder="Şifre" AutoCompleteType="None" />
        </div>
        <div id="out">
            <asp:Button ID="yolla" Text="SIGNIN" runat="server" OnClick="yolla_Click" />
        </div>
            

    </form>

</body>
</html>
