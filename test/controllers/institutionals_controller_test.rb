require 'test_helper'

class InstitutionalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @institutional = institutionals(:one)
  end

  test "should get index" do
    get institutionals_url
    assert_response :success
  end

  test "should get new" do
    get new_institutional_url
    assert_response :success
  end

  test "should create institutional" do
    assert_difference('Institutional.count') do
      post institutionals_url, params: { institutional: { body: @institutional.body, category: @institutional.category, icon: @institutional.icon, title: @institutional.title } }
    end

    assert_redirected_to institutional_url(Institutional.last)
  end

  test "should show institutional" do
    get institutional_url(@institutional)
    assert_response :success
  end

  test "should get edit" do
    get edit_institutional_url(@institutional)
    assert_response :success
  end

  test "should update institutional" do
    patch institutional_url(@institutional), params: { institutional: { body: @institutional.body, category: @institutional.category, icon: @institutional.icon, title: @institutional.title } }
    assert_redirected_to institutional_url(@institutional)
  end

  test "should destroy institutional" do
    assert_difference('Institutional.count', -1) do
      delete institutional_url(@institutional)
    end

    assert_redirected_to institutionals_url
  end
end
