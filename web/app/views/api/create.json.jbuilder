json.set! :post do
  json.extract! @post, :id, :title, :thumbnail, :content, :user_id, :team_id, :created_at, :updated_at
end

# t.string "title"
# t.text "thumbnail"
# t.text "content"
# t.integer "user_id"
# t.integer "team_id"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false