require 'test_helper'

class FeaturedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @featured = featureds(:one)
  end

  test "should get index" do
    get featureds_url
    assert_response :success
  end

  test "should get new" do
    get new_featured_url
    assert_response :success
  end

  test "should create featured" do
    assert_difference('Featured.count') do
      post featureds_url, params: { featured: { Project_id: @featured.Project_id } }
    end

    assert_redirected_to featured_url(Featured.last)
  end

  test "should show featured" do
    get featured_url(@featured)
    assert_response :success
  end

  test "should get edit" do
    get edit_featured_url(@featured)
    assert_response :success
  end

  test "should update featured" do
    patch featured_url(@featured), params: { featured: { Project_id: @featured.Project_id } }
    assert_redirected_to featured_url(@featured)
  end

  test "should destroy featured" do
    assert_difference('Featured.count', -1) do
      delete featured_url(@featured)
    end

    assert_redirected_to featureds_url
  end
end
