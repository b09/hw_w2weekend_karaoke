class Room

attr_accessor :rname, :roccupants, :rplaylist

  def initialize(room_name, room_occupants, room_playlist)
    @rname = room_name
    @roccupants = room_occupants
    @rplaylist = room_playlist
  end


end
