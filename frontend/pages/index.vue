<template lang="pug">
  div
    v-carousel(hide-delimiters height="40%" width="auto")
      v-carousel-item(v-for="(item,i) in items" :key="i" :src="item.src")
    h1.content-title.mt-4.font-weight-bold.font-italic.pink--text.darken-4 Hot This Week
    span.font-italic.pink--text.darken-4.subheading.ml-3.font-weight-medium いま、アツい "Start Up" をお届け！
    v-container.pa-0.my-4(fluid grid-list-md)
      v-layout(row wrap justify-start)
        v-flex(v-for="card in cards" :key="card.title" xs12 md4)
          v-card.ma-2.pa-3(width="auto" height="400px" hover)
            v-img(:src="card.src" height="170px")
            v-card-actions
              v-spacer
              v-btn(icon)
                v-icon favorite
              v-btn(icon)
                v-icon bookmark
              v-btn(icon)
                v-icon share
            hr.grey--text.lighten-2
            span.font-weight-bold.headline.black--text(v-text="card.title")
            br
            span.card-content.body-2.grey--text.darken-4 {{card.content}}
</template>

<script>
  import HeaderNav from '~/components/navigation'
  export default {
    layout: 'homeLayout',
    data () {
      return {
        items: [
          {
            src: 'https://cdn.vuetifyjs.com/images/carousel/squirrel.jpg'
          },
          {
            src: 'https://cdn.vuetifyjs.com/images/carousel/sky.jpg'
          },
          {
            src: 'https://cdn.vuetifyjs.com/images/carousel/bird.jpg'
          },
          {
            src: 'https://cdn.vuetifyjs.com/images/carousel/planet.jpg'
          }
        ],
        height: 300,
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