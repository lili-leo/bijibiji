<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Slideout Demo</title>
    <meta http-equiv="cleartype" content="on">
    <meta name="MobileOptimized" content="320">
    <meta name="HandheldFriendly" content="True">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <style>
        body {
            width: 100%;
            height: 100%;
            margin: 0 auto;
        }

        #menu {
            position: fixed;
            top: 0;
            bottom: 0;
            width: 256px;
            min-height: 100vh;
            overflow-y: scroll;
            -webkit-overflow-scrolling: touch;
            z-index: 0;
            display: none;
            background-color: #1D1F20;
        }

        #menu {
            left: 0;
        }

        #menu {
            right: 0;
        }

        .panel {
            position: relative;
            z-index: 1;
            will-change: transform;
            background-color: #FFF; /* A background-color is required */
            min-height: 100vh;
        }

        /*.slideout-open,*/
        .slideout-open body,
        .slideout-open .panel,
        .slideout-open header {
            overflow: hidden;
        }

        .slideout-open #menu {
            display: block;
        }

        .fixed-header {
            position: fixed;
            width: 100%;
            height: 50px;
            backface-visibility: hidden;
            z-index: 2;
            background-color: red;
            top: 0;
            left: 0;
        }

        .btn-hamburger {
            position: static;
            height: 40px;
            width: 40px;
        }

        .panel:before {
            content: '';
            display: block;
            background-color: rgba(0, 0, 0, 0);
            transition: background-color 0.5s ease-in-out;
        }

        .panel:before {
            position: absolute;
            top: 0;
            bottom: 0;
            width: 100%;
            background-color: rgba(0, 0, 0, .5);
            z-index: 99;
        }
    </style>
</head>
<body>

<nav id="menu">
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
    <h2>Menu</h2>
</nav>
<header class="fixed-header">
    <button class="btn-hamburger toggle-button"></button>
    <a href="#" id="top" class="fixed-header-right">顶部按钮</a>
</header>
<main id="main" class="panel">
    <header>

        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <h2>Panel</h2>
        <p>
    </header>
</main>

<script src="slideout.js"></script>
<script>
  var slideout = new Slideout({
    'panel': document.getElementById('main'),
    'menu': document.getElementById('menu'),
    'padding': 256,
    'tolerance': 70
  });

  // Toggle button
  document.querySelector('.toggle-button').addEventListener('click', function () {
    slideout.toggle();
  });

  var fixed = document.querySelector('.fixed-header');

  slideout.on('translate', function (translated) {
    fixed.style.transform = 'translateX(' + translated + 'px)';
  });

  slideout.on('beforeopen', function () {
    fixed.style.transition = 'transform 300ms ease';
    fixed.style.transform = 'translateX(256px)';
  });

  slideout.on('beforeclose', function () {
    fixed.style.transition = 'transform 300ms ease';
    fixed.style.transform = 'translateX(0px)';
  });

  slideout.on('open', function () {
    fixed.style.transition = '';
  });

  slideout.on('close', function () {
    fixed.style.transition = '';
  });

  function close(eve) {
    eve.preventDefault();
    slideout.close();
  }

  slideout
      .on('beforeopen', function () {
        this.panel.classList.add('panel-open');
      })
      .on('open', function () {
        this.panel.addEventListener('click', close);
      })
      .on('beforeclose', function () {
        this.panel.classList.remove('panel-open');
        this.panel.removeEventListener('click', close);
      });
</script>
<script src="jquery.min.js"></script>
<script>
  $(document).ready(function () {
    //当点击顶部按钮的时候，执行方法,scrollTop属性获取选中标签距滚动条的距离。
    $('#top').click(function () {
      $('html').animate(
          {scrollTop: '0px'}, 1000
      );
    });
    //当点击底部标签时候，执行方法，其中offset()获取匹配元素在当前视口的相对偏移,返回的是一个对象，有两个属性top,left
    //animate,的第二个属性当然我们也可以设置'slow','normal'或'fast'
    $('#foot').click(function () {
      $('html').animate(
          {scrollTop: $('span').offset().top}, 1000
      );
    });
  });
</script>
</body>
</html>