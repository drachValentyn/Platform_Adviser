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
            component: Homepage,
            meta: {
                title: 'Home - Platform adviser'
            }
        },
        {
            path: '/quiz',
            name: 'quiz',
            component: Quiz,
            meta: {
                title: 'Quiz - Platform adviser'
            }
        },
        {
            path: '/result',
            name: 'result',
            component: Result,
            meta: {
                title: 'Result - Platform adviser'
            }
        },
        {
            path: '/result/:id',
            props: true,
            name: 'resultShare',
            component: ResultShare,
            meta: {
                title: 'Share Result - Platform adviser',
            },
        },
        {
            path: '/thank-you',
            name: 'ThankYou',
            component: ThankYou,
            meta: {
                title: 'Thank You - Platform adviser',
            },
        },
        {
            path: '/change-result',
            name: 'ChangeResult',
            component: ChangeResult,
            meta: {
                title: 'Change result - Platform adviser'
            }
        },
    ],
    mode: 'history'
})
