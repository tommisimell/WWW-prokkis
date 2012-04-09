require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get yhteystiedot" do
    get :yhteystiedot
    assert_response :success
  end

  test "should get historia" do
    get :historia
    assert_response :success
  end

  test "should get lajiesittely" do
    get :lajiesittely
    assert_response :success
  end

  test "should get palvelut" do
    get :palvelut
    assert_response :success
  end

end
