require 'test_helper'

class GasBuddy::PriceControllerTest < ActionController::TestCase
  test "should get add" do
    get :add
    assert_response :success
  end

  test "should get get" do
    get :get
    assert_response :success
  end

  test "should get update.tmp_update" do
    get :update.tmp_update
    assert_response :success
  end

end
