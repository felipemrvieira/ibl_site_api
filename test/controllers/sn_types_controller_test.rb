require 'test_helper'

class SnTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sn_type = sn_types(:one)
  end

  test "should get index" do
    get sn_types_url, as: :json
    assert_response :success
  end

  test "should create sn_type" do
    assert_difference('SnType.count') do
      post sn_types_url, params: { sn_type: { title: @sn_type.title } }, as: :json
    end

    assert_response 201
  end

  test "should show sn_type" do
    get sn_type_url(@sn_type), as: :json
    assert_response :success
  end

  test "should update sn_type" do
    patch sn_type_url(@sn_type), params: { sn_type: { title: @sn_type.title } }, as: :json
    assert_response 200
  end

  test "should destroy sn_type" do
    assert_difference('SnType.count', -1) do
      delete sn_type_url(@sn_type), as: :json
    end

    assert_response 204
  end
end
