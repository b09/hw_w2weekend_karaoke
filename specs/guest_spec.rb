require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class TestGuest < Minitest::Test

  def setup
    @guest = Guest.new("Marge Simpson")
  end

  def test_guest_name
    assert_equal("Marge Simpson", @guest.gname)
  end


end
