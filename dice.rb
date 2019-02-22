class Dice
  def initialize
    roll
  end
  
  def roll
    @die1 = 1 + rand(6)
    @die2 = 1 + rand(6) 
  end
  
  def show_dice
    puts "Die1: ", @die1, " Die2:", @die2
  end
  
  def show_sum
    puts "Sum of dice is ", @die1 + @die2, ".\n"
  end 
 end

 d = Dice.new
#  d.show_dice
#  puts
#  d.show_sum