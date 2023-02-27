<script setup>
import { useRouter } from 'vue-router'

const router = useRouter()
</script>

<template>
  <div class="container">
    <h1>Hogwarts...</h1>
    <button v-on:click="router.push('/quiz')">Start your Adventure</button>
  </div>
</template>

<style></style>
