def solution x, y, d
  raise "X > Y" if x > y

  y % d == 0 ? y / d : (x + y) / d
rescue Exception => e
  puts "Invalid condition:"
  puts e
end

require 'minitest/autorun'

class Test

end
