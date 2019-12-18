require 'test_helper'

class UnitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unity = unities(:one)
  end

  test "should get index" do
    get unities_url, as: :json
    assert_response :success
  end

  test "should create unity" do
    assert_difference('Unity.count') do
      post unities_url, params: { unity: { emails: @unity.emails, name: @unity.name, site: @unity.site } }, as: :json
    end

    assert_response 201
  end

  test "should show unity" do
    get unity_url(@unity), as: :json
    assert_response :success
  end

  test "should update unity" do
    patch unity_url(@unity), params: { unity: { emails: @unity.emails, name: @unity.name, site: @unity.site } }, as: :json
    assert_response 200
  end

  test "should destroy unity" do
    assert_difference('Unity.count', -1) do
      delete unity_url(@unity), as: :json
    end

    assert_response 204
  end
end
