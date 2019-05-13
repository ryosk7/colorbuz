<template lang="pug">
  v-app
    header-nav
    v-container.mt-5.pa-0.my-0(fluid)
      v-layout(row justify-space-between)
        v-flex.mx-3(xs10)
          h1 Edit
          p.ma-0 Markdown記法で記入してください。
        v-flex(xs2)
          v-btn(color="info") POST
    v-container.pa-0.my-0(fluid)
      v-layout(row justify-space-between)
        v-flex(xs12)
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