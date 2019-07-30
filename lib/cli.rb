require_all './lib'
Numbers_to_name = {5 => "five", 4 => "four", 3 => "three", 2 => "two"}


def main_menu
    system("clear")
    Player.destroy_all
    Screen.welcome
    user_input = gets.chomp.to_i
    case user_input
    when 2..5
        number_of_players = user_input
    else
        puts "Your choices are:".rjust(90)
        puts "2 | 3 | 4 | 5".rjust(88)
        sleep(3)
        main_menu
    end    
    system("clear")
    number_of_players.times {|player| create_player}
    match(number_of_players)
end

def create_player
    Screen.new_player
    player_name = gets.chomp
    new_player = Player.create(name: player_name)
    system("clear")
    select_weapons(new_player)
end

def select_weapons(player)
    puts ''
    puts ''
    puts "Welcome #{player.name}!".center(95)
    Screen.weapon_selection
    Weapon.all.each {|weapon| puts "                                        #{weapon.name}" }
    weapon_one_choice = gets.chomp
    player.weapons << Weapon.all.select {|weapon| weapon.name == weapon_one_choice}
    puts "#{weapon_one_choice} equipped!"
    weapon_two_choice = gets.chomp
    player.weapons << Weapon.all.select {|weapon| weapon.name == weapon_two_choice}
    puts "#{weapon_two_choice} equipped!"
    # puts "#{player.weapons.map {|weapon| weapon.name}}" #TEST CODE FOR CHECKING WEAPON OWNERSHIP
    sleep(0.5)
end

def match(players)
    number_of_players = players
    system("clear")
    Screen.send(Numbers_to_name[number_of_players])
    if number_of_players > 2
        Player.all.each {|player| turn_many(player)}
    else
        Player.all.each {|player| turn_duel(player)}
    end
end

def turn_duel(player)
    attack(player)
end

def turn_many(player)
    puts "                                        #{player.name}, choose a target!"
    input = gets.chomp
    target = Player.all.select {|target| target.name == input || target.id == input}
    attack(player)
end

def attack(player)
    puts "                                        #{player.name}, choose a weapon!"
    puts ''
    player.weapons.each {|weapon| puts "                                        #{weapon.name}"}
    weapon_choice = gets.chomp
    weapon = player.weapons.select {|weapon| weapon.name == weapon_choice}
end



