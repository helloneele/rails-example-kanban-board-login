require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
  end

  test 'can authenticate with password' do
    assert @user.authenticate("badpassword123")
  end
end
