class ApplicationController < ActionController::Base

  include SessionsHelper

  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
      # redirect_to "http://www.yahoo.co.jp/"
    end
  end

  def counts(user)
    @count_tasks = user.tasks.count
  end
end