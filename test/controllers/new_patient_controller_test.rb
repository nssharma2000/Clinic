require "test_helper"

class NewPatientControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get new_patient_create_url
    assert_response :success
  end
end
