<template lang="pug">
  v-toolbar(scroll-off-screen="" scroll-target="#scrolling-techniques")
    v-toolbar-title colorbuz
    v-spacer
    v-toolbar-items.hidden-sm-and-down
      v-btn(flat="") Link One
      v-btn(flat="") Link Two
      v-btn(flat="") Link Three
</template>

<script>
  export default {
    data: () => ({
    }),

    props: {
      source: String
    }
  }
</script>