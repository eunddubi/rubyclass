require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get lotto" do
    get :lotto
    assert_response :success
  end

end
