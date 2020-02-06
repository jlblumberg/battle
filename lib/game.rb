class Game

  # def initialize
  #    @player_1 = player_1
  #    @player_2 = player_2
  # end 

  def attack(other_player)
    other_player.receive_damage
  end
  
end