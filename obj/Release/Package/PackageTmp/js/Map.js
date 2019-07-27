
window.onload = function () {
    // Create a group for overlays. Add the group to the map when it's created
    // but add the overlay layers later

    var map = new ol.Map({
        target: 'map',
        layers: [
            new ol.layer.Group({
                'title': '基础地图',
                layers: [
                    new ol.layer.Tile({
                        title: '湖泊',
                        type: 'base',
                        source: new ol.source.TileWMS({
                            url: 'http://n01.icetc.mc2.site:20103/geoserver/szch/wms',
                            params: { 'LAYERS': 'szch:chaohu_admin' }
                        })
                    }),
                    new ol.layer.Tile({
                        visible: true,
                        title: '市级行政',
                        source: new ol.source.TileWMS({
                            url: 'http://n01.icetc.mc2.site:20103/geoserver/szch/wms',
                            params: { 'LAYERS': 'szch:gv2_tr_cities' }
                        })
                    }),
                    new ol.layer.Tile({
                        title: '巢湖流域县级',
                        visible: false,
                        source: new ol.source.TileWMS({
                            url: 'http://n01.icetc.mc2.site:20103/geoserver/szch/wms',
                            params: { 'LAYERS': 'szch:gv2_tr_ch_counties_base' }
                        })

                    }),
                    new ol.layer.Tile({
                        visible: false,
                        title: '三级水系',
                        source: new ol.source.TileWMS({
                            url: 'http://n01.icetc.mc2.site:20103/geoserver/szch/wms',
                            params: { 'LAYERS': 'szch:gv2_tl_ch_l3_rivers' }
                        })
                    }),
                    new ol.layer.Tile({
                        visible: false,
                        title: '二级水系',
                        source: new ol.source.TileWMS({
                            url: 'http://n01.icetc.mc2.site:20103/geoserver/szch/wms',
                            params: { 'LAYERS': 'szch:gv2_tl_ch_l2_rivers' }
                        })
                    }),
                    new ol.layer.Tile({
                        visible: true,
                        title: '一级水系',
                        source: new ol.source.TileWMS({
                            url: 'http://n01.icetc.mc2.site:20103/geoserver/szch/wms',
                            params: { 'LAYERS': 'szch:gv2_tl_ch_l1_rivers' }
                        })
                    }),
                    new ol.layer.Tile({
                        visible: false,
                        title: '蓝藻',
                        source: new ol.source.TileWMS({
                            url: 'http://n01.icetc.mc2.site:20103/geoserver/szch/wms',
                            params: { 'LAYERS': 'szch:gv2_ch_shuizhizhan_lanzao' }
                        })
                    }),
                    new ol.layer.Tile({
                        visible: false,
                        title: '三级保护区',
                        source: new ol.source.TileWMS({
                            url: 'http://n01.icetc.mc2.site:20103/geoserver/szch/wms',
                            params: { 'LAYERS': 'szch:gv2_tr_ch_l3_conservationzones' }
                        })
                    }),
                    new ol.layer.Tile({
                        visible: false,
                        title: '二级保护区',
                        source: new ol.source.TileWMS({
                            url: 'http://n01.icetc.mc2.site:20103/geoserver/szch/wms',
                            params: { 'LAYERS': 'szch:gv2_tr_ch_l2_conservationzones' }
                        })
                    }), new ol.layer.Tile({
                        visible: true,
                        title: '一级保护区',
                        source: new ol.source.TileWMS({
                            url: 'http://n01.icetc.mc2.site:20103/geoserver/szch/wms',
                            params: { 'LAYERS': 'szch:gv2_tr_ch_l1_conservationzones' }
                        })
                    }),

                    new ol.layer.Tile({
                        visible: false,
                        title: '市控断面',
                        source: new ol.source.TileWMS({
                            url: 'http://n01.icetc.mc2.site:20103/geoserver/szch/wms',
                            params: { 'LAYERS': 'szch:gv2_ch_shuizhizhan_shikong' }
                        })
                    }),
                    new ol.layer.Tile({
                        visible: false,
                        title: '省控断面',
                        source: new ol.source.TileWMS({
                            url: 'http://n01.icetc.mc2.site:20103/geoserver/szch/wms',
                            params: { 'LAYERS': 'szch:gv2_ch_shuizhizhan_shengkong' }
                        })
                    }),

                    new ol.layer.Tile({
                        visible: false,
                        title: '国控断面',
                        source: new ol.source.TileWMS({
                            url: 'http://n01.icetc.mc2.site:20103/geoserver/szch/wms',
                            params: { 'LAYERS': 'szch:gv2_ch_shuizhizhan_guokong' }
                        })
                    }),
                    new ol.layer.Tile({
                        visible: false,
                        title: '水位站',
                        source: new ol.source.TileWMS({
                            url: 'http://n01.icetc.mc2.site:20103/geoserver/szch/wms',
                            params: { 'LAYERS': 'szch:gv2_ch_shuiweizhan' }
                        })
                    }),
                    new ol.layer.Tile({
                        visible: false,
                        title: '水文站',
                        source: new ol.source.TileWMS({
                            url: 'http://n01.icetc.mc2.site:20103/geoserver/szch/wms',
                            params: { 'LAYERS': 'szch:gv2_ch_shuiwenzhan' }
                        })
                    }),

                    new ol.layer.Tile({
                        visible: false,
                        title: '雨量站',
                        source: new ol.source.TileWMS({
                            url: 'http://n01.icetc.mc2.site:20103/geoserver/szch/wms',
                            params: { 'LAYERS': 'szch:gv2_ch_yuliangzhan' }
                        })
                    }),
                    new ol.layer.Tile({
                        visible: false,
                        title: '自动站',
                        source: new ol.source.TileWMS({
                            url: 'http://n01.icetc.mc2.site:20103/geoserver/szch/wms',
                            params: { 'LAYERS': 'szch:gv2_ch_shuizhizhan_zidong' }
                        })
                    })
                ]
            })
        ],
        view: new ol.View({
            center: [117.536201, 31.566447],
            zoom: 10,
            minZoom: 1,
            maxZoom: 20,
            projection: 'EPSG:4326'
        })
    });

    var layerSwitcher = new ol.control.LayerSwitcher({
        tipLabel: 'Légende' // Optional label for button
    });
    map.addControl(layerSwitcher);
    map.addControl(new ol.control.ZoomSlider());
};