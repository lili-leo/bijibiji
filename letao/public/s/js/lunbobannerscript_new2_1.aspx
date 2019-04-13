
            
           

            
            document.write("<script type='text/javascript'>");
            document.write("$(function () {");
            document.write("var imgleng = $('.index_banner li').length;");
            document.write("var imgbtn = $('.btn-nav em').length;");
            document.write("var imgnum = imgleng - imgbtn + 1;");
            document.write("var iNow = 0;");////存起来点击的序号
            document.write("for (var i = 1; i < imgnum; i++) {");
            document.write("$('.btn-nav').append('<em>' + i + '</em>');");//有几个图片，就生成几个按钮
            document.write("}");
            document.write("$('.btn-nav em').eq(0).attr('class', 'active'); ");//默认第一个选中   
            document.write("$('.btn-nav em').on('click', function () {");//事件绑定为click
            document.write("$(this).addClass('active').siblings().removeClass('active');");
            document.write("var index = $(this).index();");
            document.write("iNow = index;");
            document.write("$('.index_banner li').hide().eq(index).show();");
            document.write("});");
            document.write("var btnnavtime = setInterval(function () {");
            document.write("iNow++;");
            document.write("if (iNow > imgleng - 1) { iNow = 0; }");//自动加到数值大于按钮时，归0重新计数；
            document.write("$('.btn-nav em').eq(iNow).trigger('click');");//委托事件执行;
            document.write("}, 6000);");
            document.write("$('.btn-nav').css('margin-left',-26*imgleng/2);"); //相对居中位置计算位移值
            document.write("});");
            document.write("</script>");

            
            document.write("<div class='index-banner-nav'>");
            document.write("<div class='btn-nav'></div>");
            document.write("<div class='index-imgnav'>");
            document.write("<ul class='index_banner'>");
                
            document.write("<li style='background-image: url(http://cos.solepic.com/20180911/2862132_20189111652369.jpg);display:block;'> <a href='http://slw8520.51sole.com/' target='_blank'></a></li>");
                
            document.write("<li style='background-image: url(http://cos.solepic.com/20180911/2862132_20189111652542.jpg);display:block;'> <a href='http://slw8520.51sole.com/' target='_blank'></a></li>");
                
            document.write("<li style='background-image: url(http://cos.solepic.com/20180911/2862132_20189111653199.jpg);display:block;'> <a href='http://slw8520.51sole.com/' target='_blank'></a></li>");
                
            document.write("</ul>");
            document.write("</div>");
            document.write("</div>");
              

