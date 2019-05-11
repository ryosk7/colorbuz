<template lang="pug">
  v-app
    header-nav
    v-container.my-5(fluid)
      v-layout(row justify-space-between)
        v-flex.text-xs-left(md3 hidden-md-and-down)
          side-nav
        v-flex.mx-3(md8)
          nuxt
        v-flex(md3 hidden-md-and-down)
          
</template>

<script>
  import HeaderNav from '~/components/navigation'
  import SideNav from '~/components/SideNav'
  export default {
    data: () => ({
    }),
    components: {
      HeaderNav,
      SideNav,
    }
  }
</script>