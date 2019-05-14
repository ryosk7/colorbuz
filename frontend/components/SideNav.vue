<template lang="pug">
  v-card.fixed.pa-3.mt-5.d-inline-block.elevation-12(color="" flat="" width="230px")
    v-navigation-drawer(floating="" permanent="" stateless="" value="true")
      v-list(dense="")
        v-list-tile(v-for="item in items" :key="item.title" @click="")
          v-list-tile-action
            v-icon {{ item.icon }}
          v-list-tile-content
            v-list-tile-title.subheading {{ item.title }}
</template>

<script>
  export default {
    data () {
      return {
        items: [
          { title: 'Home', icon: 'dashboard' },
          { title: 'Edit', icon: 'edit' },
          { title: 'Team', icon: 'question_answer' }
        ],
        right: null
      }
    },
    props: {
      source: String
    }
  }
</script>

<style>
.fixed {
  position: fixed;
}
</style>
