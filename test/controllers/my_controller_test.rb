require 'test_helper'

class MyControllerTest < ActionController::TestCase
  test "should get curriculums" do
    get :curriculums
    assert_response :success
  end

end
