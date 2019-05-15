<template lang="pug">
  div
    h1.content-title.my-4.font-weight-bold.font-italic.purple--text Team Log
    v-layout(row wrap justify-start)
      v-flex(v-for="card in cards" :key="card.title" xs12)
        v-card.my-3
          v-img(height="200px" :src="card.src")
            v-container(fill-height fluid)
              v-layout(fill-height)
                v-flex(xs12 align-end flexbox)
          v-card-title
            div
              span.title.font-weight-bold.purple--text.lighten-1 {{card.title}}
              br
              span.grey--text Number 10
              br
              span.body-2 {{card.content}}
          v-layout(justify-end)
            v-flex(xs4 offset-xs8)
              v-card-actions
                v-layout(align-center justify-end row fill-height wrap)
                  v-flex(xs4)
                    v-btn(icon)
                      v-icon favorite
                  v-flex(xs4)
                    v-btn(icon)
                      v-icon bookmark
                  v-flex(xs4)
                    v-btn(icon)
                      v-icon share
</template>

<script>
  import HeaderNav from '~/components/navigation'
  export default {
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