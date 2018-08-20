<template>
    <div class="testClase">
        {{ msg }}
        {{ fullName}}
        <input type="text" v-on:keyup.enter="typing">
        <input type="text" v-model="user.firstName">

        <div v-html= "myHtml">
        </div>
        <div v-if="showName">
            <p>{{ user.firstName}}</p>
        </div>
        <div v-else>
            <p>no puedo mostrar nombre</p>
        </div>
        <hr>
        <ul>
            <li v-for="task in tasks">
                {{task.title}}
            </li>
        </ul>

        <button type="button" v-on:click="saludar(user.firstName)">
            CLICK ME
        </button>        
    </div>
</template>

<script>
    export default {
        data(){
            return{
                title: 'Hola Vuejs',
                user: {
                    firstName: 'Joe',
                    lastName: 'McMillan'
                },
                myHtml: '<h3>hola vue</h3>',
                showName: false,
                tasks: [
                    {title: 'eat'},
                    {title: 'dinner'},
                    {title: 'play'}
                ]
            }
        },
        methods:{
            saludar(name) {
                alert('hello ' + name)
            },
            typing (e) {
                console.log(e.target.value)
            }
        },
        computed: {
            fullName() {
                return this.user.firstName + ' ' + this.user.lastName
            }
        },
        props: {
            msg: {
                type: String,
                default: 'mensaje x defecto'
            }
        }
    }
</script>

<style media="screen">
    .testClase {
        background-color: #eee;
    }
</style>



