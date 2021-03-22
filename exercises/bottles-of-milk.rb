#!/usr/bin/env ruby
def bottles_of_beer(beer = 99)
  case beer
  when 0
    puts 'No more bottles of beer on the wall, no more bottles of beer!'
    puts 'Go to the store and buy some more, 99 bottles of beer on the wall!'
  when 1
    puts '1 bottle of beer on the wall, 1 bottle of beer!'
    puts 'Take one down and passit around, no more bottles of beer on the wall!'
    bottles_of_beer(beer - 1)
  else
    puts "#{beer} bottles of beer on the wall, #{beer} bottles of beer!"
    puts "Take one down, pass it around, #{beer - 1} on the wall."
    bottles_of_beer(beer - 1)
  end
end

bottles_of_beer(99)
