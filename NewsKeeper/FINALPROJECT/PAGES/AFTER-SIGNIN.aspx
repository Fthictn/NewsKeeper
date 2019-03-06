<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AFTER-SIGNIN.aspx.cs" Inherits="FINALPROJECT.AFTER_SIGNIN" %>

 <!DOCTYPE html>
 <html lang="en">
 <head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <meta http-equiv="X-UA-Compatible" content="ie=edge">
     <title>Document</title>

     <link href="https://fonts.googleapis.com/css?family=Black+And+White+Picture" rel="stylesheet">
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"  crossorigin="anonymous">	
     <script src="http://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
     <link href="CSS/AFTER-SIGNIN.css" rel="stylesheet" />
         <link href="https://fonts.googleapis.com/css?family=Black+And+White+Picture" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"  crossorigin="anonymous">	
    <script src="http://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Audiowide" rel="stylesheet">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     <link href="https://fonts.googleapis.com/css?family=Audiowide" rel="stylesheet">

         <style>
        #profil{
            position:absolute;
            top:110px;
            left:975px;
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

          


    </style>
 </head>

        <body>

                <div id="container">
                    
                    <div id="content">
                            
                                <nav>
                                    <ul>
                                        <li id="first-last">
                                            <a href="AFTER-SIGNIN.aspx">MAINPAGE</a>
                                        </li>
                                        <li class="orta">
                                            <a href="ALLPROFIL.aspx">PROFILE</a>
                                        </li>
                                        <li class="orta">
                                            <a href="INDEX.aspx">EXIT</a>
                                        </li>
                                    </ul>
            
                                </nav>
            
                                <div id="icerik">
                                    <table class="table table-bordered">
                                    <thead>
                                      <tr>
                                        <th>HABER</th>
                                        <th>ISLEM</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                             <asp:Repeater ID="rpt_kitap" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                    <td><a target="_blank" href='<%#Eval("link") %>'><%#Eval("icerik") %></a></td>
                                                     <td>
                                                         <a class="kaydetlink" href='GONDERIKAYITX.aspx?id=<%# Eval("id")%>'>KAYDET</a>
                                                     </td>
                                                       </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>

                                    </tbody>
                                  </table>
                                </div>
            
            
            
                    </div>
                    
                    <%
                        string name = Session["name"].ToString();
                        string surname = Session["surname"].ToString();
                        string job = Session["job"].ToString();
                        string email = Session["mailaddress"].ToString();
                        %>
                    <div id="others">
            
                        <div id="profil">
                           
                            <div id="login">
                                    
                                <div id="namesurname">
                                    <div><i class="fas fa-user"></i></div>
                                    <div><%Response.Write(name); %></div>
                                    
                                </div>

                                <div id="job">
                                    <div><i class="fas fa-briefcase"></i></div>
                                    <div><%Response.Write(surname); %></div>
                                </div>

                                <div id="mail">
                                    <div><i class="fas fa-envelope"></i></div>
                                    <div><%Response.Write(email); %></div>
                                </div>
                                
                                <div><a id="profillink" href="UPDATE.aspx">Bilgilerimi Güncelle</a></div>

                            </div>

                        </div>
				

                        </div>
            
                    </div>
        
                </div>
     
 </body>
 </html>