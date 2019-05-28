class Game

  def initialize(player1, player2 = [])
    @player1 = player1
    @player2 = player2
  end

  def play()
    return "You are terrible at this game" if @player1 == @player2

    if @player1 == "rock" && @player2 == "scissors"
      result = "rock of death has destroyed you"
    elsif @player1 == "rock" && @player2 == "paper"
      result = "death by paper cuts"

    elsif @player1 == "paper" && @player2 == "rock"
    result = "death by paper cuts"
  elsif @player1 == "paper" && @player2 == "scissors"
    result = "chibbed"

  elsif @player1 == "scissors" && @player2 == "paper"
    result = "chibbed"
  elsif @player1 == "scissors" && @player2 == "rock"
    result = "rock of death has destroyed you"

  end
  return result
end

end
