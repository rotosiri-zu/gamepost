class CommentsController < ApplicationController
  def create
    @comment = Comment.create(game: comment_params[:game], reviews_id: comment_params[:reviews_id], user_id: current_user.id)
    redirect_to "/games/#{@comment.game.id}"
  end

  private
  def comment_params
    params.permit(:game, :reviews_id)
  end
end
