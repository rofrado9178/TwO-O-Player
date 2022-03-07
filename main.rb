require './Numbers'
require './Players'

players = Players.new
turn = 1

while players.player1_lives > 0 && players.player2_lives > 0
  
  puts "----- NEW TURN -----"
  numbers = Numbers.new(rand(1..20), rand(1..20))
  name_method = "player#{turn}"
  lives_method = "decrease_lives_player#{turn}"
  puts "#{players.send name_method}: What does #{numbers.num1} plus #{numbers.num2} equal?"
  num1 = numbers.num1
  num2 = numbers.num2
  answer = numbers.answer
  guess = gets.chomp
  if answer == guess.to_i
    puts "You're smart. #{num1} + #{num2} = #{answer}."
  else
    players.send lives_method
    puts "You're stupid. #{num1} + #{num2} does not equal #{guess}"
  end
  puts "Current score: Player 1 has #{players.player1_lives}/3. Player 2 has #{players.player2_lives}/3."

  if turn == 1
    turn = 2
  else
    turn = 1
  end
end

puts "----- GAME OVER -----"
puts "Player #{turn} wins with a score of #{players.send "player#{turn}_lives"}/3!"
puts "Good bye!"