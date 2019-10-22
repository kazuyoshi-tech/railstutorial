class StaticPagesController < ApplicationController

  def home
  	if logged_in?
  	  @micropost = current_user.microposts.build
  	  @feet_items = current_user.feedpaginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
