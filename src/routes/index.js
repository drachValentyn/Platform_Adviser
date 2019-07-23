import Vue from 'vue';
import Router from 'vue-router'
//import Home from '@/components/HelloWorld'
import ThankYou from '@/components/ThankYou'
import Homepage from '@/components/Homepage'
import Quiz from '@/components/Quiz'
import Result from '@/components/Result'
import ResultShare from '@/components/ResultShare'
import ChangeResult from '@/components/ChangeResult'


Vue.use(Router);

export default new Router({
    routes:[
        {
            path:'/',
            name: 'home',
            component: Homepage
        },
        {
            path: '/quiz',
            name: 'quiz',
            component: Quiz
        },
        {
            path: '/result',
            name: 'result',
            component: Result
        },
        {
            path: '/result/:id',
            props: true,
            name: 'resultShare',
            component: ResultShare,
        },
        {
            path: '/thank-you',
            name: 'ThankYou',
            component: ThankYou,
        },
        {
            path: '/change-result',
            name: 'ChangeResult',
            component: ChangeResult,
        },
    ],
    mode: 'history'
})
