<script setup>
import { RouterView } from 'vue-router'
</script>

<template>
  <body>
    <audio autoplay src="./src/archivos/Hedwig Theme.mp3"></audio>

    <div class="main">
      <RouterView> </RouterView>
    </div>
  </body>
</template>

<style scoped>
body {
  min-height: 100vh;
  background-image: url('./src/archivos/background/Background.jpg');
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center;
}

.main {
  height: 100vh;
  display: flex;
  position: relative;
  align-items: center;
  justify-content: center;
  color:white;
  flex-direction: column;
}

.fade-enter-active,
.fade-leave-active {
  transition: opacity 2.5s;
}

.fade-enter,
.fade-leave-to {
  opacity: 0;
}

/* Define the transition animation */
.leave-transition {
  animation: leave-page 3s ease;
}

/* Keyframes for the animation */
@keyframes leave-page {
  0% {
    opacity: 1;
  }
  50% {
    opacity: 0.5;
    transform: translateY(-20px);
  }
  100% {
    opacity: 0;
    transform: translateY(-50px);
  }
}
</style>
