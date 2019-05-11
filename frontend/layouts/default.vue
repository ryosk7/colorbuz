<template lang="pug">
  v-app
    header-nav
    v-container.my-0(fluid)
      v-layout(row justify-space-between)
        v-flex.text-xs-left(md3)
          side-nav
        v-flex(md8)
          nuxt
        v-flex(md3)
          
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