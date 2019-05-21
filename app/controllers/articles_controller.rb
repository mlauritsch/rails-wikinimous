class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    # create new instance of restaurant
    @article = Article.new
  end

  def create
    # save a new instance of restaurant with user-given parameters
    @article = Article.new(article_params)
    @article.save

    redirect_to articles_path(@articles)
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    # redirecting to the path of this specific instance
    redirect_to articles_path(@articles)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.delete
    redirect_to articles_path(@articles)
  end

  private

  def article_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:article).permit(:title)
  end
end
