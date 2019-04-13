var type = $("#j_type").val();
var isHave=$("#j_isHave").val();
var xx=$("#j_xx").val();
var yy=$("#j_yy").val();
var companyName=$("#j_companyName").val();
var companyAddr=$("#j_companyAddr").val();
var tel=$("#j_tel").val();
var contactArea = $("#j_contactArea").val();
 
if (type == "0" && (isHave=="True"))
{
        var map;
    //创建地图
        function initMap() {
        createMap();
        setMapEvent();
        addMapControl();
    }
    function createMap() {
        map = new BMap.Map("baiduMap"); //创建地图
        map.centerAndZoom(new BMap.Point(xx,yy), 18); //初始化地图
        var marker = new BMap.Marker(new BMap.Point(xx, yy), {
            enableMassClear: false,
            raiseOnDrag: true
        });
      
        marker.enableDragging();
        map.addOverlay(marker);

        map.enableScrollWheelZoom();  // 开启鼠标滚轮缩放    
        map.enableKeyboard();         // 开启键盘控制    
        map.enableContinuousZoom();   // 开启连续缩放效果    
        map.enableInertialDragging(); // 开启惯性拖拽效果  

        map.addControl(new BMap.NavigationControl()); //添加标准地图控件(左上角的放大缩小左右拖拽控件)  
        map.addControl(new BMap.ScaleControl());      //添加比例尺控件(左下角显示的比例尺控件)  
         
    }

    var opts = {
        width: 100,     // 信息窗口宽度
        height: 50,     // 信息窗口高度
        title: companyName// 信息窗口标题
    }
    //地图事件设置函数：
    function setMapEvent() {
        map.enableDragging(); //启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom(); //启用地图滚轮放大缩小
        map.enableDoubleClickZoom(); //启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard(); //启用键盘上下左右键移动地图
    }

    //地图控件添加函数：
    function addMapControl() {
        //向地图中添加缩放控件
        var ctrl_nav = new BMap.NavigationControl({ anchor: BMAP_ANCHOR_TOP_LEFT, type: BMAP_NAVIGATION_CONTROL_LARGE });
        map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
        //向地图中添加比例尺控件
        var ctrl_sca = new BMap.ScaleControl({ anchor: BMAP_ANCHOR_BOTTOM_LEFT });
        map.addControl(ctrl_sca);
    }
    initMap(); //创建和初始化地图
}
else
{
        var map_2;
    //创建地图
        function initMap_2() {
            createMap_2();
            setMapEvent_2();
            addMapControl_2();
    }
        function createMap_2() {
            var map_2 = new BMap.Map("map"); //创建地图
            map_2.centerAndZoom(new BMap.Point(xx, yy), 18); //初始化地图
            var marker_2 = new BMap.Marker(new BMap.Point(xx, yy), {
            enableMassClear: false,
            raiseOnDrag: true
        });
       
            marker_2.enableDragging();
            map_2.addOverlay(marker_2);
        

            map_2.enableScrollWheelZoom();  // 开启鼠标滚轮缩放    
            map_2.enableKeyboard();         // 开启键盘控制    
            map_2.enableContinuousZoom();   // 开启连续缩放效果    
            map_2.enableInertialDragging(); // 开启惯性拖拽效果  

            map_2.addControl(new BMap.NavigationControl()); //添加标准地图控件(左上角的放大缩小左右拖拽控件)  
            map_2.addControl(new BMap.ScaleControl());      //添加比例尺控件(左下角显示的比例尺控件)  
        
    }

        var opts_2 = {
        width: 100,     // 信息窗口宽度
        height: 50,     // 信息窗口高度
        title: companyName// 信息窗口标题
    }
    //地图事件设置函数：
        function setMapEvent_2() {
            map_2.enableDragging(); //启用地图拖拽事件，默认启用(可不写)
            map_2.enableScrollWheelZoom(); //启用地图滚轮放大缩小
            map_2.enableDoubleClickZoom(); //启用鼠标双击放大，默认启用(可不写)
            map_2.enableKeyboard(); //启用键盘上下左右键移动地图
    }
    //地图控件添加函数：
        function addMapControl_2() {
        //向地图中添加缩放控件
            var ctrl_nav_2 = new BMap.NavigationControl({ anchor: BMAP_ANCHOR_TOP_LEFT, type: BMAP_NAVIGATION_CONTROL_LARGE });
            map_2.addControl(ctrl_nav_2);
        //向地图中添加缩略图控件
        //var ctrl_ove = new BMap.OverviewMapControl({ anchor: BMAP_ANCHOR_BOTTOM_RIGHT, isOpen: 1 });
        //map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
            var ctrl_sca_2 = new BMap.ScaleControl({ anchor: BMAP_ANCHOR_BOTTOM_LEFT });
            map_2.addControl(ctrl_sca_2);
    }
    //公司地址为空时加载
    if (xx == "116.3726806640625" &&  contactArea != "")
    {
        var map_2 = new BMap.Map("map"); //创建地图
        setMapEvent_2();
        addMapControl_2();
        var local_2 = new BMap.LocalSearch(map_2, {
            renderOptions: { map: map_2, panel: "results" },
            onInfoHtmlSet: function () {
                //要等到气泡显示加载完成后再改变显示级别
                map_2.setZoom(12);
                map_2.closeInfoWindow();
            },
            pageCapacity: 1
        });
        local_2.search(contactArea);
    }
    else
    {
        initMap_2(); //创建和初始化地图
    }
}
 