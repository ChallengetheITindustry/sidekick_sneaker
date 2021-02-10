class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    comment = Comment.find_by(params[:id])
    comment.destroy!
    redirect_back(fallback_location: root_pathå)
  end

  private

  def comment_params
    params.permit(:content)
  end
end
