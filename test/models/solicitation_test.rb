require 'test_helper'

class SolicitationTest < ActiveSupport::TestCase
  def setup
    @solicitation = Solicitation.new(user_id: users(:michael).id,
                                     follower_id: users(:archer).id)
  end

  test 'should be valid' do
    assert @solicitation.valid?
  end

  test 'should require a user_id' do
    @solicitation.user_id = nil
    assert_not @solicitation.valid?
  end

  test 'should require a follower_id' do
    @solicitation.follower_id = nil
    assert_not @solicitation.valid?
  end
end
