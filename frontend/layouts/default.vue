<template lang="pug">
  div.root_el
    v-toolbar
      v-toolbar-title colorbuz
      v-spacer
      v-toolbar-items.hidden-sm-and-down
        v-btn(flat="") Link One
        v-btn(flat="") Link Two
        v-btn(flat="") Link Three
    
    v-container(fluid="" grid-list-xl="")
      v-layout(row="" justify-center="")
        v-flex(v-for="i in 3" :key="`4${i}`" xs4="")
          v-card
            v-img.white--text(height="200px" src="https://cdn.vuetifyjs.com/images/cards/docks.jpg")
              v-container(fill-height="" fluid="")
                v-layout(fill-height="")
                  v-flex(xs12="" align-end="" flexbox="")
                    span.headline Top 10 Australian beaches
            v-card-title
              div
                span.grey--text Number 10
                br
                span Whitehaven Beach
                br
                span Whitsunday Island, Whitsunday Islands
            v-card-actions
              v-btn(flat="" color="orange") Share
              v-btn(flat="" color="orange") Explore
</template>

<script>
  export default {
    data: () => ({
      drawer: null
    }),

    props: {
      source: String
    }
  }
</script>