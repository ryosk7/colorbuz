<template lang="pug">
  v-toolbar(dense fixed)
    v-toolbar-title colorbuz
    v-spacer
    v-toolbar-items.hidden-sm-and-down
      v-btn(flat) Hot This Week
      v-btn(flat) Team Log
      v-btn(flat) What We Do?
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