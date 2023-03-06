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
      count: 0,
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
    <div v-if="quizMode" class="quiz">
    <h2 class="title">{{ quiz[count].title }}</h2>
    <div v-for="(answer, index) in quiz[count].answers" v-bind:key="answer.title" class="answers">
      <input v-model="option" type="radio" :value="index" class="input" />
      <label>{{ answer.title }}</label>
    </div>
    <button class="button" @click="addPoints()">Next</button>
  </div>
  <div v-else>
    Welcome to house:
    {{ getHouse() }}
  </div>
</template>

<style scoped>

.quiz {
  position: relative;
  width: 560px;
  height: 620px;
  background: transparent;
  border-radius: 20px;
  border: 2px solid;
  border-color: white;
  backdrop-filter: blur(20px);
  box-shadow: 0 0 30px rgba(0, 0, 0, .5);
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  overflow: hidden;
  margin: 200px;
}



.title{
  font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
  font-weight: 500;
  position: absolute;
  top: 65px;
  justify-content: center;
  display: flex;
  widows: 100%;
  text-align: center;
}


.title::after{
    content: '';
    position: absolute;
    width: 100%;
    height: 3px;
    background: white;
    border-radius: 5px;
    left: 0;
    bottom: -6px;
    transform-origin: right;
    transform: scaleX(0);
    transition: transform 1.5s;
}

.title:hover::after {
    transform-origin: left;
    transform: scaleX(1);
}
.answers{
  display: inline;
  height: 10px;
  width: 80%;
  position: relative;
  left: 10px;
  flex-direction: column;
  justify-content: space-evenly;
  margin-top: 30px;
  margin-bottom: 10px;
  font-size: 20px;
}


.answers:hover{
  animation: infinite;
}

.input{
  cursor: url('../archivos/varita.jpg'), pointer;
  accent-color: blue;
  border-radius: 0;
}

.button{
  position: absolute;
  bottom: 65px;
  border-radius: 10px;
  padding: 10px 30px;
  transition: 1s ease;
  cursor: pointer;
}

.button:hover{
  background-color: turquoise;
  color: white;
  transform: scale(1.5);
}

</style>
