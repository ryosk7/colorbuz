<template lang="pug">
  v-card.fixed.pa-3.mt-5.d-inline-block.elevation-3(color="" flat="" width="200px")
    v-navigation-drawer(floating="" permanent="" stateless="" value="true")
      v-list(dense="")
        v-list-tile(v-for="item in items" :key="item.title" @click="" :to="item.link")
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
          { title: 'Home', icon: 'dashboard', link: '/' },
          { title: 'Edit', icon: 'edit', link: '/posts/edit' },
          { title: 'Team', icon: 'question_answer', link: '/posts/teamlog' }
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
