import { createRouter, createWebHistory } from "vue-router";
import HomeView from "../views/HomeView.vue"
import QuizView from "../views/QuizView.vue"
import RegistrationView from "../views/RegistrationView.vue"
import IntroductionView from "../views/IntroductionView.vue"


const router= createRouter({
    history: createWebHistory(import.meta.env.BASE_URL),
    routes: [
        {
            path: "/",
            name: "home",
            component: HomeView
        },
        {
            path: "/registration",
            name: "registration",
            component: RegistrationView
        },
        {
            path: "/introduction",
            name: "introduction",
            component: IntroductionView
        },
        {
            path: "/quiz",
            name: "quiz",
            component: QuizView
        }
    ]

})

export default router