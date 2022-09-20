require_relative '../item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(published_date, on_spotify: false)
    super(published_date)
    @on_spotify = on_spotify
  end

  private 
  
  def can_be_archived?
    @on_spotify && super
  end
end
