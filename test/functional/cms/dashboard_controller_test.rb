require 'test_helper'

class Cms::DashboardControllerTest < ActionController::TestCase
  include Cms::ControllerTestHelper
  
  def setup
    login_as_cms_admin
  end
  
  def test_index
    get :index
    
    assert_response :success
    assert_select "title", "Dashboard"
  end

end
