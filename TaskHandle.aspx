<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TaskHandle.aspx.cs" EnableEventValidation="false" Inherits="OAMobileBackEnd.TaskHandle" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>任务处理</title>
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
    <form id="form2" runat="server" class="mui-input-group">
        <header class="mui-bar mui-bar-nav">
            <a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" href="TaskManger.aspx"></a>
            <h1 class="mui-title" id="titleh1" runat="server">任务处理</h1>
        </header>
        <div class="mui-content">
            <div class="mui-input-row">
                <label>任务名称</label>
                <input type="text" class="mui-input-clear" id="txttaskname" placeholder="任务名称" data-input-clear="3" runat="server" /><span class="mui-icon mui-icon-clear mui-hidden"></span>
            </div>
            <div class="mui-input-row">
                <label>任务备注</label>
                <input type="text" class="mui-input-clear" id="txttaskremark" placeholder="任务备注" data-input-clear="3" runat="server" /><span class="mui-icon mui-icon-clear mui-hidden"></span>
            </div>
            <div class="mui-input-row">
                <label>创建人</label>
                <input type="text" class="mui-input-clear" id="txttaskcreator" placeholder="创建人" data-input-clear="3" runat="server" /><span class="mui-icon mui-icon-clear mui-hidden"></span>
            </div>
            <asp:HiddenField runat="server" ID="hidstartdate" />
            <button id="btnstartdate" data-options='{"type":"date"}' onclick="return false;" class="btn mui-btn  mui-btn-block" runat="server">选择开始时间</button>

            <button id="btnenddate" data-options='{"type":"date"}' onclick="return false;" class="btn mui-btn  mui-btn-block" runat="server">选择结束时间</button>
            <asp:HiddenField runat="server" ID="hidenddate" />

            <asp:HiddenField runat="server" ID="hidTaskid" />
            <button class="mui-btn mui-btn-primary mui-btn-block" type="button" id="btnsave" runat="server" onserverclick="btnsave1_Click">保存</button>
        </div>
    </form>
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
                            if (_self.getAttribute("id") == "btnstartdate") {
                                hidstartdate.value = rs.text;
                            }
                            if (_self.getAttribute("id") == "btnenddate") {
                                hidenddate.value = rs.text;
                            }
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
            if (arr[0].indexOf('Taskhandle.aspx') > 0) {
                location.href = "TaskManager.aspx";
            }
        }
    </script>
</body>
</html>
