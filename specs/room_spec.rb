require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')
require_relative('../song')

class TestRoom < Minitest::Test

  def setup
    @song_songs = [
    Song.new("In the Woods", "Jethro Tull")
    Song.new("Baba O'Rielly", "The Who")
    Song.new("Daytime Dreamer", "The Monkees")
    Song.new("Team Spirit", "Nirvana")
    Song.new("Elegie", "Rachmaninoff")

    ]
    @some_guests = [
    Guest.new("Marge Simpson")
    Guest.new("Bart Simpson")
    Guest.new("Homer Simpson")
    Guest.new("Maggie Simpson")
    Guest.new("Lisa Simpson")
  ]
    @room = Room.new(2, @some_guests, @song_songs)
  end

  


end
