require "test_helper"

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_index_url
    assert_response :success
  end

  test "should get terms_and_conditions" do
    get welcome_terms_and_conditions_url
    assert_response :success
  end
end
