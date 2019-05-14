<template lang="pug">
  .hots-list
    h1.content-title.my-2.mx-3.font-weight-bold.font-italic Hots
    v-container.mt-2.mx-2.pa-2(fluid)
      v-layout(column)
        v-flex(v-for="card in cards" :key="card.title" xs12)
          v-card.ma-2(width="auto" hover)
            v-img(:src="card.src" height="200px")
              v-container(fluid pa-2)
                v-layout
                  v-flex(xs12 align-end flexbox)
                    span.headline.white--text(v-text="card.title")
            span.card-content.headline {{card.content}}
            v-card-actions
              v-spacer
              v-btn(icon)
                v-icon favorite
              v-btn(icon)
                v-icon bookmark
              v-btn(icon)
                v-icon share
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