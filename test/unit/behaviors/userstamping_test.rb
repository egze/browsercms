require "test_helper"

class UserStampingTest < ActiveSupport::TestCase

  def setup

  end

  def teardown

  end

  test "if no current user, then timestamp should be nil" do
    block = HtmlBlock.create!(:name=>"A")
    assert_nil block.created_by
    assert_nil block.updated_by
  end

  test "if no current user is false, then timestamp should be nil" do
    User.expects(:current).returns(false).twice
    block = HtmlBlock.create!(:name=>"A")
    assert_nil block.created_by
    assert_nil block.updated_by
  end
end