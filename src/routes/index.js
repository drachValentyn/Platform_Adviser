import Vue from 'vue';
import Router from 'vue-router'
//import Home from '@/components/HelloWorld'
import ThankYou from '@/components/ThankYou'
import Homepage from '@/components/Homepage'
import Quiz from '@/components/Quiz'
import Result from '@/components/Result'
import ResultShare from '@/components/ResultShare'
import ChangeResult from '@/components/ChangeResult'
import NotFound from '@/components/404-page'
import ChangeResultAdmin from '@/components/ChangeResultAdmin'


Vue.use(Router);

export default new Router({
    routes:[
        {
            path:'/',
            name: 'home',
            component: Homepage,
            meta: {
                title: 'Home - Platform adviser',
                transition: 'fade-in-right'
            }
        },
        {
            path: '/quiz',
            name: 'quiz',
            component: Quiz,
            meta: {
                title: 'Quiz - Platform adviser',
                transition: 'fade-in-right'
            }
        },
        {
            path: '/result',
            name: 'result',
            component: Result,
            meta: {
                title: 'Result - Platform adviser',
                transition: 'fade-in-right'
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
        {
            path: '/change-result-admin',
            name: 'ChangeResultAdmin',
            component: ChangeResultAdmin,
            meta: {
                title: 'Show result - Platform adviser'
            }
        },
        {
            path: '/404',
            name: '404',
            component: NotFound,
            meta: {
                title: 'Page not found - Platform adviser'
            }
        }, {
            path: '*',
            redirect: '/404'
        }
    ],
    mode: 'history'
})
