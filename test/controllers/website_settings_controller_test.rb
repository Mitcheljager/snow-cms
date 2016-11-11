require 'test_helper'

class WebsiteSettingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get website_settings_index_url
    assert_response :success
  end

  test "should get edit" do
    get website_settings_edit_url
    assert_response :success
  end

end
