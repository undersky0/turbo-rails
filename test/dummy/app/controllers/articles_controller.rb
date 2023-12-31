class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def edit
    @article = Article.find params[:id]
  end

  def update
    @article = Article.find params[:id]

    @article.update! article_params

    redirect_to articles_url
  end

  def create
    @article = Article.new

    @article.update! article_params

    redirect_to articles_url
  end

  private

  def article_params
    params.require(:article).permit(:body)
  end
end
