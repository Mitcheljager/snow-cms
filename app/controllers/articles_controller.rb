class ArticlesController < ApplicationController
  before_action :authorize, except: [:show]

  layout 'admin', except: [:index, :show]

  def to_param
    urlname
  end

  def index
    @articles = Article.all
  end

  def overview
    @articles = Article.all
  end

  def show
    @article = Article.find_by_urlname(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
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
    params.require(:article).permit(:title, :introduction, :text, :urlname, :category)
  end
end
