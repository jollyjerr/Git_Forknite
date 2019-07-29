require_all './lib'
number_of_players = nil

def main_menu
    system("clear")
    Screen.welcome
    user_input = gets.chomp.to_i
    case user_input
    when 2..5
        number_of_players = user_input
    else
        puts "                                      Your choices are:"
        puts "                                        2 | 3 | 4 | 5"
        sleep(3)
        main_menu
    end 
end

def create_player
    Screen.new_player
end