class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new()
  end

  def create
    if @article.save
      redirect_to article_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end
