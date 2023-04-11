class ApplicationController < ActionController::Base
  layout("wrapper.html.erb")

  # Add your actions below this line
  # ================================

  def homepage
    render(:template => "game_templates/rules.html.erb")
  end

  def play_rock
    # Write ton of code
    render(:template => "game_templates/user_rock.html.erb")
  end

  def play_paper
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @outcome = "won"
    elsif @comp_move == "paper"
      @outcome = "tied"
    elsif @comp_move == "scissors"
      @outcome = "lost"
    end
    render(:template => "game_templates/user_paper.html.erb")
  end

  def play_scissors
    # Write ton of code
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @outcome = "lost"
    elsif @comp_move == "paper"
      @outcome = "won"
    elsif @comp_move == "scissors"
      @outcome = "tied"
    end
    render(:template => "game_templates/user_scissors.html.erb")
  end
end
