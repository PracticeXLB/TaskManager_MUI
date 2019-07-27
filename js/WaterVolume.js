function initUI(){
    //初始化列表    $('#dgSQ').datagrid({
        scrollbarSize: 0,        fitColumns: true,//宽度自适应        emptyMsg: '<span>无记录</span>',        columns: [[
            {
                field: 'NO',
                title: 'No',
                width: 50, //当 fitColumns:true时，columns里的width变为改列宽度占表格总宽度大小的比例
                align: 'center'
            },
            {
                field: 'SITEID',
                title: '站点ID',
                hidden: true
            },
            {
                field: 'ZDMC',
                title: '站点名称',
                width: 200,
                align: 'center',
            },
            {
                field: 'LL',
                title: '流量',
                width: 100,
                align: 'center'
            },
            {
                field: 'JJSW',
                title: '警戒水位',
                width: 100,
                align: 'center'
            }
        ]]
    });    $('#dgSQ').datagrid('loadData', { total: 0, rows: [] });        var data2 = [    { "NO": "1", "ZDMC": "合肥", "XSYL": 10.00, "RYL": 36.50, "YYL": 46.50 },    { "NO": "2", "ZDMC": "巢湖", "XSYL": 12.00, "RYL": 18.50, "YYL": 28.50 },    { "NO": "3", "ZDMC": "庐江", "XSYL": 12.00, "RYL": 38.50, "YYL": 58.50 },    { "NO": "4", "ZDMC": "舒城", "XSYL": 12.00, "RYL": 26.50, "YYL": 36.50 },    { "NO": "5", "ZDMC": "肥东", "XSYL": 12.00, "RYL": 35.50, "YYL": 65.50 },    { "NO": "6", "ZDMC": "肥西", "XSYL": 12.00, "RYL": 158.5, "YYL": 179.5 },    { "NO": "7", "ZDMC": "无为", "XSYL": 12.00, "RYL": 83.50, "YYL": 109.50 }    ];    $('#dgYQ').datagrid({
        scrollbarSize: 0,        data: data2,        fitColumns: true,//宽度自适应        emptyMsg: '<span>无记录</span>',        columns: [[
            {
                field: 'NO',
                title: 'No',
                width: 50, //当 fitColumns:true时，columns里的width变为改列宽度占表格总宽度大小的比例
                align: 'center'
            },
            {
                field: 'ZDMC',
                title: '站点名称',
                width: 200,
                align: 'center',
            },
            {
                field: 'XSYL',
                title: '小时雨量',
                width: 100,
                align: 'center'
            },
            {
                field: 'RYL',
                title: '日雨量',
                width: 100,
                align: 'center'
            },
            {
                field: 'YYL',
                title: '月雨量',
                width: 100,
                align: 'center'
            }
        ]]
    });

    $('#dgSW').datagrid({
        scrollbarSize: 0,        fitColumns: true,//宽度自适应        emptyMsg: '<span>无记录</span>',        columns: [[
            {
                field: 'NO',
                title: 'No',
                width: 50, //当 fitColumns:true时，columns里的width变为改列宽度占表格总宽度大小的比例
                align: 'center'
            },
            {
                field: 'ZDMC',
                title: '站点名称',
                width: 200,
                align: 'center',
            },
            {
                field: 'SW',
                title: '水位',
                width: 100,
                align: 'center'
            },
            {
                field: 'JJSW',
                title: '警戒水位',
                width: 100,
                align: 'center'
            }
        ]]
    });
    $('#dgSW').datagrid('loadData', { total: 0, rows: [] });

    $('#dgLL').datagrid({
        scrollbarSize: 0,        fitColumns: true,//宽度自适应        emptyMsg: '<span>无记录</span>',        columns: [[
            {
                field: 'NO',
                title: 'No',
                width: 50, //当 fitColumns:true时，columns里的width变为改列宽度占表格总宽度大小的比例
                align: 'center'
            },
            {
                field: 'ZDMC',
                title: '站点名称',
                width: 200,
                align: 'center',
            },
            {
                field: 'LL',
                title: '流量',
                width: 100,
                align: 'center'
            },
            {
                field: 'JJSW',
                title: '警戒水位',
                width: 100,
                align: 'center'
            }
        ]]
    });
    $('#dgLL').datagrid('loadData', { total: 0, rows: [] });

}function initData(){
    //加载数据    $.ajax({
        type: 'POST',
        url: "WaterVolume.aspx?action=GetData",
        success: function (data) {
            var jObj = JSON.parse(data);
            $("#dgSQ").datagrid("loadData", jObj.dataSQ);
            $("#dgSW").datagrid("loadData", jObj.dataSW);
            $("#dgLL").datagrid("loadData", jObj.dataLL);
        }
    });
}$(function () {    initUI();    initData();    /**表头字体加粗**/
    $(".datagrid-header-row td div span").each(function (i, th) {
        var val = $(th).text();
        $(th).html("<label style='font-weight: bolder;'>" + val + "</label>");
    });
});