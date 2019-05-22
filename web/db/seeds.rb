# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

posts = Post.create([
                     { title: 'Pre-fab homes', thumbnail: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', content: 'hoge'}, 
                     { title: 'Favorite road trips', thumbnail: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', content: 'takkun'}
                    ])

  # t.string "title"
  # t.text "thumbnail"
  # t.text "content"
  # t.integer "user_id"
  # t.integer "team_id"
  # t.datetime "created_at", null: false
  # t.datetime "updated_at", null: false

  # { title: 'Pre-fab homes', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', content: 'hoge', link: '/posts/teamdetail'},
  # { title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', content: 'takkun', link: '/posts/teamdetail'},
  # { title: 'Best airlines', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', content: 'ichiki', link: '/posts/teamdetail'},
  # { title: 'Pre-fab homes', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', content: 'hoge', link: '/posts/teamdetail'},
  # { title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', content: 'takkun', link: '/posts/teamdetail'},
  # { title: 'Best airlines', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', content: 'ichiki', link: '/posts/teamdetail'},