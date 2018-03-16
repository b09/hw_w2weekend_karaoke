require('minitest/autorun')
require('minitest/rg')
require_relative('../room')

class TestRoom < Minitest::Test 

  def setup
    @room = Room.new()
  end


end
