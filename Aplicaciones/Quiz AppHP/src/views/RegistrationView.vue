<script setup>
import { useRouter } from 'vue-router'

const router = useRouter()
</script>

<template>
  <div>
    <h1>First of all, please introduce yourself</h1>
    <input type="text" placeholder="name" />
  </div>
  <button v-on:click="router.push('/introduction')">Begin</button>
</template>
