require File.expand_path(File.dirname(__FILE__) + "/../lib/cutest-report")

class User
  attr_reader :name

  def initialize name = "Unknown"
    @name = name
  end
end

# A.
#
describe "A User" do
  before do
    @user = User.new("John Doe")
  end

  it "has a name." do
    assert_equal "John Doe", @user.name
  end

  it "has an email."
end

# B.
#
context "A User" do
  setup do
    @user = User.new
  end

  should "have a name." do
    assert_equal "Unknown", @user.name
  end

  should "have an email."
end
