# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end



# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method
puts "Hotel Reservation testing"
hotel_reservation = HotelReservation.new({customer_name: "Gideon", date: 30-01-2017, room_number: 5})
puts "To change a room number"
hotel_reservation.room_number = 3
result = hotel_reservation.room_number
puts "Your new room number is:"
if result == 3
  puts "PASS"
else 
  puts "FAIL"
end

puts "Testing a new amenity"
hotel_reservation.add_a_fridge
result = hotel_reservation.amenities[0]
if result == "fridge"
  puts "PASS"
else
  puts "FAIL"
end

puts "Testing the second amenity"
hotel_reservation.add_a_crib
result = hotel_reservation.amenities[1]
if result == "crib"
  puts "PASS"
else
  puts "FAIL"
end

puts "Testing a custom amenity"
hotel_reservation.add_a_custom_amenity("Swimming_Pool")
result = hotel_reservation.amenities[2]
if result == "Swimming_Pool"
  puts "PASS"
else
  puts "FAIL"
end

