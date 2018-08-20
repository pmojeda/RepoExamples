<template>
    <div class="testClaseUser">
        <h1>User component</h1>
        <ul>
            <li v-for="user in users">
                {{user.name}} - {{user.email}} 
                <button v-on:click="deleteUser(user)">X</button>
            </li>
        </ul>

        <form  v-on:submit.prevent="addUser">
            <input type="text" v-model="newUser.name" placeholder="ingrese nombre...">
            <input type="email" v-model="newUser.email" placeholder="email...">
            <button type="submit">
                    Add
            </button>
        </form>
    </div>
</template>

<script>
export default {
    data() {
        return {
            users: [
                {
                    name:'Joe',
                    email: 'joe@gmail.com',
                    contacted: false
                },
                {
                    name:'Ryan',
                    email: 'ryan@gmail.com',
                    contacted: false
                },
                {
                    name:'Joe',
                    email: 'joe@gmail.com',
                    contacted: true
                }
            ],
            newUser: {
            }
        }
    },
    methods: {
        addUser() {
            //console.log('agregando usuario' + this.newUser)
            this.users.push(this.newUser);
            this.newUser={};
        },
        deleteUser(user){
            alert('eliminando');
            this.users.splice(this.users.indexOf(user), 1);
        }

    },
    created(){
        //console.log('Componente creado');
        this.$http.get('https://jsonplaceholder.typicode.com/users')
            .then(res => this.users = res.body);
    }
}
</script>


<style lang="css">
    .testClaseUser {
        background: rgb(22, 117, 161);
    }
</style>





