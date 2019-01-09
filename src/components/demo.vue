<template>
  <div>
    <h1>{{msg}}</h1>
    <input type="button" @click="test" value="按钮">
    <text>{{msg}}</text>
  </div>
</template>


<script>
import $ from 'jquery'
export default {
  name: 'demo',
  data () {
    return {
      msg:'点击按钮'
    }
  },
  methods:{
    test:function(){
    console.log("dsa")
      $.get("http://111.231.132.87:8075"+"/test2",(response)=>{
        console.log("asd")
        this.msg=response
      })
    }
  }
}
</script>
