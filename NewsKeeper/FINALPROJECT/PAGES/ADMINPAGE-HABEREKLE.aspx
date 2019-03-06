<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADMINPAGE-HABEREKLE.aspx.cs" Inherits="FINALPROJECT.ADMINPAGE" %>

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
            height: 300px;
        }
        #profil:hover{
            width: 360px;
            height: 300px;
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
    nav{
        width:780px;
    }


    </style>
</head>
<body>

	<div id="container">
		
		<div id="content">
				
					<nav>
						<ul>
							<li id="first-last">
								<a href="ADMINPAGE-HABERSIL.aspx">HABER SIL</a>
							</li>
                            <li class="orta">
                                <a href="INDEX.aspx">EXIT</a>
                            </li>
						</ul>

					</nav>

					      <div id="icerik">                              
                                 <div id="profil">
                                        <form runat="server" id="login">
					                        <div id="giris"  class="item">HABER EKLE</div>
					                        <div class="item "><asp:TextBox ID="birinci" CssClass="inputs" runat="server" required="True" placeholder="link"/></div>
					                        <div class="item "><asp:TextBox ID="second" CssClass="inputs" runat="server" required="True" placeholder="icerik"/></div>
					                        <div class="item"><asp:Button ID="yolla" Text="EKLE" runat="server" OnClick="yolla_Click" /></div>
				                        </form>
			                    </div>
                                
                          </div>

					</div>

		</div>
        
		
            

            
	
		
</body>
</html>