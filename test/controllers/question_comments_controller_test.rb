require 'test_helper'

class QuestionCommentsControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get destory" do
    get :destory
    assert_response :success
  end

end
