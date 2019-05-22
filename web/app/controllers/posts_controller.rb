class PostsController < ApplicationController
  def index
    posts = Post.all.select(:id, :title, :thumbnail, :content)
    render json: posts
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def destroy
  end

  # t.string "title"
  # t.text "thumbnail"
  # t.text "content"
  # t.integer "user_id"
  # t.integer "team_id"
  # t.datetime "created_at", null: false
  # t.datetime "updated_at", null: false
end
