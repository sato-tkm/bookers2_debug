class SearchController < ApplicationController
  def index
    @users = User.where(name: params[:search])
  end

  def search
  　　 @range = params[:range]
  　　 search = params[:search]
  　　 word = params[:word]

  if @range == '1'
          @user = User.search(search,word)
  else
    　　　 @book = Book.search(search,word)
　 end
　 end

end
