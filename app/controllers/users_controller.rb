class UsersController < ApplicationController
  def show
    @user = User.all
    @liked_posts = current_user.liked_posts.page(params[:page]).per(5)
    @post = Post.all
  end
end
