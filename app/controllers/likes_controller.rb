class LikesController < ApplicationController
   before_action :require_user_logged_in
   
 def likes
  Like.where(user_id: self.liking_ids + [self.id])
 end

  
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.like(micropost)
    flash[:success] = 'お気に入りに登録しました'
    redirect_to ("/")    
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unlike(micropost)
    flash[:success] = 'お気に入りを削除しました。'
    redirect_to ("/")
  end
  
  def liking
    @like = User.find(params[:id])
    @followings = @user.followings.page(params[:page])
    counts(@user)
  end
  
  def followers
    @user = User.find(params[:id])
    @followers = @user.followers.page(params[:page])
    counts(@user)
  end
  
end
