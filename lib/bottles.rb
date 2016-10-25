require 'pry'

class Bottles
#
  def sing_the_song(n)
    while n > -1
      if n == 0
        puts "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, #{n} bottles of beer on the wall."
      elsif n == 1
        puts "#{n} bottle of beer on the wall, #{n} bottles of beer.\nTake one down and pass it around, no more bottles of beer on the wall."
      elsif n == 2
        puts "#{n} bottles of beer on the wall, #{n} bottles of beer.\nTake one down and pass it around, #{n - 1} bottle of beer on the wall."
      else
        puts "#{n} bottles of beer on the wall, #{n} bottles of beer.\nTake one down and pass it around, #{n - 1} bottles of beer on the wall."
      end
      n -= 1
    end
  end
end

# bottles = Bottles.new
# bottles.sing_the_song(99)
