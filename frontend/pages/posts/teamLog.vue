<template lang="pug">
  div
    h1.content-title.my-4.font-weight-bold.font-italic.purple--text Team Log
    v-layout(row wrap justify-start)
      v-flex(v-for="post in posts" :key="post.title" xs12)
        v-card.my-3(:to="post.link" nuxt)
          v-img(height="200px" :src="post.thumbnail")
            v-container(fill-height fluid)
              v-layout(fill-height)
                v-flex(xs12 align-end flexbox)
          v-card-title
            div
              span.title.font-weight-bold.purple--text.lighten-1 {{post.title}}
              br
              span.body-2 {{post.content}}
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
        height: 300,
        posts: []
      }
    },
    methods: {
      async postsFunction() {
        this.posts = await this.$axios.$get('/posts')
      }
    },
    mounted () {
      this.postsFunction()
    },
    props: {
      source: String
    }
  }
</script>