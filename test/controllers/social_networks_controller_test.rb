require 'test_helper'

class SocialNetworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social_network = social_networks(:one)
  end

  test "should get index" do
    get social_networks_url, as: :json
    assert_response :success
  end

  test "should create social_network" do
    assert_difference('SocialNetwork.count') do
      post social_networks_url, params: { social_network: { link: @social_network.link, sn_type_id: @social_network.sn_type_id } }, as: :json
    end

    assert_response 201
  end

  test "should show social_network" do
    get social_network_url(@social_network), as: :json
    assert_response :success
  end

  test "should update social_network" do
    patch social_network_url(@social_network), params: { social_network: { link: @social_network.link, sn_type_id: @social_network.sn_type_id } }, as: :json
    assert_response 200
  end

  test "should destroy social_network" do
    assert_difference('SocialNetwork.count', -1) do
      delete social_network_url(@social_network), as: :json
    end

    assert_response 204
  end
end
