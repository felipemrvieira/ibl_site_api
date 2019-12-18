require 'test_helper'

class UnityTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unity_type = unity_types(:one)
  end

  test "should get index" do
    get unity_types_url, as: :json
    assert_response :success
  end

  test "should create unity_type" do
    assert_difference('UnityType.count') do
      post unity_types_url, params: { unity_type: { name: @unity_type.name } }, as: :json
    end

    assert_response 201
  end

  test "should show unity_type" do
    get unity_type_url(@unity_type), as: :json
    assert_response :success
  end

  test "should update unity_type" do
    patch unity_type_url(@unity_type), params: { unity_type: { name: @unity_type.name } }, as: :json
    assert_response 200
  end

  test "should destroy unity_type" do
    assert_difference('UnityType.count', -1) do
      delete unity_type_url(@unity_type), as: :json
    end

    assert_response 204
  end
end
