<template lang="pug">
  div
    v-container()
      v-layout(row wrap justify-start)
        v-flex(v-for="card in cards" :key="card.title" xs12)
          v-img(height="340px" :src="card.src")
          v-layout(row justify-end)
            v-flex(offset-md9 md3)
              v-btn(icon)
                v-icon favorite
              v-btn(icon)
                v-icon bookmark
              v-btn(icon)
                v-icon share
          hr
          p.display-1.font-weight-bold.ma-2 {{card.title}}
          br
          p.ma-2.headline.font-weight-regular {{card.content}}
          
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
        ],
        height: 300,
        cards: [
          { title: 'Pre-fab homes', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', content: 'hoge'},
        ]
      }
    },
    props: {
      source: String
    }
  }
</script>