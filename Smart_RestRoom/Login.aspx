<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Smart_RestRoom.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Smart Restroom</title>

    <link href="/Resources/Bootsrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.0/font/bootstrap-icons.min.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="/Resources/Bootsrap/js/popper.min.js"></script>
    <script src="/Resources/Bootsrap/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <link href="/Resources/Datatables/css/dataTables.dataTables.min.css" rel="stylesheet" />
    <script src="/Resources/Datatables/js/dataTables.min.js"></script>
    <link href="/Resources/Fontawesome/css/all.css" rel="stylesheet" />
    <script src="Resources/JS/login.js"></script>
    <link href="Resources/CSS/login.css" rel="stylesheet" />

</head>
<body style="background-color: #D7D7D7;">
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg" style="position: fixed; top: 0; width: 100%; min-height: 60px; background-color: #EFEFEF; z-index: 1000; border-bottom: 4px solid #BFBFBF; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
            <div class="container-fluid">
                <h1 class="navbar-brand d-flex align-items-center" style="color: black; font-size: 30px; font-weight: bold; margin-left: 100px; margin-right: auto; line-height: 60px;">
                    <i class="fa-solid fa-restroom ms-1 me-2"></i>SMART RESTROOM
                </h1>
            </div>
        </nav>

        <div class="d-flex justify-content-center align-items-center" style="height: 100vh; padding-top: 60px;">
            <div class="card shadow d-flex justify-content-center align-items-center" style="width: 500px; height: 600px; border-radius: 20px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); background-color: #EFEFEF;">
                <div class="card-body d-flex flex-column justify-content-center align-items-center" style="width: 450px;">
                    <div class="mb-1" style="text-align: center; font-size: 80px; margin-top: -20px "><i class="fa-solid fa-toilet"></i></div>
                    <h1 class="text-center mt-1 mb-4">Login</h1>

                    <asp:Label ID="errorMessage" runat="server" ForeColor="Red" />

                    <div class="form-group mb-3" style="width: 100%;">
                        <label for="username">Username</label>
                        <asp:TextBox ID="usernameTextBox" runat="server" CssClass="form-control" Placeholder="Username"
                            data-bs-toggle="tooltip" title="Tinatamad ako magdesign ng log in so ikaw na lng HAHHAHAHA"
                            Style="box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); border-radius: 10px; width: 100%;" />
                    </div>

                    <div class="form-group mb-3 password-container">
                        <label for="password">Password</label>
                        <asp:TextBox ID="passwordTextBox" runat="server" CssClass="form-control" TextMode="Password" Placeholder="Password"
                            data-bs-toggle="tooltip" title="Tang Ina mo"
                            Style="box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); border-radius: 10px; width: 100%;" />
                        <span id="togglePassword" class="toggle-password">
                            <i class="fa fa-eye"></i>
                        </span>
                    </div>

                    <div class="form-group mb-3 d-flex align-items-center" style="width: 100%;">
                        <input type="checkbox" class="form-check-input" id="rememberMeCheckBox"
                            style="width: 20px; height: 20px; appearance: none; background-color: white; border: 2px solid #ccc; border-radius: 4px; display: inline-block; position: relative; outline: none; margin-right: 10px; vertical-align: middle; cursor: pointer;" />
                        <label class="form-check-label" for="rememberMeCheckBox" style="font-size: 18px; margin-bottom: 0;">Remember Me</label>
                    </div>
                    <div class="form-group" style="width: 100%;">
                        <asp:Button ID="btnLogin" runat="server" CssClass="btn w-100" Text="Login" OnClick="BtnLogin_Click"
                            Style="border-radius: 10px; background-color: #D1D9FF; color: #1D1D1D; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); width: 100%;" />
                    </div>
                </div>
            </div>
        </div>
    </form>

</body>
</html>
