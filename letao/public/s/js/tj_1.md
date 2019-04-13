//页面统计脚本
var PageUrl = window.location;
$(document).ready(function () {setTimeout(tjCount,1000);});
function tjCount() { $.ajax({ url: "ascx/tj.ashx?v=" + Math.random(), type: "POST", async: false, dataType: "json", data: { InfoID: tj_id, InfoType: tj_type, PageUrl: encodeURIComponent(PageUrl), _userID: _userID } }); }