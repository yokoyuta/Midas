class FavoritesController < ApplicationController
  # before_actionに「:authenticate_user」を追加してください
  before_action :authenticate_user!
  # createアクションを追加してください
  def create
    @favorite = Favorite.new(user_id: current_user.id, post_id: params[:post_id])
    @favorite.save
    redirect_to("/posts/#{params[:post_id]}")
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, post_id: params[:post_id])
    @favorite.destroy
    redirect_to("/posts/#{params[:post_id]}")
  end

end
