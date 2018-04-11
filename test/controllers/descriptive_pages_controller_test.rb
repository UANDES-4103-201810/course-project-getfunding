require 'test_helper'

class DescriptivePagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @descriptive_page = descriptive_pages(:one)
  end

  test "should get index" do
    get descriptive_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_descriptive_page_url
    assert_response :success
  end

  test "should create descriptive_page" do
    assert_difference('DescriptivePage.count') do
      post descriptive_pages_url, params: { descriptive_page: { Proyect_id: @descriptive_page.Proyect_id, link: @descriptive_page.link } }
    end

    assert_redirected_to descriptive_page_url(DescriptivePage.last)
  end

  test "should show descriptive_page" do
    get descriptive_page_url(@descriptive_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_descriptive_page_url(@descriptive_page)
    assert_response :success
  end

  test "should update descriptive_page" do
    patch descriptive_page_url(@descriptive_page), params: { descriptive_page: { Proyect_id: @descriptive_page.Proyect_id, link: @descriptive_page.link } }
    assert_redirected_to descriptive_page_url(@descriptive_page)
  end

  test "should destroy descriptive_page" do
    assert_difference('DescriptivePage.count', -1) do
      delete descriptive_page_url(@descriptive_page)
    end

    assert_redirected_to descriptive_pages_url
  end
end
