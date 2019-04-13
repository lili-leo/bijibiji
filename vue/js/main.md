var app=new Vue({
    el:"#app",
    data:{
        name:"雷锋",
        age:20,
        sex:"male",
        sexs:null,
        formaa:2,
        role:"admin ",
        url:"http://baidu.com",
        foodList:["葱","酱油","大蒜"],
        foodLists:[
            {name:"葱",price:"10"},
            {name:"酱油",price:"20"},
            {name:"大蒜",price:"30"},
        ],

    },
    methods:{
        anniu:function () {
            console.log(123)
        },
        onenter:function () {
            console.log(456)
        },
        onleave:function () {
            console.log(789)
        },
    }
});








