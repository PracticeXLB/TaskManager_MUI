<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewTask.aspx.cs" Inherits="OAMobileBackEnd.NewTask" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>新建客户任务</title>
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <script src="js/jquery-2.1.1.min.js"></script>
    <!--标准mui.css-->
    <link rel="stylesheet" href="../css/mui.min.css" />
    <script src="js/calendar.js"></script>
    <link href="css/calendar.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="../css/mui.picker.min.css" />
    <link href="css/mui.indexedlist.css" rel="stylesheet" />
    <style>
        html,
        body {
            height: 100%;
            overflow: hidden;
        }

        .mui-bar {
            -webkit-box-shadow: none;
            box-shadow: none;
        }

        #done.mui-disabled {
            color: gray;
        }
    </style>
</head>
<body>
    <header class="mui-bar mui-bar-nav">
        
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
        <h1 class="mui-title">选择客户</h1>
        <a id='done' class="mui-btn mui-btn-link mui-pull-right mui-btn-blue mui-disabled">完成</a>
    </header>
    <div class="mui-content">
        <div id='list' class="mui-indexed-list">
            <div class="mui-indexed-list-search mui-input-row mui-search">
                <input type="search" class="mui-input-clear mui-indexed-list-search-input" placeholder="搜索客户" />
            </div>
            <div class="mui-indexed-list-bar">
                <a>A</a>
                <a>B</a>
                <a>C</a>
                <a>D</a>
                <a>E</a>
                <a>F</a>
                <a>G</a>
                <a>H</a>
                <a>I</a>
                <a>J</a>
                <a>K</a>
                <a>L</a>
                <a>M</a>
                <a>N</a>
                <a>O</a>
                <a>P</a>
                <a>Q</a>
                <a>R</a>
                <a>S</a>
                <a>T</a>
                <a>U</a>
                <a>V</a>
                <a>W</a>
                <a>X</a>
                <a>Y</a>
                <a>Z</a>
            </div>
            <div class="mui-indexed-list-alert"></div>
            <div class="mui-indexed-list-inner">
                <div class="mui-indexed-list-empty-alert">没有数据</div>
                <ul class="mui-table-view">
                    <%foreach (var item in Purchasers)
                        {%>
                    <li data-value="<%=item.Id %>" class="mui-table-view-cell mui-indexed-list-item mui-checkbox mui-left">
                        <input type="checkbox" /><%=item.Name %></li>
                    <% } %>
                </ul>
            </div>
        </div>
        <div id="tasksubmitdiv" style="display: none;">

            <form id="form1" runat="server" class="mui-input-group">
                <asp:HiddenField ID="purchaseidhide" runat="server" />
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
                <div class="mui-button-row">

                    <button class="mui-btn mui-btn-primary" type="button" id="btnsave" runat="server" onserverclick="btnsave1_Click">保存</button>
                    &nbsp;&nbsp;
									<button class="mui-btn mui-btn-primary" type="button" id="btncancel">取消</button>
                </div>
            </form>
        </div>
    </div>
    <script src="../js/mui.min.js"></script>
    <script src="../js/mui.indexedlist.js"></script>
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
        $(function () {
            $(".mui-indexed-list-inner").hight("100%");

        });
    </script>
    <script type="text/javascript" charset="utf-8">
        $("#btncancel").click(function () {
            $("#list").show();
            $("#tasksubmitdiv").hide();
        });

        mui.init();
        mui.ready(function () {
            var header = document.querySelector('header.mui-bar');
            var list = document.getElementById('list');
            var done = document.getElementById('done');
            //calc hieght
            list.style.height = (document.body.offsetHeight - header.offsetHeight) + 'px';
            //create
            window.indexedList = new mui.IndexedList(list);
            //done event
            done.addEventListener('tap', function () {
                var checkboxArray = [].slice.call(list.querySelectorAll('input[type="checkbox"]'));
                var checkedValues = [];
                for (var i = 0; i < checkboxArray.length; i++) {
                    var box = checkboxArray[i];
                    if (box.checked) {
                        $("#purchaseidhide").val(box.parentNode.getAttribute("data-value"));
                        checkedValues.push(box.parentNode.innerText);
                        break;
                    }
                }

                if (checkedValues.length > 0) {
                    // mui.alert('你选择了: ' + checkedValues);

                    $("#list").hide();
                    $("#tasksubmitdiv").show();
                    $("#txttaskname").val(checkedValues[0] + "验证");

                } else {
                    mui.alert('你没选择任何客户');
                }
            }, false);
            mui('.mui-indexed-list-inner').on('change', 'input', function () {
                var count = list.querySelectorAll('input[type="checkbox"]:checked').length;
                var value = count ? "完成(" + count + ")" : "完成";
                done.innerHTML = value;
                if (count) {
                    if (done.classList.contains("mui-disabled")) {
                        done.classList.remove("mui-disabled");
                    }
                } else {
                    if (!done.classList.contains("mui-disabled")) {
                        done.classList.add("mui-disabled");
                    }
                }
            });
        });
		</script>

</body>
</html>
