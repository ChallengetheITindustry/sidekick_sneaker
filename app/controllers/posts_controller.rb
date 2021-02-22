class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    #コメントは表示させない
    # 編集時に順番が入れ替わらないようにPost.allは使用しない
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    @comment = current_user.comments.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.create!(post_params)
    @post.user_id = current_user.id
    redirect_to posts_path
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update!(post_params)
    redirect_to posts_path, notice: "更新しました"
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy!
    redirect_to posts_path, alert: "削除しました"
  end

  private

  def post_params
    params.require(:post).permit(:content, :image, :user)
  end
end
