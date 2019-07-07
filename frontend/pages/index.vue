<template lang="pug">
  div
    v-carousel(hide-delimiters height="40%" width="auto")
      v-carousel-item(v-for="(item,i) in items" :key="i" :src="item.src")
    h1.content-title.mt-4.font-weight-bold.font-italic.pink--text.darken-4 Hot This Week
    span.font-italic.pink--text.darken-4.subheading.ml-3.font-weight-medium いま、アツい "Start Up" をお届け！
    v-container.pa-0.my-4(fluid grid-list-md)
      v-layout(row wrap justify-start)
        v-flex(v-for="post in posts" :key="post.data.title" xs12 md4)
          nuxt-link(:to="`posts/teamDetail/${post.id}`")
            v-card.ma-2.pa-3(width="auto" height="400px" hover)
              v-img(:src="post.data.thumbnail" height="170px")
              v-card-actions
                v-spacer
                v-btn(icon)
                  v-icon favorite
                v-btn(icon)
                  v-icon bookmark
                v-btn(icon)
                  v-icon share
              hr.grey--text.lighten-2
              span.font-weight-bold.headline.black--text(v-text="post.data.title")
              br
              span.card-content.body-2.grey--text.darken-4 {{post.data.content}}
</template>

<script>
  import HeaderNav from '~/components/navigation'
  import firebase from '@/plugins/firebase'
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
        posts: []
      }
    },
    methods: {
      async postsFunction() {
        //this.posts = await this.$axios.$get('/posts')

        firebase.firestore().collection("posts").get().then((querySnapshot) => {
          querySnapshot.forEach((doc) => {
            console.log(`${doc.id} => ${doc.data().title}`);
            this.posts.push({id: doc.id, data: doc.data()});
          });
        });
      }
    },
    mounted () {
      console.log("FIREBASE_API_KEY=>", process.env.FIREBASE_API_KEY)
      this.postsFunction()
    },
    props: {
      source: String
    }
  }
</script>