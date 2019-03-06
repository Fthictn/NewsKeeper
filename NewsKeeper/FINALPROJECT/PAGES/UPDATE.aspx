<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UPDATE.aspx.cs" Inherits="FINALPROJECT.UPDATE" %>

<!DOCTYPE html>
<html>
<head>
	<title></title>
    <link href="CSS/INDEX.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Black+And+White+Picture" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"  crossorigin="anonymous">	
    <script src="http://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Audiowide" rel="stylesheet">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        #login{
            width:100%;
            height:100%;
        }
        #profil{
            position:absolute;
            top:200px;
            left:425px;
            width: 360px;
            height: 420px;
        }
        #profil:hover{
            width: 360px;
            height: 420px;       
        }
        body{
            background-color: rgb(53, 64, 79);
        }
        #icerik{
            overflow:auto;
        }
        .kaydetlink{
            color:whitesmoke;
        }
        td a{
            color:whitesmoke;
        }
        #login {
            border-right: 2px solid whitesmoke;   
            border-left: 2px solid whitesmoke;              
        }

    #login:hover {
        border-top:none;
        border-bottom: none;
            }
    #email{
        margin-top:0px;
        margin-bottom:10px;

    }
    #second{
        margin-bottom:10px;
    }
    #meslek{
        margin-bottom:10px;
    }

    </style>
</head>
<body>

	<div id="container">
		
		<div id="content">
				
					<nav>
						<ul>
							<li id="first-last">
								<a href="INDEX.aspx">MAINPAGE</a>
							</li>
						</ul>

					</nav>

					      <div id="icerik">                              
                                 <div id="profil">
                                        <form runat="server" id="login">
					                        <div id="giris"  class="item">GÜNCELLEME</div>
					                        <div class="item "><asp:TextBox ID="birinci" CssClass="inputs" runat="server" required="True" placeholder="ad"/></div>
					                        <div class="item "><asp:TextBox ID="second" CssClass="inputs" runat="server" required="True" placeholder="soyad"/></div>
					                        <div class="item "><asp:TextBox ID="email" CssClass="inputs" runat="server" required="True" placeholder="email"/></div>
					                        <div class="item "><asp:TextBox ID="meslek" CssClass="inputs" runat="server" required="True" placeholder="meslek"/></div>
					                        <div class="item "><asp:TextBox ID="sifre" CssClass="inputs" runat="server" required="True" placeholder="sifre" TextMode="Password"/></div>
					                        <div class="item"><asp:Button ID="yolla" Text="UPDATE" runat="server" OnClick="yolla_Click" /></div>
				                        </form>
			                    </div>
                                
                          </div>

					</div>

		</div>
        
		
            

            
	
		
</body>
</html>