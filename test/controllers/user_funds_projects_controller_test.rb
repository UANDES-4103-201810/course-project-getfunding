require 'test_helper'

class UserFundsProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_funds_project = user_funds_projects(:one)
  end

  test "should get index" do
    get user_funds_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_user_funds_project_url
    assert_response :success
  end

  test "should create user_funds_project" do
    assert_difference('UserFundsProject.count') do
      post user_funds_projects_url, params: { user_funds_project: { Project_id: @user_funds_project.Project_id, User_id: @user_funds_project.User_id, amount: @user_funds_project.amount } }
    end

    assert_redirected_to user_funds_project_url(UserFundsProject.last)
  end

  test "should show user_funds_project" do
    get user_funds_project_url(@user_funds_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_funds_project_url(@user_funds_project)
    assert_response :success
  end

  test "should update user_funds_project" do
    patch user_funds_project_url(@user_funds_project), params: { user_funds_project: { Project_id: @user_funds_project.Project_id, User_id: @user_funds_project.User_id, amount: @user_funds_project.amount } }
    assert_redirected_to user_funds_project_url(@user_funds_project)
  end

  test "should destroy user_funds_project" do
    assert_difference('UserFundsProject.count', -1) do
      delete user_funds_project_url(@user_funds_project)
    end

    assert_redirected_to user_funds_projects_url
  end
end
