<template lang="pug">
  v-app
    header-nav
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