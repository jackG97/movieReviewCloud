require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save user without email" do
    user = User.new
    assert_not user.save, "No Email"
  end

  test "should prompt an error" do
    assert_raises(NameError) do
    undefined_variable
    assert true
  end
  end

  test "Password should be a minimum 6 characters" do
    user = User.new
    assert_not user.save, "password has to be minimum 6 characters"
  end
end
