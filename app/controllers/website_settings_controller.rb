class WebsiteSettingsController < ApplicationController
  before_action :authorize, except: [:index]

  layout 'admin', except: [:index]

  def edit
    @website_settings = Website.first
  end

  def update
    @website_settings = Website.first

    if @website_settings.update(websiteSettings_params)
      flash[:notice] = 'Homepage successfully updated'
      redirect_to action: 'edit'
    else
      render 'edit'
    end
  end

  private

  def website_settings_params
    params.require(:websiteSettings).permit(:title)
  end
end
