﻿function initUI()
    //初始化列表
        scrollbarSize: 0,
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
    });
        scrollbarSize: 0,
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
        scrollbarSize: 0,
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
        scrollbarSize: 0,
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

}
    //加载数据
        type: 'POST',
        url: "WaterVolume.aspx?action=GetData",
        success: function (data) {
            var jObj = JSON.parse(data);
            $("#dgSQ").datagrid("loadData", jObj.dataSQ);
            $("#dgSW").datagrid("loadData", jObj.dataSW);
            $("#dgLL").datagrid("loadData", jObj.dataLL);
        }
    });
}
    $(".datagrid-header-row td div span").each(function (i, th) {
        var val = $(th).text();
        $(th).html("<label style='font-weight: bolder;'>" + val + "</label>");
    });
});