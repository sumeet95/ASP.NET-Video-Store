<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>@VIDEO</title>
    <link href="Styles/LoginStyleSheet.css" rel="stylesheet" />

  <meta name="viewport" content="width=device-width">
  <link rel="stylesheet" href="css/example.css">
  <link rel="stylesheet" href="css/font-awesome.min.css">

  <style>
    #slides {
      display: none
    }

    .container {
      margin: 0 auto
    }

    /* For tablets & smart phones */
    @media (max-width: 300px) {
      body {
        padding-left: 20px;
        padding-right: 20px;
      }
      .container {
        width: 300px;
      }
    }

    /* For smartphones */
    @media (max-width: 480px) {
      .container {
        width: auto
      }
    }

    /* For smaller displays like laptops */
    @media (min-width: 300px) and (max-width: 979px) {
      .container {
        width: 300px
      }
    }

    /* For larger displays */
    @media (min-width: 400px) {
      .container {
        width: 800px;
        margin-left: 900px;
      }
    }
  </style>
  <!-- SlidesJS Required: -->
</head>
<body style="overflow:hidden; background-color:#D4D4D4;">
  <div class="container">
    <div id="slides">
      <img src="img/2003-lord_of_the_rings_the_return_of_the_king-1.jpg" />
      <img src="img/Original-Star-Wars-poster.jpg" />
      <img src="img/2009-SAFC-FIGHT-CLUB-poster.jpg" />       
    </div>
  </div>
  <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
  <script src="js/jquery.slides.min.js"></script>

  <script>
      $(function () {
          $('#slides').slidesjs({
              width: 240,
              height: 245,
              play: {
                  active: true,
                  auto: true,
                  interval: 2000,
                  swap: true
              }
          });
      });
  </script>






    <form id="form1" runat="server">
    <div id ="login">
        <h1>&nbsp;</h1>
        <h1>Sign In</h1>
        <div class="small">
            Username
            <asp:TextBox ID="tfUser" runat="server" CausesValidation="True"></asp:TextBox> 
            <br />
            <br />
            Password 
            <asp:TextBox ID="tfPass" runat="server" CausesValidation="True" TextMode="Password"></asp:TextBox>
        </div>
        <br />
        <a href="SignUp.aspx">Sign Up</a>
        <asp:Button CssClass="button"  ID="button" runat="server" Text="Sign In" OnClick="button_Click" />
    </div>
    </form>
</body>
</html>
