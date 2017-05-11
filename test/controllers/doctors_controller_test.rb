require 'test_helper'

class DoctorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doctor = doctors(:one)
  end

  test "should get index" do
    get doctors_url, as: :json
    assert_response :success
  end

  test "should create doctor" do
    assert_difference('Doctor.count') do
      post doctors_url, params: { doctor: { degree: @doctor.degree, fee: @doctor.fee, name: @doctor.name, visit_time: @doctor.visit_time } }, as: :json
    end

    assert_response 201
  end

  test "should show doctor" do
    get doctor_url(@doctor), as: :json
    assert_response :success
  end

  test "should update doctor" do
    patch doctor_url(@doctor), params: { doctor: { degree: @doctor.degree, fee: @doctor.fee, name: @doctor.name, visit_time: @doctor.visit_time } }, as: :json
    assert_response 200
  end

  test "should destroy doctor" do
    assert_difference('Doctor.count', -1) do
      delete doctor_url(@doctor), as: :json
    end

    assert_response 204
  end
end