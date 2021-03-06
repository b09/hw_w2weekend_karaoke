class Room

attr_accessor :rname, :roccupants, :rplaylist, :rfee

  def initialize(room_name, room_occupants, room_playlist)
    @rname = room_name
    @roccupants = room_occupants
    @rplaylist = room_playlist
    @rfee = 10
  end

  def add_song(song)
    @rplaylist << song
  end

  def add_guest(guest)
    @roccupants << guest
  end

  def check_out_guest(person)
    @roccupants.delete_if {|occupant| occupant.gname == person.gname }
  end

  def room_capacity
    @roccupants.length <= 7 ? "Room capacity is alright" : "Too many guests in room"
  end

  def entry_fee
    for guest in @roccupants
      return guest.gwallet < @rfee ? "Not enough money" : "Guest has enough money"
    end
  end

end
