require_all './lib'
number_of_players = nil

def main_menu
    system("clear")
    Player.delete_all
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
    system("clear")
    number_of_players.times {|player| create_player}
    match
end

def create_player
    Screen.new_player
    player_name = gets.chomp
    new_player = Player.new(name: player_name)    #CHANGE THIS TO CREATE BEFORE TESTING!!!!!!!!!!!!!
    system("clear")
    select_weapons(new_player)
end

def select_weapons(player)
    puts ''
    puts ''
    puts "                                        Welcome #{player.name}!"
    Screen.weapon_selection
    Weapon.all.each {|weapon| puts "#{weapon}" }
    weapon_one = gets.chomp
    # player.weapons << weapon_one
    puts "#{weapon_one} equipped!"
    weapon_two = gets.chomp
    # player.weapons << weapon_two
    puts "#{weapon_two} equipped!"
    sleep(0.5)
end

def match
    system("clear")
    puts "Match Started!"
end
