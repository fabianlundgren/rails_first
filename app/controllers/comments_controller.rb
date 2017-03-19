class CommentsController < ApplicationController
  def new
    @comment = Comment.new(article: @article)
end
