class CommentsController < ApplicationController
  def new
    @article = Article.find(params[:article_id])
     @comments = Comment.new(article: @article)
  end

  def create
    @article = Article.find(params[:article_id])
     @comments = Comment.new(article: @article, comment: params[:comment][:comment], email: params[:comment][:email] )
     if @comments.save
     redirect_to root_path
   end
  end
end
