require "test_helper"

class GpaCalculatorControllerTest < ActionDispatch::IntegrationTest
  test "should get calculate" do
    get gpa_calculator_calculate_url
    assert_response :success
  end
end
