require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get faq" do
    get :faq
    assert_response :success
  end

  test "should get suggestions" do
    get :suggestions
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
