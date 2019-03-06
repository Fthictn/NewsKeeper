<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="INDEX.aspx.cs" Inherits="FINALPROJECT.INDEX" %>

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
        #profil{
            position:absolute;
            top:80px;
            left:1040px;
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
        table{
            margin-left:5px;
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
								<a href="INDEX.aspx">MAINPAGE</a>
							</li>
						</ul>

					</nav>

					      <div id="icerik">                              


                                    <table class="table table-bordered">
                                    <thead>
                                      <tr>
                                        <th>HABER</th>
                                       <!-- <th>ISLEM</th> -->
                                      </tr>
                                    </thead>
                                    <tbody>
                                             <asp:Repeater ID="rpt_kitap" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                    <td><a target="_blank" href='<%#Eval("link") %>'><%#Eval("icerik") %></a></td>
                                                   <!--  <td>
                                                         <a class="kaydetlink" href='GONDERIKAYIT.aspx?id=<%# Eval("id")%>'>KAYDET</a>
                                                     </td> -->
                                                       </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>

                                    </tbody>
                                  </table>
                                
                          </div>

					</div>

		</div>
        
		
            
			<div id="profil">
				<form runat="server" id="login">
					<div id="giris"  class="item">LOGIN</div>
					<div class="item "><asp:TextBox ID="birinci" CssClass="inputs" runat="server" required="True" placeholder="email" AutoCompleteType="None"/></div>
					<div class="item "><asp:TextBox ID="second" CssClass="inputs" runat="server" required="True" placeholder="sifre" TextMode="Password" AutoCompleteType="None"/></div>
					<div class="item"><asp:Button ID="yolla" Text="Signin" runat="server" OnClick="yolla_Click" /></div>
					<div class="item"><a id="kayit" href="SİGNUP.aspx">Still not joined?</a></div>
				</form>
			</div>
            
	
		
</body>
</html>