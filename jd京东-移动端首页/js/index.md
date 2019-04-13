window.onload=function () {
    // 顶部搜索
    search();
    // 轮播图
    banner();
    // 倒计时
    downTime();
};
var search=function () {
    // var search=document.getElementsByTagName("jd_search")[0];
    var search=document.querySelector(".jd_search_box");
    var banner=document.querySelector(".jd_banner");
    // var banner=document.getElementsByTagName("jd_banner");
    var ban_height = banner.offsetHeight;
    window.onscroll=function () {
        var opacity=0;
        var scrollTop=document.body.scrollTop;
        console.log(scrollTop);
        if(scrollTop<ban_height){
            opacity=scrollTop/ban_height*0.85;
            // search.style.background="rgba(201,21,35,'+opacity+')"
        }else{
            opacity=0.85;
        }
        search.style.background="rgba(201,21,35,"+opacity+")"
    }
};
var banner=function () {

};
var downTime=function () {

};
// window.onload = function () {
//     /*1.顶部搜索*/
//     search();
//     /*2.轮播图*/
//     banner();
//     /*3.倒计时*/
//     downTime();
// };
// var search = function () {
//     /*1.默认固定顶部透明背景*/
//     var searchBox = document.querySelector('.jd_search_box');
//     var banner = document.querySelector('.jd_banner');
//     var height = banner.offsetHeight;
//     /*监听页面滚动事件*/
//     window.onscroll = function () {
//         /*console.log(document.body.scrollTop);
//          console.log(document.documentElement.scrollTop);
//          console.log(window.pageYOffset);*/
//         var scrollTop =document.documentElement.scrollTop;
//         console.log(scrollTop);
//         /*默认的透明度*/
//         var opacity = 0;
//         if (scrollTop < height) {
//             /*2.当页面滚动的时候---随着页面卷曲的高度变大透明度变大*/
//             opacity = scrollTop / height * 0.85;
//         } else {
//             /*3.当页面滚动的时候---超过某一个高度的时候透明度不变*/
//             opacity = 0.85;
//         }
//         searchBox.style.background = 'rgba(201,21,35,' + opacity + ')';
//     }
// };











