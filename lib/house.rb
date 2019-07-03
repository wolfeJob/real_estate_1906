class House
  attr_reader :address, :rooms
  def initialize(price,address)
    @price = price
    @address = address
    @rooms = []
  end

  def price
    @price.tr('$','''')
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(room_category)
    room_cat = []
    @rooms.collect do |room|
      if room.category == room_category
          room_cat << room
      end
    end
    room_cat.flatten
  end

  def area
    #some calculation for house_area
    house_area = 1900
    house_area
  end

  def price_per_square_foot
  end

end #end class House
