<template lang="pug">
  div
    v-layout
      v-flex(xs12 sm6 offset-sm2)
        v-card.pa-5.ma-5
          h1.my-4.display-3.font-weight-bold.text-sm-center.text-xs-left Get Started!
          div.text-xs-center
            v-card-text
              v-form
                v-text-field(v-model="email" label="Email")
                v-text-field(v-model="password" label="Password" type="password")
            v-btn.text-capitalize.font-weight-medium.text-xs-center.subheading(round color="#4266b2" dark @click="login") Facebookでログイン
            v-btn(@click="logout") Log out

</template>

<script>
  import HeaderNav from '~/components/navigation'
  export default {
    layout: 'homeLayout',
    data () {
      return {
        email: '',
        password: ''
      }
    },
    methods: {
      login: function () {
      this.$auth.login({
          data: {
            user: {
              email: this.email,
              password: this.password,
              error: null
            }
          }
        }).catch(e => {this.error = e + ''})
      },
      logout: function () {
        this.$auth.logout().catch(e => {this.error = e + ''})
      }
    },
    mounted () {
    },
    props: {
      source: String
    }
  }
</script>