<script setup>
import { useRouter } from 'vue-router'

const router = useRouter()
</script>

<template>
  <div class="container">
    <h3>Hogwarts School of Witchcraft and Wizardry is a school for young wizards and witches that is in Britain, and most British and Irish witches go there.</h3>
    <h3>It is considered one of the best wizarding schools.</h3>
    <h3>It is over a thousand years old and was founded by Godric Gryffindor, Helga Hufflepuff, Rowena Ravenclaw and Salazar Slytherin, after whom the school's four houses are named.</h3>
    <h3>Every student belongs to one of the four houses.</h3>
    <h3>The sorting hat every year chooses (or not completely?) where you will live in the next 7 years...</h3>
    <button class="button" v-on:click="router.push('/quiz')">Start your Adventure</button>
  </div>
</template>

<style scoped>

.container{
  display: flex;
  flex-direction: column;
  align-items: center;
  align-self: center;
  justify-content: center;
}
.button{
  margin-top: 30px;
  animation: vibrate 4s ease-in-out infinite;
  width: 25%;
  align-self: center;

}

@keyframes vibrate {
  0% {
    transform: translate(0, 0);
  }
  10% {
    transform: translate(-2px, -2px);
  }
  20% {
    transform: translate(2px, 2px);
  }
  30% {
    transform: translate(-2px, -2px);
  }
  40% {
    transform: translate(2px, 2px);
  }
  50% {
    transform: translate(-2px, -2px);
  }
  60% {
    transform: translate(2px, 2px);
  }
  70% {
    transform: translate(-2px, -2px);
  }
  80% {
    transform: translate(2px, 2px);
  }
  90% {
    transform: translate(-2px, -2px);
  }
  100% {
    transform: translate(0, 0);
  }
}
</style>
