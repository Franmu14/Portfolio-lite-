<script setup>
import json from '../data/sorting_hat.json'
import { ref, toRaw } from 'vue'
</script>

<script>
export default {
  // state
  data() {
    return {
      houses: ['griffyndor', 'ravenclaw', 'hufflepuff', 'slytherin'],
      quiz: ref(json),
      count: 24,
      g: 0,
      r: 0,
      h: 0,
      s: 0,
      option: null,
      quizMode: true
    }
  },
  // actions
  methods: {
    getHouse() {
      const houseList = [this.g, this.r, this.h, this.s]
      const maxHouse = houseList.reduce((max, house, index) => {
        if (house > houseList[max]) return index
        return max
      }, 0)
      console.log(maxHouse)
      return this.houses[maxHouse]
    },
    increment() {
      if (this.quiz.length === this.count + 1) {
        this.quizMode = false
        this.option = null
        return
      } else {
        this.count++
        this.option = null
      }
    },
    addPoints() {
      const values = toRaw(toRaw(this.quiz[this.count]).answers[this.option]).scores
      this.g += values.g
      this.r += values.r
      this.h += values.h
      this.s += values.s

      console.log('g', this.g, 'r', this.r, 'h', this.h, 's', this.s)
      return this.increment()
    }
  }
}
</script>
<template>
  <div>
    <h1>Json with the questions</h1>
  </div>

  <div v-if="quizMode" class="quiz">
    <h2>{{ quiz[count].title }}</h2>
    <div v-for="(answer, index) in quiz[count].answers" v-bind:key="answer.title">
      <input v-model="option" type="radio" :value="index" />
      <label>{{ answer.title }}</label>
    </div>
    <button @click="addPoints()">Next</button>
  </div>
  <div v-else>
    Welcome to house:
    {{ getHouse() }}
  </div>
</template>

<style>
button {
  border: none;
}
</style>
