/*****moveJS*****/
		   function navigation(){
		      document.getElementById("LI2").className="sel";
		   }
			function search1(userName,_IsRightDo)
			{
			    var url="";
			    var keyword=document.getElementById("keyword").value;
              var _IsR = _IsRightDo.toLowerCase();

  		            if(keyword=="" || keyword=="输入产品关键字")
			        {
			     	    alert("请输入产品的关键字");
			     	    document.getElementById("keyword").value = "";
			     	    document.getElementById("keyword").focus();
			        }
			        else 
			        {
			            url="http://"+ userName +".51sole.com/ProductSearch_" + keyword + ".htm";
					    window.location.href=url;
			        } 
			}
		   function changeBodyBG(){
	          document.body.style.background = bodybackground;
	        }
		   function clear1(obj){
		     if(obj=="输入产品关键字"){
		      document.getElementById("keyword").value="";
		    }
	      }
          function maxWHT(img){
	      		var vWidth=img.width;
	      		var vHeight=img.height;
	      		if(vWidth>vHeight){
	      			img.width=100;
	      			img.height=vHeight/vWidth*100;
	      			img.style.marginTop=(100-img.height)/2;
	      		}else if(vWidth<vHeight){
	      			img.height=100;
	      			img.width=vWidth/vHeight*100;
	      			img.style.marginTop=0;
	      		}else{
	      			img.width=100;
	      			img.height=100;
	      			img.style.marginTop=0;
	      		}
			}
	       function setSel(obj){
	       	  if(obj.id!="LI2"){
		   		obj.className="sel";
		   		}
		   }
		   function cancelsel(obj){
			    if(obj.id!="LI2"){
			   		obj.className="";
			   	}
		   }
      
	      function onBluse(obj){
	         if(obj.value==""){
	           obj.value="输入产品关键字";
	         }
	      }
			 function changundertone(){
	        	document.getElementById("container").style.background=undertone;
	        }
	        
function checkinput()
{
    if (document.getElementById("txtTitle").value == "")
    {
        alert("请您输入标题！");
        document.getElementById("txtTitle").focus();
        return false;
    }
    if (document.getElementById("txtContent").value == "")
    {
        alert("请您输入咨询内容！");
        document.getElementById("txtContent").focus();
        return false;
    }
    if (document.getElementById("txtPersonName").value == "")
    {
        alert("请您输入姓名！");
        document.getElementById("txtPersonName").focus();
        return false;
    }
    if (document.getElementById("txtTel").value == "")          
    {
        alert("请您输入电话！");
        document.getElementById("txtTel").focus();
        return false;
    }
    if (document.getElementById("txtValidator_new_3_1").value == ""||document.getElementById("txtValidator_new_3_1").value == "点此获取验证码")
    {
        alert("请您输入验证码！");
        document.getElementById("txtValidator_new_3_1").focus();
        return false;
    }
    
    return true;
}


	 var flag=false;   
 var flag1=false;
   var flag2=false;
   var flag3=false;
function Block()
{
    var div=document.getElementById("pop2");
    //var div1=document.getElementById("pop1");
    var div2=document.getElementById("pop3");
    //div1.style.display="none";
    div2.style.display="none";
    if (!flag)
    {
        div.style.display="block";
        flag=true;
        flag1=false;
        flag2=false;
        flag3=false;
    }
    else
    {
        div.style.display="none";
        flag=false;
        
        
    }
}
function Block1()
{
    var div=document.getElementById("pop1");
    //var div1=document.getElementById("pop2");
    var div2=document.getElementById("pop3");
     var div3=document.getElementById("pop4");
    //div1.style.display="none";
    div2.style.display="none";
    div3.style.display="none";
    if (!flag1)
    {
        div.style.display="block";
        flag1=true;
        flag=false;
        flag2=false;
        flag3=false;
    }
    else
    {
        div.style.display="none";
        flag1=false;
    }
}

function Block2()
{
    var div=document.getElementById("pop1");
    //var div1=document.getElementById("pop2");
    var div2=document.getElementById("pop3");
    var div3=document.getElementById("pop4");
    div.style.display="none";
    div3.style.display="none";
    //div1.style.display="none";
    if (!flag2)
    {
        div2.style.display="block";
        flag2=true;
         flag1=false;
        flag=false;
        flag3=false;
    }
    else
    {
        div2.style.display="none";
        flag2=false;
    }
}
function Block3()
{  
    var div0=document.getElementById("pop1");
    var div2=document.getElementById("pop3");
    var div=document.getElementById("pop4");
    div0.style.display="none";
    div2.style.display="none";
    if (!flag3)
    {
        div.style.display="block";
        flag3=true;
        flag2=false;
        flag1=false;
        flag=false;
    }
    else
    {
        div.style.display="none";
        flag3=false;
    }
}

function None(id)
{
    document.getElementById(id).style.display="none";    
}


function getOs() {
    var OsObject = "";
    if (navigator.userAgent.indexOf("MSIE") > 0) {
        return "MSIE";
    }
    if (isFirefox = navigator.userAgent.indexOf("Firefox") > 0) {
        return "Firefox";
    }
    if (isSafari = navigator.userAgent.indexOf("Safari") > 0) {
        return "Safari";
    }
    if (isCamino = navigator.userAgent.indexOf("Camino") > 0) {
        return "Camino";
    }
    if (isMozilla = navigator.userAgent.indexOf("Gecko/") > 0) {
        return "Gecko";
    }

}
function nofind() {
    var img = event.srcElement;
    img.src = "//www.51sole.com/images/notpic.gif";
}
function navigation() {
    document.getElementById("homepage").className = "sel";
}
var xmlhttp;
function loginout() {

    xmlhttp = null;
    if (window.XMLHttpRequest) {// code for Firefox, Opera, IE7, etc.
        xmlhttp = new XMLHttpRequest();
    }
    else if (window.ActiveXObject) {// code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    if (xmlhttp != null) {

        xmlhttp.onreadystatechange = state_Change;
        xmlhttp.open("GET", "/loginout.ashx", true);
        xmlhttp.send(null);
    }
    else {
        alert("Your browser does not support XMLHTTP.");
    }
}
function state_Change() {
    if (xmlhttp.readyState == 4) {// 4 = "loaded"
        if (xmlhttp.status == 200) {// 200 = "OK"
            window.location = window.location;
        }
        else {
            alert("error");
        }
    }
}
function w(vd) {
    var ob = document.getElementById(vd);
    if (ob.style.display == "block" || ob.style.display == "") {
        ob.style.display = "none";
        var ob2 = document.getElementById('s' + vd);
        ob2.style.backgroundImage = "url(//style.51sole.com/template/images/ico080426_open.gif)";
    }
    else {
        ob.style.display = "block";
        var ob2 = document.getElementById('s' + vd);
        ob2.style.backgroundImage = "url(//style.51sole.com/template/images/ico080426_close.gif)";
    }
}
function search() {
    search1(userName, _IsRightDo);
}
$.ajax({
    type: "POST",
    url: "/IndexLoginState.ashx",
    success: function (response) {
        var dataobj = eval("(" + response + ")"); //转换为json对象
        if (dataobj.TxtUserName == "") {
            str = "<a class=\"home\" href=\"//www.51sole.com/\" target=\"_blank\"></a>您好，欢迎来到搜了网<a href=\"//user.51sole.com\" rel=\"nofollow\" target=\"_blank\" class=\"nobg\">[请登录]</a><a href=\"//reg.51sole.com/?From=" + urlFrom + "\" target=\"_blank\" rel=\"nofollow\" class=\"nobg\">[免费注册]</a>";
            $("#popctrl").html(str);
        }
        else {
            str = "<a class=\"home\" href=\"//www.51sole.com/\" target=\"_blank\"></a>您好，<a  href=\"//user.51sole.com/user/WebSiteInfo.aspx\" target =\"_blank\" rel=\"nofollow\" class=\"nobg\">" + dataobj.TxtUserName + "</a>消息：<a href=\"//user.51sole.com/user/Web/SystemMessage.aspx\" target =\"_blank\" title=\"点击查看消息\" rel=\"nofollow\" class=\"nobg\">" + dataobj.Txtmessage + "条</a><a href=\"javascript:void(0);\" onclick=\"loginout()\" rel=\"nofollow\" class=\"nobg\">[退出]</a><a href=\"//reg.51sole.com/?From=" + urlFrom + "\" target=\"_blank\"  rel=\"nofollow\" class=\"nobg\">[免费注册]</a>";
            $("#popctrl").html(str);
        }
    }
});
$(function () {
    $('#qrcodebg').hover(function () { $('#qrcode').fadeIn() }, function () { $('#qrcode').fadeOut() });
});


/*****dataStatistical.js*****/
function outputSta() {
    document.write(unescape("%3Cscript src='JS/dataStatistical.js' type='text/javascript'%3E%3C/script%3E"));
}
/*****百度广告*****/
function baiduA() {
    document.write(unescape("%3Cscript src='http://cpro.baidustatic.com/cpro/ui/c.js' type='text/javascript'%3E%3C/script%3E"));
}
function baiduB() {
    document.write(unescape("%3Cscript src='//style.51sole.com/js/baidu.js' type='text/javascript'%3E%3C/script%3E"));
}
function baiduC() {
    document.write(unescape("%3Cscript src='http://cpro.baidustatic.com/cpro/ui/f.js' type='text/javascript'%3E%3C/script%3E"));
}
/*****消息1*****/
function message1() {
    $.ajax({
        type: "POST",
        url: "IndexLoginState.ashx",
        success: function (response) {
            var dataobj = eval("(" + response + ")"); //转换为json对象
            if (dataobj.TxtUserName == "") {
                str = "<a class=\"home\" href=\"//www.51sole.com/\" target=\"_blank\"></a>您好，欢迎来到搜了网<a href=\"//user.51sole.com\" rel=\"nofollow\" target=\"_blank\" class=\"nobg\">[请登录]</a><a href=\"//reg.51sole.com/\" target=\"_blank\" rel=\"nofollow\" class=\"nobg\">[免费注册]</a>";
                $("#popctrl").html(str);
            }
            else {
                str = "<a class=\"home\" href=\"//www.51sole.com/\" target=\"_blank\"></a>您好，<a  href=\"//user.51sole.com/user/WebSiteInfo.aspx\" target =\"_blank\" rel=\"nofollow\" class=\"nobg\">" + dataobj.TxtUserName + "</a>消息：<a href=\"//user.51sole.com/user/Web/SystemMessage.aspx\" target =\"_blank\" title=\"点击查看消息\" rel=\"nofollow\" class=\"nobg\">" + dataobj.Txtmessage + "条</a><a href=\"javascript:void(0);\" onclick=\"loginout()\" rel=\"nofollow\" class=\"nobg\">[退出]</a><a href=\"//reg.51sole.com/?From=" + urlFrom + "\" target=\"_blank\"  rel=\"nofollow\" class=\"nobg\">[免费注册]</a>";
                $("#popctrl").html(str);
            }
        }
    });
}
/*****消息2*****/
function message2() {
    $.ajax({
        type: "POST",
        url: "IndexLoginState.ashx",
        success: function (response) {

            var dataobj = eval("(" + response + ")");
            if (dataobj.TxtUserName == "") {
                str = "<a href=\"//user.51sole.com\" rel=\"nofollow\" target=\"_blank\" class=\"nobg\">[请登录]</a>&nbsp;<a href=\"//reg.51sole.com/\" target=\"_blank\" rel=\"nofollow\" class=\"nobg\">[免费注册]</a>";
                $(".llogin").eq(0).prepend(str);
            }
            else {
                str = "您好，<a  href=\"//user.51sole.com/user/WebSiteInfo.aspx\" target =\"_blank\" rel=\"nofollow\" class=\"nobg\">" + dataobj.TxtUserName + "</a>&nbsp;消息：<a href=\"//user.51sole.com/user/Web/SystemMessage.aspx\" target =\"_blank\" title=\"点击查看消息\" rel=\"nofollow\" class=\"nobg\">" + dataobj.Txtmessage + "条</a>&nbsp;<a href=\"javascript:void(0);\" onclick=\"loginout()\" rel=\"nofollow\" class=\"nobg\">[退出]</a>&nbsp;<a href=\"//reg.51sole.com/\" target=\"_blank\"  rel=\"nofollow\" class=\"nobg\">[免费注册]</a>";
                $(".llogin").eq(0).prepend(str);
            }
        }
    });
}

/*****搜脉聊天*****/
//document.write(unescape("%3Cscript src='//base.51sole.com/shoumaichat/soumaichat.min.js' charset='utf-8' type='text/javascript'%3E%3C/script%3E"));

function cliksearch01() {
    document.getElementById("mw1").className = "on";
    document.getElementById("mw2").className = "";
}
function cliksearch02() {
    document.getElementById("mw1").className = "";
    document.getElementById("mw2").className = "on";
}
