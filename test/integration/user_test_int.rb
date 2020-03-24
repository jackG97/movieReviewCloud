require 'test_helper'

class UserTestInt < ActionDispatch::IntegrationTest
  fixtures :all

  test 'try to create a new user without a password' do
    @user = users(:one)
    get '/users/sign_up'
    assert_response :success

    post users_url, params:{user: {surname: @user.surname}}
    assert_equal '/users', path

  end



  test 'try to sign in with blank fields' do
  @user = users(:one)
  get '/users/sign_in'
  assert_response :success

  post users_url, params:{user: {email: @user.email}}
  assert_equal '/users', path

end
end
