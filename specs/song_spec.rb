require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class TestSong < Minitest::Test

  def setup
    @song = Song.new("In the Woods", "Jethro Tull")
  end

  def test_song_title
    assert_equal("In the Woods", @song.stitle)
  end

  def test_song_title
    assert_equal("Jethro Tull", @song.sartist)
  end


end
