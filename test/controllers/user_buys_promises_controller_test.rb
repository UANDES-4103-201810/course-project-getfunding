require 'test_helper'

class UserBuysPromisesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_buys_promise = user_buys_promises(:one)
  end

  test "should get index" do
    get user_buys_promises_url
    assert_response :success
  end

  test "should get new" do
    get new_user_buys_promise_url
    assert_response :success
  end

  test "should create user_buys_promise" do
    assert_difference('UserBuysPromise.count') do
      post user_buys_promises_url, params: { user_buys_promise: { Promise_id: @user_buys_promise.Promise_id, User_id: @user_buys_promise.User_id } }
    end

    assert_redirected_to user_buys_promise_url(UserBuysPromise.last)
  end

  test "should show user_buys_promise" do
    get user_buys_promise_url(@user_buys_promise)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_buys_promise_url(@user_buys_promise)
    assert_response :success
  end

  test "should update user_buys_promise" do
    patch user_buys_promise_url(@user_buys_promise), params: { user_buys_promise: { Promise_id: @user_buys_promise.Promise_id, User_id: @user_buys_promise.User_id } }
    assert_redirected_to user_buys_promise_url(@user_buys_promise)
  end

  test "should destroy user_buys_promise" do
    assert_difference('UserBuysPromise.count', -1) do
      delete user_buys_promise_url(@user_buys_promise)
    end

    assert_redirected_to user_buys_promises_url
  end
end
