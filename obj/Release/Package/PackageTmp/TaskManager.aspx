<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TaskManager.aspx.cs" Inherits="OAMobileBackEnd.TaskManager" %>

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
    <script src="js/calendar.js"></script>
    <link href="css/calendar.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="../css/mui.picker.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <header class="mui-bar mui-bar-nav">
            <a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" href="Default.aspx"></a>
            <h1 class="mui-title">任务管理</h1>
        </header>

        <div class="mui-content">
            <div style="margin-top: 3px; margin-left: 3px;">

                <button id='btnbegindate' data-options='{"type":"date"}' onclick="return false;" class="btn mui-btn" runat="server">选择开始时间</button>
                <label>-</label>
                <button id='btnenddate' data-options='{"type":"date"}' onclick="return false;" class="btn mui-btn" runat="server">选择结束时间</button>
                <button class="mui-btn mui-btn-primary" type="button" id="btnsearch" onserverclick="btnsearch_Click" runat="server">搜索</button>
            </div>
        </div>
         
        <ul class="mui-table-view">
            <asp:Repeater runat="server" ID="Tasks">
                <ItemTemplate>
                    <li class="mui-table-view-cell">
                        <a class="mui-navigate-right" href="Taskhandle.aspx?taskid=<%#Eval("Id")%>"><%#Eval("TaskName")%>(<%#Eval("Status")%>)
					</a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
        <script src="../js/mui.min.js"></script>
        <script src="../js/mui.picker.min.js"></script>
        <script>
            (function ($) {
                $.init();
                var btns = $('.btn');
                btns.each(function (i, btn) {
                    btn.addEventListener('tap', function () {
                        var _self = this;
                        if (_self.picker) {
                            _self.picker.show(function (rs) {
                                result.innerText = rs.text;
                                _self.picker.dispose();
                                _self.picker = null;
                            });
                        } else {
                            var optionsJson = this.getAttribute('data-options') || '{}';
                            var options = JSON.parse(optionsJson);
                            var id = this.getAttribute('id');
							/*
							 * 首次显示时实例化组件
							 * 示例为了简洁，将 options 放在了按钮的 dom 上
							 * 也可以直接通过代码声明 optinos 用于实例化 DtPicker
							 */
                            _self.picker = new $.DtPicker(options);
                            _self.picker.show(function (rs) {
								/*
								 * rs.value 拼合后的 value
								 * rs.text 拼合后的 text
								 * rs.y 年，可以通过 rs.y.vaue 和 rs.y.text 获取值和文本
								 * rs.m 月，用法同年
								 * rs.d 日，用法同年
								 * rs.h 时，用法同年
								 * rs.i 分（minutes 的第二个字母），用法同年
								 */
                                _self.innerText = rs.text;
                                // result.innerText = rs.text;
								/* 
								 * 返回 false 可以阻止选择框的关闭
								 * return false;
								 */
								/*
								 * 释放组件资源，释放后将将不能再操作组件
								 * 通常情况下，不需要示放组件，new DtPicker(options) 后，可以一直使用。
								 * 当前示例，因为内容较多，如不进行资原释放，在某些设备上会较慢。
								 * 所以每次用完便立即调用 dispose 进行释放，下次用时再创建新实例。
								 */
                                _self.picker.dispose();
                                _self.picker = null;
                            });
                        }

                    }, false);
                });
            })(mui);
        </script>
        <script>
            mui.init({
                swipeBack: true
            });
            mui.back = function () {
                var arr = location.href.split('#');
                alert(arr[0]);
                if (arr[0].indexOf('taskmanager.aspx') > 0) {
                    location.href = "Default.aspx";
                }
            }
        </script>
    </form>
</body>
</html>
