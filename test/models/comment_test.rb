require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = Comment.new
  end

  test "Comment should have a body" do
    @comment.body = ""
    assert_not @comment.valid?
  end
end
