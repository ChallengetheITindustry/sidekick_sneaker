class UsersController < ApplicationController
  def show
    @user = User.all
    @liked_posts = current_user.liked_posts
  end
end
