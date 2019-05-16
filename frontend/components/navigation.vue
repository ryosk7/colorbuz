<template lang="pug">
  v-toolbar(dense fixed)
    v-toolbar-title(to="/") 
      n-link.toolbar-title.font-weight-bold.display-1(to="/") colorbuz
    v-spacer
    v-toolbar-items.hidden-sm-and-down
      v-btn(to="/" flat) Hot This Week
      v-btn(to="/posts/teamlog" flat) Team Log
      v-btn(to="/#" flat) What We Do?
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

<style>
.toolbar-title{
  color: #191414; /* Spotify black color */
  text-decoration: none;
}
</style>
