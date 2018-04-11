require 'test_helper'

class AdminAdministrateProyectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_administrate_proyect = admin_administrate_proyects(:one)
  end

  test "should get index" do
    get admin_administrate_proyects_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_administrate_proyect_url
    assert_response :success
  end

  test "should create admin_administrate_proyect" do
    assert_difference('AdminAdministrateProyect.count') do
      post admin_administrate_proyects_url, params: { admin_administrate_proyect: { Admin_id: @admin_administrate_proyect.Admin_id, Proyect_id: @admin_administrate_proyect.Proyect_id } }
    end

    assert_redirected_to admin_administrate_proyect_url(AdminAdministrateProyect.last)
  end

  test "should show admin_administrate_proyect" do
    get admin_administrate_proyect_url(@admin_administrate_proyect)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_administrate_proyect_url(@admin_administrate_proyect)
    assert_response :success
  end

  test "should update admin_administrate_proyect" do
    patch admin_administrate_proyect_url(@admin_administrate_proyect), params: { admin_administrate_proyect: { Admin_id: @admin_administrate_proyect.Admin_id, Proyect_id: @admin_administrate_proyect.Proyect_id } }
    assert_redirected_to admin_administrate_proyect_url(@admin_administrate_proyect)
  end

  test "should destroy admin_administrate_proyect" do
    assert_difference('AdminAdministrateProyect.count', -1) do
      delete admin_administrate_proyect_url(@admin_administrate_proyect)
    end

    assert_redirected_to admin_administrate_proyects_url
  end
end
