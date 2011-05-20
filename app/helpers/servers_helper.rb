module ServersHelper
  def game_mode_to_s(game_mode)
    if game_mode == 0
      "Other"
    elsif game_mode == 1
      "Survival"
    elsif game_mode == 2
      "Creative"
    else
      raise "error with game_mode helper method"
    end
  end
end
