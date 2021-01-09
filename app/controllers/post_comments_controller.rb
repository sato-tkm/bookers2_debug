class PostCommentsController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    @post_comment = @book.post_comments.new(post_comment_params)
    @post_comment.user_id = current_user.id
    @post_comment.save!
    redirect_to book_path(@book)
  end

  def destroy
    PostComment.find(params[:id]).destroy
    redirect_to book_path(params[:book_id])
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end

end
