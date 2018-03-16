class Guest

attr_accessor :gname
attr_reader :gwallet

  def initialize(guest_name)
    @gname = guest_name
    @gwallet = 0
  end

  def change_wallet(amount)
    @gwallet += amount
  end

  # def add_song(song)
  #
  # end

end
