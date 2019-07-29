require_all './lib'
number_of_players = nil

def main_menu
    system("clear")
    Screen.welcome
    user_input = gets.chomp.clamp(2, 5)
    number_of_players = user_input
end