require 'pry'

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(name_array)
  message_array = []
  name_array.each do |name| 
    message = "Hello, my name is #{name}."
    message_array << message
  end
  message_array
end

def assign_rooms(name_array)
  room_assignment = 1 
  room_message_array = []
  name_array.each do |name| 
    room_message = "Hello, #{name}! You'll be assigned to room #{room_assignment}!"
    room_message_array << room_message
    room_assignment += 1
  end
  room_message_array
end

def printer(name_array)
  badge_array = batch_badge_creator(name_array)
  room_array = assign_rooms(name_array)
  badge_array.each do |badge|
    puts badge
    puts room_array[badge_array.index(badge)]
  end
end
    
printer(["abe","abe1","abe2","abe3","abe4","abe5","abe6"])    