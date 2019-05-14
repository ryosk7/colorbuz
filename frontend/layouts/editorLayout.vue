<template lang="pug">
  v-app
    header-nav
    v-container.mt-5.pa-0.my-0(fluid)
      v-layout(row justify-space-between)
        v-flex.mx-3(xs4 md10 offset-xs4)
          h1.font-weight-bold.font-italic Edit
          p.ma-0 Markdown記法で記入してください。
        v-flex(xs4 md2)
          v-btn(color="info") POST
    nuxt
        
          
          
</template>

<script>
  import HeaderNav from '~/components/navigation'
  export default {
    data: () => ({
    }),
    components: {
      HeaderNav,
    }
  }
</script>