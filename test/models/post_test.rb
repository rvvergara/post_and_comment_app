require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new
  end

  test "Post should have a title" do
    @post.title = ""
    assert_not @post.valid?
  end

  test "Post should have content" do
    @post.content = ""
    assert_not @post.valid?
  end
end
