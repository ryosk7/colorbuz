<template lang="pug">
  div
    v-carousel(hide-delimiters height="40%" width="auto")
      v-carousel-item(v-for="(item,i) in items" :key="i" :src="item.src")
    h1.content-title.mt-4.font-weight-bold.font-italic.pink--text.darken-4 Hot This Week
    span.font-italic.pink--text.darken-4.subheading.ml-3.font-weight-medium いま、アツい "Start Up" をお届け！
    v-container.pa-0.my-4(fluid grid-list-md)
      v-layout(row wrap justify-start)
        v-flex(v-for="card in cards" :key="card.title" xs12 md4)
          v-card.ma-2.pa-3(width="auto" height="400px" hover :to="card.link")
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
        /* carousel list */
        items: [
          {
            src: 'https://cdn.vuetifyjs.com/images/carousel/squirrel.jpg', link: '/#'
          },
          {
            src: 'https://cdn.vuetifyjs.com/images/carousel/sky.jpg', link: '/#'
          },
          {
            src: 'https://cdn.vuetifyjs.com/images/carousel/bird.jpg', link: '/#'
          },
          {
            src: 'https://cdn.vuetifyjs.com/images/carousel/planet.jpg', link: '/#'
          }
        ],
        height: 300,

        /* card list */
        cards: [
          { title: 'Pre-fab homes', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', content: 'hoge', link: '/posts/teamdetail'},
          { title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', content: 'takkun', link: '/posts/teamdetail'},
          { title: 'Best airlines', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', content: 'ichiki', link: '/posts/teamdetail'},
          { title: 'Pre-fab homes', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', content: 'hoge', link: '/posts/teamdetail'},
          { title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', content: 'takkun', link: '/posts/teamdetail'},
          { title: 'Best airlines', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', content: 'ichiki', link: '/posts/teamdetail'},
        ]
      }
    },
    props: {
      source: String
    }
  }
</script>