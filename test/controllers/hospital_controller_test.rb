require 'test_helper'

class HospitalControllerTest < ActionController::TestCase
  test "should get name:string" do
    get :name:string
    assert_response :success
  end

  test "should get type:string" do
    get :type:string
    assert_response :success
  end

  test "should get id:string" do
    get :id:string
    assert_response :success
  end

  test "should get city:string" do
    get :city:string
    assert_response :success
  end

  test "should get state:string" do
    get :state:string
    assert_response :success
  end

  test "should get def_desc:string" do
    get :def_desc:string
    assert_response :success
  end

  test "should get complaint:string" do
    get :complaint:string
    assert_response :success
  end

end
