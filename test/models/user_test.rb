require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new
  end

  test "User name should not be empty" do
    @user.name = ""
    assert_not @user.valid?
  end

  test "User name should not be too long" do
    @user.name = "a" * 100
    assert_not @user.valid?
  end

  test "User email should not be blank" do
    @user.email = ""
    assert_not @user.valid?
  end
end
