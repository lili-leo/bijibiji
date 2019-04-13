(function(){
    if (document.referrer.indexOf('/m.51sole.com')>-1){ document.cookie='nomobile=1;path=/;domain=.51sole.com';}
    if(document.cookie.indexOf('nomobile=')>-1){return false;}
    if ((navigator.userAgent.match(/(iPhone|iPod|iPad|Android|ios)/i))) { location.replace(mobile_url); }
})();