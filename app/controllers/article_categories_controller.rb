class ArticleCategoriesController < ApplicationController
  before_action :authorize

  layout 'admin'

  def index
    @articleCategories = ArticleCategory.all
  end

  def new
    @articleCategory = ArticleCategory.new
  end

  def create
    @articleCategory = ArticleCategory.new(articleCategory_params)

    if @articleCategory.save
      render action: 'index'
    else
      render 'index'
    end
  end

  private def articleCategory_params
    params.require(:articleCategory).permit(:name, :slug)
  end
end
