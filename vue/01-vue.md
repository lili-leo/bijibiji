<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<div id="app">
    <div>
        <input type="text" v-model.lazy="name">
        <span>你的名字是:{{name}}</span>
    </div>
    <div>
        <input type="text" v-model.trim="age">
        <span>你的年龄是:{{age}}</span>
    </div>
    <div>
        <input type="text" v-model="sex">
        <span v-if="sex">你的性别是:{{sex}}</span>
    </div>
    <ul>
        <li v-for="food in foodList">{{food}}</li>
    </ul>
    <ul>
        <li v-for="foo in foodLists">{{foo.name}}:￥{{foo.price}}</li>
    </ul>
    <a v-bind:href="url">点我</a><br>
    <button v-on:click="anniu">按钮点击</button>
    <button v-on="{mouseenter:onenter,mouseleave:onleave}">按钮进入离开</button>
    <lable>男<input type="radio" value="male" v-model="sex"></lable>
    <lable>女<input type="radio" value="female" v-model="sex"></lable>
    <select name="" id="" v-model="formaa" multiple>
        <option value="1">王家沟</option>
        <option value="2">背背山</option>
        <option value="3">地理</option>
        <option value="4">历史</option>
    </select><br>
    <!--<lable>男<input type="checkbox" value="male" v-model="sexs"></lable>-->
    <!--<lable>女<input type="checkbox" value="female" v-model="sexs"></lable>-->
    <div v-if="role=='admin'">你好管理员</div>
    <div v-else-if="role=='ro'">你不是管理员</div>
</div>


<script src="lib/vue.js"></script>
<script src="js/main.js"></script>
</body>
</html>