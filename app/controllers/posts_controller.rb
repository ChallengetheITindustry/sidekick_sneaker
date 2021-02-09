class PostsController < ApplicationController
  def index
    #コメントは表示させない
    # 編集時に順番が入れ替わらないようにPost.allは使用しない
    @posts = Post.order(id: :asc)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.create!(post_params)
    redirect_to posts_path
  end

  def edit
    @post = Post.find(params[:id])
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
    params.require(:post).permit(:content, :image)
  end
end
