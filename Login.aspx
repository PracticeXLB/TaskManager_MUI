<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OAMobileBackEnd.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title></title>
    <link href="css/mui.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <style>
        .area {
            margin: 20px auto 0px auto;
        }

        .mui-input-group {
            margin-top: 10px;
        }

            .mui-input-group:first-child {
                margin-top: 20px;
            }

            .mui-input-group label {
                width: 22%;
            }

        .mui-input-row label ~ input,
        .mui-input-row label ~ select,
        .mui-input-row label ~ textarea {
            width: 78%;
        }

        .mui-checkbox input[type=checkbox],
        .mui-radio input[type=radio] {
            top: 6px;
        }

        .mui-content-padded {
            margin-top: 25px;
        }

        .mui-btn {
            padding: 10px;
        }

        .link-area {
            display: block;
            margin-top: 25px;
            text-align: center;
        }

        .spliter {
            color: #bbb;
            padding: 0px 8px;
        }

        .oauth-area {
            position: absolute;
            bottom: 20px;
            left: 0px;
            text-align: center;
            width: 100%;
            padding: 0px;
            margin: 0px;
        }

            .oauth-area .oauth-btn {
                display: inline-block;
                width: 50px;
                height: 50px;
                background-size: 30px 30px;
                background-position: center center;
                background-repeat: no-repeat;
                margin: 0px 20px;
                /*-webkit-filter: grayscale(100%); */
                border: solid 1px #ddd;
                border-radius: 25px;
            }

                .oauth-area .oauth-btn:active {
                    border: solid 1px #aaa;
                }

                .oauth-area .oauth-btn.disabled {
                    background-color: #ddd;
                }
    </style>
</head>
<body>
    <form runat="server">
        <header class="mui-bar mui-bar-nav">
            <h1 class="mui-title">登录</h1>
        </header>
        <div class="mui-content">
            <div id='loginform1' class="mui-input-group">
                <div class="mui-input-row">
                    <label>账号</label>
                    <input id="txtaccount" type="text" class="mui-input-clear mui-input" value="admin" placeholder="请输入账号" runat="server" />
                </div>
                <div class="mui-input-row">
                    <label>密码</label>
                    <input id="txtpassword" type="password" class="mui-input-clear mui-input"  value="123456" placeholder="请输入密码" runat="server" />

                </div>

            </div>
            <div class="mui-content-padded">
                <asp:Button runat="server" ID="login" Text="登录" class="mui-btn mui-btn-block mui-btn-primary" OnClick="login_Click"  />

                <input type="button" value="test" onclick="android:SelectPic()" />
            </div>
            <div class="mui-content-padded oauth-area" id="tips" runat="server" style="color:red;text-align:center;">
            </div>
        </div>
        <script src="js/mui.min.js"></script>

    </form>
</body>
</html>
