class ApplicationController < ActionController::Base
   protect_form_forgery with: :exception
  include SessionsHelper

  private

  #ユーザーのログインを確認する
  def logged_in_user
  	unless logged_in?
  		store_location
  		flash[:danger] = "please log in."
  		redirect_to login_url
  	end
  end
end
