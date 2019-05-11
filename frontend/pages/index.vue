<template lang="pug">
  v-container(fluid="" grid-list-md="")
    v-layout(row="" wrap="" justify-end="")
      v-flex(v-for="card in cards" :key="card.title" v-bind="{ [`xs${card.flex}`]: true }")
        v-card
          v-img(:src="card.src" height="200px")
            v-container(fill-height="" fluid="" pa-2="")
              v-layout(fill-height="")
                v-flex(xs12="" align-end="" flexbox="")
                  span.headline.white--text(v-text="card.title")
          span.card-content.headline {{card.content}}
          v-card-actions
            v-spacer
            v-btn(icon="")
              v-icon favorite
            v-btn(icon="")
              v-icon bookmark
            v-btn(icon="")
              v-icon share
</template>

<script>
  export default {
    layout: 'default',
    data: () => ({
      cards: [
        { title: 'Pre-fab homes', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', content: 'oppai', flex: 4 },
        { title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', content: 'takkun', flex: 4 },
        { title: 'Best airlines', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', content: 'ichiki', flex: 4 }
      ]
    }),
  }
</script>

<style>
.container {
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
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

