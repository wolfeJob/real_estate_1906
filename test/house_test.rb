require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class HouseTest < Minitest::Test

  def setup
    @house = House.new('$4000000', "123 sugar lane")
    @room_1 = Room.new(:bedroom,10,13)
    @room_2 = Room.new(:bedroom,11,15)
    @room_3 = Room.new(:living_room, 25, 15)
    @room_4 = Room.new(:basement, 30, 41)
  end

  def test_house_exists
    assert_instance_of House, @house
  end

  def test_rooms_exist
    assert_instance_of Room, @room_1
    assert_instance_of Room, @room_2
    assert_instance_of Room, @room_3
    assert_instance_of Room, @room_4
  end

  def test_house_has_price
    assert_equal 4000000, @house.price
  end

  def test_house_has_address
    assert_equal [], @house.rooms
  end

  def test_we_can_add_rooms
    @house.add_room(@room_1)
    @house.add_room(@room_2)
    @house.add_room(@room_3)
    @house.add_room(@room_4)
    assert_equal [@room_1,@room_2,@room_3,@room_4], @house.rooms
  end

  def test_we_can_get_room_from_category
    @house.add_room(@room_1)
    @house.add_room(@room_2)
    @house.add_room(@room_3)
    @house.add_room(@room_4)
    assert_equal [@room_1,@room_2], @house.rooms_from_category(:bedroom)
    assert_equal [@room_4], @house.rooms_from_category(:basement)
  end

  def test_house_area
    assert_equal 1900, @house.area
  end

  def test_hash_for_rooms_by_category

  end 

end #end house test
