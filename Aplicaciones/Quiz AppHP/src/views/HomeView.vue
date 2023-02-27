<script setup>
import { useRouter } from 'vue-router'

const router = useRouter()
</script>

<template>
  <div class="container">
    <h2>
      <span>Welcome</span>
      <span>to</span>
      <span>the</span>
      <span>Wizarding</span>
      <span>World</span>
    </h2>

    <transition name="fade">
      <h1>Welcome to the Wizarding World</h1>
    </transition>

    <button v-on:click="router.push('/registration')">Start your Adventure</button>
  </div>
</template>

<!--la idea es 
Welcome to the Wizarding World: aparezca mágico; incluso varios efectos e ir rotando. Fade Effect.
Start your adventure botton esté blinking y de color blanco me suena bien Flickering Effect-->

<style scoped>
.fade-enter-from {
  color: white;
}

h2 {
  color: aliceblue;
  text-align: center;
  transform: scale(0.94);
  animation: scale 3s forwards cubic-bezier(0.5, 1, 0.89, 1);
}

@keyframes scale {
  100% {
    transform: scale(1);
  }
}

span {
  display: inline-block;
  opacity: 0;
  filter: blur(4px);
}

span:nth-child(1) {
  animation: fade-in 0.8s 0.1s forwards cubic-bezier(0.11, 0, 0.5, 0);
}

span:nth-child(2) {
  animation: fade-in 0.8s 0.2s forwards cubic-bezier(0.11, 0, 0.5, 0);
}

span:nth-child(3) {
  animation: fade-in 0.8s 0.3s forwards cubic-bezier(0.11, 0, 0.5, 0);
}

span:nth-child(4) {
  animation: fade-in 0.8s 0.4s forwards cubic-bezier(0.11, 0, 0.5, 0);
}

span:nth-child(5) {
  animation: fade-in 0.8s 0.5s forwards cubic-bezier(0.11, 0, 0.5, 0);
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
@-o-keyframes flickerAnimation {
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
@-moz-keyframes flickerAnimation {
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
@-webkit-keyframes flickerAnimation {
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

button {
  animation-delay: 5s;
  -webkit-animation: flickerAnimation 2s infinite;
  -moz-animation: flickerAnimation 2s infinite;
  -o-animation: flickerAnimation 2s infinite;
  animation: flickerAnimation 2s infinite;
}
</style>
