require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  setup do
    @user = users(:one)
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { email: @user.email, encrypted_password: @user.encrypted_password,
        firstname: @user.firstname, surname: @user.surname,
        dateofbirth: @user.dateofbirth } }
    end
    assert_redirected_to movies_url
    end


  test "should get show" do
    get "/users/1"
    assert_response :success
  end

end
