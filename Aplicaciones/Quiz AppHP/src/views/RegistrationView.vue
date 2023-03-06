<script setup>
import { useRouter } from 'vue-router'


const router = useRouter();

</script>



<template>
  <div class="container">
    <h1 class="intro">First of all, please introduce yourself</h1>
    <input class="input" type="text" placeholder="name" id="myInput" />
  </div>
  <button class="btn" v-on:click="router.push('/introduction')">Begin</button>
</template>

<style scoped>

.container{
  display: flex;
  justify-content: center;
  flex-direction: column;
}

.intro{
  margin-bottom: 10px;
}

.input{
  margin-top: 10px;
  width: 80%;
  align-self: center;
}

.btn{
  margin-top: 20px;
}


</style>
