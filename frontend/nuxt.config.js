require('dotenv').config()
module.exports = {
  /*
  ** Headers of the page
  */
  mode: 'spa',
  head: {
    title: 'colorbuz',
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: '起業家密着サービス' }
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }
    ]
  },

  plugins: [
    '@/plugins/firebase'
  ],

  modules: [
    '@nuxtjs/dotenv',
    '@nuxtjs/vuetify',
    '@nuxt-tui/editor',
    '@nuxtjs/axios',
    '@nuxtjs/proxy'
  ],

  axios: {
    host: 'localhost',
    port: 3000,
    prefix: '/api'
  },

  proxy: {
    '/api': {
      target: 'http://localhost:3000',
      pathRewrite: {
        '^/api': '/'
      }
    }
  },

  vuetify: {
    // Vuetify の設定はここに書く
    theme: {
      primary: '#3f51b5',
      secondary: '#b0bec5',
      accent: '#8c9eff',
      error: '#b71c1c'
    }
  },

  tui: {
    editor: {}
  },
  /*
  ** Customize the progress bar color
  */
  loading: { color: '#3B8070' },
  /*
  ** Build configuration
  */
  build: {
    /*
    ** Run ESLint on save
    */
    extend (config, { isDev, isClient }) {
      if (isDev && isClient) {
        config.module.rules.push({
          enforce: 'pre',
          test: /\.(js|vue)$/,
          loader: 'eslint-loader',
          exclude: /(node_modules)/
        })
      }
    }
  }
}

