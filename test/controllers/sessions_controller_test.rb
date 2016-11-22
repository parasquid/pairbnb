require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create_from_omniauth" do
    get sessions_create_from_omniauth_url
    assert_response :success
  end

end
