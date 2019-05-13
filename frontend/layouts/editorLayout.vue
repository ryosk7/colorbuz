<template lang="pug">
  v-app
    header-nav
    v-container.my-3(fluid)
      v-layout(row)
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