<template lang="pug">
  v-toolbar
    v-toolbar-side-icon
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
      drawer: null
    }),

    props: {
      source: String
    }
  }
</script>