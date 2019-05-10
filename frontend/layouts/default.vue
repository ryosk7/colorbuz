<template lang="pug">
  div.root_el
    v-app
      v-navigation-drawer(v-model="drawer" fixed="" clipped="" app="")
        v-list(dense="")
          v-list-tile(v-for="item in items" :key="item.text" @click="")
            v-list-tile-action
              v-icon {{ item.icon }}
            v-list-tile-content
              v-list-tile-title
                | {{ item.text }}
          v-subheader.mt-3.grey--text.text--darken-1 SUBSCRIPTIONS
          v-list
            v-list-tile(v-for="item in items2" :key="item.text" avatar="" @click="")
              v-list-tile-avatar
                img(:src="`https://randomuser.me/api/portraits/men/${item.picture}.jpg`" alt="")
              v-list-tile-title(v-text="item.text")
          v-list-tile.mt-3(@click="")
            v-list-tile-action
              v-icon(color="grey darken-1") add_circle_outline
            v-list-tile-title.grey--text.text--darken-1 Browse Channels
          v-list-tile(@click="")
            v-list-tile-action
              v-icon(color="grey darken-1") settings
            v-list-tile-title.grey--text.text--darken-1 Manage Subscriptions
      v-toolbar(color="red" dense="" fixed="" clipped-left="" app="")
        v-toolbar-side-icon(@click.stop="drawer = !drawer")
        v-icon.mx-3 fab fa-youtube
        v-toolbar-title.mr-5.align-center
          span.title colorbuz
        v-spacer
        v-layout(row="" align-center="" style="max-width: 650px")
          v-text-field(:append-icon-cb="() => {}" placeholder="Search..." single-line="" append-icon="search" color="white" hide-details="")
      v-container(fluid="" grid-list-md="")
        v-layout(row="" wrap="" justify-end="")
          v-flex(v-for="card in cards" :key="card.title" v-bind="{ [`xs${card.flex}`]: true }")
            v-card
              v-img(:src="card.src" height="200px")
                v-container(fill-height="" fluid="" pa-2="")
                  v-layout(fill-height="")
                    v-flex(xs12="" align-end="" flexbox="")
                      span.headline.white--text(v-text="card.title")
              v-card-content
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
    data: () => ({
      drawer: null,
      items: [
        { icon: 'trending_up', text: 'Most Popular' },
        { icon: 'subscriptions', text: 'Subscriptions' },
        { icon: 'history', text: 'History' },
        { icon: 'featured_play_list', text: 'Playlists' },
        { icon: 'watch_later', text: 'Watch Later' }
      ],
      items2: [
        { picture: 28, text: 'Joseph' },
        { picture: 38, text: 'Apple' },
        { picture: 48, text: 'Xbox Ahoy' },
        { picture: 58, text: 'Nokia' },
        { picture: 78, text: 'MKBHD' }
      ],
      cards: [
        { title: 'Pre-fab homes', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', content: 'oppai', flex: 4 },
        { title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', content: 'takkun', flex: 4 },
        { title: 'Best airlines', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', content: 'ichiki', flex: 4 }
      ]
    }),

    props: {
      source: String
    }
  }
</script>