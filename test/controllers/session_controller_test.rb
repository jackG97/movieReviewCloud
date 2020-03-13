require 'test_helper'

class SessionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get session_index_url
    assert_response :success
  end

  test "should get ping" do
    get session_ping_url
    assert_response :success
  end

  test "should get pong" do
    get session_pong_url
    assert_response :success
  end

end
