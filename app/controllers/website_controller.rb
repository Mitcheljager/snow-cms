class WebsiteController < ApplicationController
  before_action :authorize, except: [:index]

  layout 'admin', except: [:index]

  def index
    @website = Website.first
  end

  def edit
    @website = Website.first
  end

  def update
    @website = Website.first

    if @website.update(website_params)
      flash[:notice] = 'Homepage successfully updated'
      redirect_to action: 'edit'
    else
      render 'edit'
    end
  end

  private

  def website_params
    params.require(:website).permit(:title, :content, images: [])
  end
end
