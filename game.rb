require './player'

class Game

  @@player = 0;
  def start(players)
    puts "Next question: "
    question = Question.new
    puts "#{players[0].long}: #{question.qs}"
    print "> "
    answer = $stdin.gets.chomp
    if answer.to_i == question.number1 * question.number2
      puts "#{players[0].long}: Correct."
    else
      players[0].loose_points
      puts "#{players[0].long}: Incorrect"
    end

    if players[0].lives == 0
      puts "#{players[1].long} wins  with #{players[1].final_lives} lives"
    else
      players.reverse!
      "#{players[1].short}: #{players[1].final_lives} vs #{players[0].short}: #{players[0].final_lives}"
      start(players)
    end
  end
end