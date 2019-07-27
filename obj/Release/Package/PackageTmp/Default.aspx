<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OAMobileBackEnd._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Hello MUI</title>

    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <script src="js/jquery-2.1.1.min.js"></script>
    <!--标准mui.css-->
    <link rel="stylesheet" href="../css/mui.min.css" />
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <div class="mui-content">
        <ul class="mui-table-view mui-grid-view mui-grid-9">
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="newtask.aspx">
                <div class="mui-media-body">新建任务</div>
            </a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="taskmanager.aspx">
                <div class="mui-media-body">任务管理</div>
            </a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="SceneManager.aspx">
                <div class="mui-media-body">现场图片</div>
            </a></li>
                   <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
		                    <div class="mui-media-body">location</div></a></li>
        </ul>
    </div>
    <script src="../js/mui.min.js"></script>
    <script>

        mui.init({
            swipeBack: true //启用右滑关闭功能
        });
        var title = document.getElementById("title");
        //选项卡点击事件
        mui('.mui-bar-tab').on('tap', 'a', function (e) {
            //更换标题
            title.innerHTML = this.querySelector('.mui-tab-label').innerHTML;

        });

	</script>
    <form id="form1" runat="server">
    </form>
</body>
</html>
