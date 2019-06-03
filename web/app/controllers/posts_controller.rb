class PostsController < ApplicationController
  def index
    posts = Post.all.select(:id, :title, :thumbnail, :content)
    render json: posts
  end

  def show
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: { status: 'OK' }
    else
      render json: { status: 'ERROR'}
    end
  end

  def update
  end

  def destroy
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.fetch(:post, {}).permit(
          :title, :thumbnail, :content, :user_id, :team_id
      )
    end

  # t.string "title"
  # t.text "thumbnail"
  # t.text "content"
  # t.integer "user_id"
  # t.integer "team_id"
  # t.datetime "created_at", null: false
  # t.datetime "updated_at", null: false
end