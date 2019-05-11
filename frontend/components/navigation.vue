<template lang="pug">
  v-toolbar(dense fixed)
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