class NotificationController < ApplicationController
  def create
    FriendNotifierMailer.inform(current_user, params[:email]).deliver_now
    flash[:notice] = "Successfully told them."
    redirect_to root_url
  end
end
