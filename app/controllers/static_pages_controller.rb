class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feeds.paginate(page: params[:page]).recent
    end
  end

  def help
  end
end
