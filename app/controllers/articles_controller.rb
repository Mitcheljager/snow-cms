class ArticlesController < ApplicationController

  before_action :authorize, only: [:overview, :new, :create, :edit, :save]

  layout 'admin', only: [:overview, :new, :create]

  def index
    @articles = Article.all
  end

  def overview
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  private def article_params
    params.require(:article).permit(:title, :text)
  end
end
