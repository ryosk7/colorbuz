<template lang="pug">
  v-app
    header-nav
    v-container.my-5(fluid)
      v-layout(row justify-space-around fill-height)
        v-flex.text-xs-left(md2 hidden-md-and-down)
          side-nav
        v-flex.mx-3(md10 xs12)
          nuxt
          
</template>

<script>
  import HeaderNav from '~/components/navigation'
  import SideNav from '~/components/SideNav'
  import HotsList from '~/components/HotsList'
  export default {
    data: () => ({
    }),
    components: {
      HeaderNav,
      SideNav,
      HotsList,
    }
  }
</script>