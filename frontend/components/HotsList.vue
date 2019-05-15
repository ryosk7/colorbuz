<template lang="pug">
  .hots-list.mt-4
    h1.content-title.mt-5.mx-3.font-weight-bold.font-italic.pink--text.darken-4 Hots
    v-container.mt-2.mx-2.pa-2(fluid)
      v-layout(column)
        v-flex(v-for="card in cards" :key="card.title" xs12)
          v-card.ma-2.pa-2(width="auto" hover)
            v-img(:src="card.src" height="80px")
            span.headline.title.font-weight-regular.black--text.mt-2(v-text="card.title")
</template>

<script>
  export default {
    data () {
      return {
        cards: [
          { title: 'Pre-fab homes', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', content: 'hoge'},
          { title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', content: 'takkun'},
          { title: 'Best airlines', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', content: 'ichiki'}
        ]
      }
    },
    props: {
      source: String
    }
  }
</script>

<style>
.container {
  display: flex;
  justify-content: center;
  align-items: center;
}

.content-title {
  font-size: 4em
}

.title {
  font-family: "Quicksand", "Source Sans Pro", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif; /* 1 */
  display: block;
  font-weight: 300;
  font-size: 100px;
  color: #35495e;
  letter-spacing: 1px;
}

.subtitle {
  font-weight: 300;
  font-size: 42px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 15px;
}

.links {
  padding-top: 15px;
}
</style>