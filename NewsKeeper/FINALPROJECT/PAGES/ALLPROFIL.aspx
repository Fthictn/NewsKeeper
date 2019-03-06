<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ALLPROFIL.aspx.cs" Inherits="FINALPROJECT.ALLPROFIL" %>

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
     <link href="CSS/ALLPROFIL.css" rel="stylesheet" />
     <link href="https://fonts.googleapis.com/css?family=Audiowide" rel="stylesheet">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     <style>
                 td a{
                     color:whitesmoke;
                     }
                 tr th{
                     color:whitesmoke;
                 }
                 table{
                     margin: auto;
                     width:450px;
                 }
     </style>
 </head>rgb(255, 255, 255)rgb(255, 255, 255)

        <body style="background-color: rgb(53, 64, 79)">
                         <%
                        string name = Session["name"].ToString();
                        string surname = Session["surname"].ToString();
                        string job = Session["job"].ToString();
                        string email = Session["mailaddress"].ToString();
                        %>

                <div id="container">
                    
                    <div id="content">
                            
                                <nav>
                                    <ul>
                                        <li id="first-last">
                                            <a href="AFTER-SIGNIN.aspx">MAINPAGE</a>
                                        </li>
                                        <li class="orta">
                                            <a href="INDEX.aspx">EXIT</a>
                                        </li>
                                    </ul>
            
                                </nav>
            
                                <div id="icerik">
                                    <div id="allprofil">
                                        <div id="onlyprofil">
                                            
                                            <div class="kapsayici">
                                                <div><i class="fas fa-user icons"></i></div>
                                                <div class="yazi"><%Response.Write(name+" "+surname); %></div>
                                            </div>
                                            
                                            <div class="kapsayici">
                                                <div><i class="fas fa-envelope icons"></i></div>
                                                <div class="yazi"><%Response.Write(email); %></div>
                                            </div>
                                            
                                            <div id="sag" class="kapsayici">
                                                <div><i class="fas fa-briefcase icons"></i></div>
                                                <div class="yazi"><%Response.Write(job); %></div>
                                            </div>

                                        </div>


                                        <div id="sharing">
                                   <table class="table table-bordered">
                                    <thead>
                                      <tr>
                                        <th>HABERLERİM</th>
                                        <th>ISLEM</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                             <asp:Repeater ID="rpt_kitap" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                    <td><a target="_blank" href='<%#Eval("link") %>'><%#Eval("myicerik") %></a></td>
                                                     <td>
                                                         <a class="kaydetlink" href='GONDERISIL.aspx?id=<%# Eval("myicerik_id") %>'>SİL</a>
                                                     </td>
                                                       </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>                                            
                                            

                                    </tbody>
                                  </table>
                                                
                                        </div>
               </div> 
                    
           

                                               
                                        </div>
                                        
                                    </div>
 
                                </div>
            
      
            
            
            
            
                </div>
     



 </body>
 </html>