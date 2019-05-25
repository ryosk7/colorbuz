<template lang="pug">
  div
    v-layout
      v-flex(xs12 sm6 offset-sm2)
        v-card.pa-5.ma-5
          h1.my-4.display-3.font-weight-bold.text-sm-center.text-xs-left Get Started!
          div.text-xs-center
            v-btn.text-capitalize.font-weight-medium.text-xs-center.subheading(round color="#4266b2" dark) Facebookでログイン

</template>

<script>
  import HeaderNav from '~/components/navigation'
  export default {
    layout: 'homeLayout',
    data () {
      return {
      }
    },
    methods: {
    },
    mounted () {
    },
    props: {
      source: String
    }
  }
</script>