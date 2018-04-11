require 'test_helper'

class UserFundsProyectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_funds_proyect = user_funds_proyects(:one)
  end

  test "should get index" do
    get user_funds_proyects_url
    assert_response :success
  end

  test "should get new" do
    get new_user_funds_proyect_url
    assert_response :success
  end

  test "should create user_funds_proyect" do
    assert_difference('UserFundsProyect.count') do
      post user_funds_proyects_url, params: { user_funds_proyect: { Proyect_id: @user_funds_proyect.Proyect_id, User_id: @user_funds_proyect.User_id, value: @user_funds_proyect.value } }
    end

    assert_redirected_to user_funds_proyect_url(UserFundsProyect.last)
  end

  test "should show user_funds_proyect" do
    get user_funds_proyect_url(@user_funds_proyect)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_funds_proyect_url(@user_funds_proyect)
    assert_response :success
  end

  test "should update user_funds_proyect" do
    patch user_funds_proyect_url(@user_funds_proyect), params: { user_funds_proyect: { Proyect_id: @user_funds_proyect.Proyect_id, User_id: @user_funds_proyect.User_id, value: @user_funds_proyect.value } }
    assert_redirected_to user_funds_proyect_url(@user_funds_proyect)
  end

  test "should destroy user_funds_proyect" do
    assert_difference('UserFundsProyect.count', -1) do
      delete user_funds_proyect_url(@user_funds_proyect)
    end

    assert_redirected_to user_funds_proyects_url
  end
end
