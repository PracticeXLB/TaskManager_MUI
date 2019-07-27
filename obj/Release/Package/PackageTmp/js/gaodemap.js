$(function () {

    var marker, lineArr = [];
    var map = new AMap.Map("container1", {
        resizeEnable: true,
        center: [117.536201, 31.566447],
        zoom: 10,
        minZoom: 1,
        maxZoom: 20,
        projection: 'EPSG:4326'
    });

    var layers = [
        new AMap.TileLayer.WMS({
            url: 'http://n01.icetc.mc2.site:20103/geoserver/szch/wms',
            blend: false,
            tileSize: 512,
            params: { 'LAYERS': 'szch:chaohu_admin,szch:gv2_tr_cities,szch:gv2_tl_ch_l1_rivers,szch:gv2_tr_ch_l1_conservationzones' }
        }),

    ]
    // 地图上设置图层
    map.setLayers(layers);

    AMap.plugin([
        'AMap.ToolBar',
    ], function () {
        // 在图面添加工具条控件，工具条控件集成了缩放、平移、定位等功能按钮在内的组合控件
        map.addControl(new AMap.ToolBar({
            // 简易缩放模式，默认为 false
            liteStyle: true
        }));
    });
    function addLayer() {
        disWorld.setMap(map);
    }

    function rmLayer() {
        disWorld.setMap(null);
    }
});
