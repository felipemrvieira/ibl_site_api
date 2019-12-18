require 'test_helper'

class PreRegistrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pre_registration = pre_registrations(:one)
  end

  test "should get index" do
    get pre_registrations_url, as: :json
    assert_response :success
  end

  test "should create pre_registration" do
    assert_difference('PreRegistration.count') do
      post pre_registrations_url, params: { pre_registration: { email: @pre_registration.email, name: @pre_registration.name, phone: @pre_registration.phone, unity_id: @pre_registration.unity_id, unity_type_id: @pre_registration.unity_type_id } }, as: :json
    end

    assert_response 201
  end

  test "should show pre_registration" do
    get pre_registration_url(@pre_registration), as: :json
    assert_response :success
  end

  test "should update pre_registration" do
    patch pre_registration_url(@pre_registration), params: { pre_registration: { email: @pre_registration.email, name: @pre_registration.name, phone: @pre_registration.phone, unity_id: @pre_registration.unity_id, unity_type_id: @pre_registration.unity_type_id } }, as: :json
    assert_response 200
  end

  test "should destroy pre_registration" do
    assert_difference('PreRegistration.count', -1) do
      delete pre_registration_url(@pre_registration), as: :json
    end

    assert_response 204
  end
end
