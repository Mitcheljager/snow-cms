class ArticlesController < ApplicationController
  before_action :authorize, except: [:index, :show]

  layout 'admin', except: [:index, :show]

  def to_param
    urlname
  end

  def index
    @articles = Article.all.order(created_at: :desc)
  end

  def overview
    @articles = Article.all.order(created_at: :desc)
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
      flash[:notice] = 'Article successfully updated'
      redirect_to action: 'overview'
    else
      render 'edit'
    end
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      flash[:notice] = 'Article successfully created'
      redirect_to action: 'overview'
    else
      render 'new'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    flash[:notice] = 'Article successfully deleted'
    redirect_to action: 'overview'
  end

  private

  def article_params
    params.require(:article).permit(:title, :introduction, :text, :urlname, :category, images: [])
  end
end
