class PagesController < ApplicationController
  before_action :authenticate_user!, only: :my_profile

  def index
    @posts = Post.where('published_at < ?', Time.current).order(published_at: :desc)
  end

  def my_profile
  end
end
