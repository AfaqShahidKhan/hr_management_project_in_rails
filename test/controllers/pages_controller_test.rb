require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about_us" do
    get pages_about_us_url
    assert_response :success
  end

  test "should get contact_us" do
    get pages_contact_us_url
    assert_response :success
  end

  test "should get privicy_policy" do
    get pages_privicy_policy_url
    assert_response :success
  end

  test "should get term_and_conditions" do
    get pages_term_and_conditions_url
    assert_response :success
  end
end
