<script setup>
import { useRouter } from 'vue-router'

const router = useRouter()
</script>

<template>
  <div class="container">
      <h1 class="welcome">Welcome to the Wizarding World</h1>
    <button class="button" v-on:click="router.push('/registration')">Start your Adventure</button>
  </div>
</template>



<style scoped>

.container{
  display: flex;
  justify-content: center;
  flex-direction: column;
}

.welcome{
  margin-top: 10px;
  width: 100%;
  align-self: center;
}



.button {
  margin-top: 10px;
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 10px 20px;
  animation-delay: aparition 5s;
  animation: flickerAnimation 2s infinite;
}


@keyframes flickerAnimation {
  0% {
    opacity: 1;
  }
  50% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}



</style>
