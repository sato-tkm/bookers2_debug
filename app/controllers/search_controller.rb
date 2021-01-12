class SearchController < ApplicationController
  def index
    @users = User.where(name: params[:search])
  end
end
