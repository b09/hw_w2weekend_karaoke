require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')
require_relative('../song')

class TestRoom < Minitest::Test

  def setup
    @some_songs = some_songs = [
    Song.new("In the Woods", "Jethro Tull"),
    Song.new("Baba O'Rielly", "The Who"),
    Song.new("Daytime Dreamer", "The Monkees"),
    Song.new("Team Spirit", "Nirvana"),
    Song.new("Elegie", "Rachmaninoff")
  ]
    @some_guests = some_guests = [
    Guest.new("Marge Simpson"),
    Guest.new("Bart Simpson"),
    Guest.new("Homer Simpson"),
    Guest.new("Maggie Simpson"),
    Guest.new("Lisa Simpson")
  ]
    many_guests = @some_guests * 2
    @room1 = Room.new(1, some_guests, some_songs)
    @room2 = Room.new(2, many_guests, some_songs)
    @song = Song.new("Clair de Lune", "Debussy")
    @guest = Guest.new("Lisa Simpson")
    @guest.change_wallet(10)
    @room3 = Room.new(3, [@guest], some_songs)
  end

  def test_room_playlist
    assert_equal(@some_songs, @room1.rplaylist)
  end

  # def test_room_name_number
  #   assert_equal(2, @room1.rname)
  # end

  def test_room_occupants
    assert_equal(@some_guests, @room1.roccupants)
  end

  def test_room_add_songs
    @room1.add_song(@song)
    assert_equal(6, @room1.rplaylist.length)
  end

  def test_room_add_guests
    @room1.add_guest(@guest)
    assert_equal(6, @room1.roccupants.length)
  end

  def test_room_remove_guest
    @room1.check_out_guest(@guest)
    assert_equal(4, @room1.roccupants.length)
  end

  def test_room_capacity__to_full
    assert_equal("Too many guests in room", @room2.room_capacity)
  end

  def test_room_capacity__ok
    assert_equal("Room capacity is alright", @room1.room_capacity)
  end

  def test_entry_fee__enough_money
    assert_equal("Guest has enough money", @room3.entry_fee)
  end
  #
  # def test_entry_fee__not_enough_money
  #   guest = Guest.new("Lisa Simpson")
  #   guest.change_wallet(9)
  #   room4 = Room.new(3, guest, @some_songs)
  #   assert("Not enough money", room4.entry_fee)
  # end


end
