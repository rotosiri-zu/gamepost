class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: :new

  def create
    @reviews = Review.create(create_params)
    if @reviews.save
      flash[:success] = 'レビューを投稿しました'
      redirect_to root_path
    else
      flash[:danger] = 'レビューの投稿に失敗しました、ニックネーム、タイトル、レビューを記入したか確認してください'
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @reviews = Review.find(params[:id]).destroy
  end

  def edit
  end

  def update
    @reviews = Review.update(create_params)
    if @reviews.save
      flash[:success] = 'レビューを更新しました'
      redirect_back(fallback_location: root_path)
    else
      flash[:danger] = 'レビューの編集に失敗しました'
      render :edit
    end
  end

  private
  def create_params
    params.require(:review).permit(:nickname, :rate, :title, :review).merge(game_id: params[:game_id], user_id: current_user.id)
  end

end
