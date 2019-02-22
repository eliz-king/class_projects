


@person = ['']


class NewUser
  @@balance = 500
  GAMES = [
  'deck',
  'dices',
  'roulette'
]
  def initialize
    gather_user_info
    game_selection
  end

  def gather_user_info
  print 'Pleae Enter Your Name: '
  @person = gets.chomp
  puts "Your Balance is: #{@@balance}"
  end

  def game_selection
    puts 'What Would You Like to Play?'
    GAMES.each_with_index { |value, index| puts "#{index + 1} #{value}"}
    @@choice = gets.to_i
  end  



end

class GameChooser < NewUser
  require_relative 'deck'
  require_relative 'dice'
  require_relative 'roulette'
  def initialize
    game_play
  end

  def game_play
    if @@choice == 1
      Deck.new
    elsif @@choice == 2
      dices = Dice.new
      dices.show_dice
      dices.show_sum
    elsif @@choice == 3
      Roulette.new
    else
      puts 'not an option, try again dummy'
    end
      
  end

end


casino = NewUser.new
casino
GameChooser.new