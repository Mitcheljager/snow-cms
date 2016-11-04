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
      flash[:notice] = 'Website successfully updated'
      redirect_to action: 'overview'
    else
      render 'edit'
    end
  end
end
