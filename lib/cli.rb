require_all './lib'
require 'tty-prompt'
Prompt = TTY::Prompt.new
Numbers_to_name = {5 => "five", 4 => "four", 3 => "three", 2 => "two", 1 => "one"}


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
    match
end

# PLAYER CREATION
def create_player
    Screen.new_player
    player_name = gets.chomp.to_str
    new_player = Player.create(name: player_name)
    system("clear")
    select_weapons(new_player)
end

def select_weapons(player)
    puts ''
    puts ''
    puts "Welcome #{player.name}!".center(95)
    Screen.weapon_selection
    choices = Weapon.all.map {|weapon| weapon.name}
    weapon_choices = Prompt.multi_select("", choices, max: 2, default: 2, per_page: 10)
    weapon_one = weapon_choices[0]
    weapon_two = weapon_choices[1]
    player.weapons << Weapon.all.select {|weapon| weapon.name == weapon_one}
    player.weapons << Weapon.all.select {|weapon| weapon.name == weapon_two}
    sleep(0.5)
end

#PLAY GAME
def match
    live_players = Player.all.select {|player| player.health > 0}
    number_of_players = live_players.count
    system("clear")
    if number_of_players > 1
        Screen.send(Numbers_to_name[number_of_players])
    end
    if number_of_players > 2
        number_of_players.times do |player_num|
            many_checker(live_players[player_num])
        end
        match
    elsif number_of_players == 2
        number_of_players.times do |player_num|
            duel_checker(live_players[player_num])
        end
        match
    elsif number_of_players == 1
        game_over
    end
end

def duel_checker(player)
    if player.health > 0
        turn_duel(player)
    else
        game_over
    end
end

def turn_duel(player)
    live_players = Player.all.select {|player| player.health > 0}
    target = live_players.select {|target| target.name != player.name}[0]
    target.health -= attack(player)
    target.save
    puts target.health
    sleep(0.5)
end

def many_checker(player)
    if player.health > 0
        turn_many(player)
    end
end

def turn_many(player)
    puts "                                        #{player.name}, choose a target!"
    live_players = Player.all.select {|player| player.health > 0}
    choices = live_players.map {|player| player.name}
    input = Prompt.select("", choices)
    target = Player.all.select {|target| target.name == input || target.id == input}[0]
    target.health -= attack(player)
    target.save
    puts target.health
    sleep(0.5)
end

def attack(player)
    puts "                                        #{player.name}, choose a weapon!"
    puts ''
    choices = player.weapons.map {|weapon| weapon.name}
    weapon_choice = Prompt.select("", choices)
    weapon = player.weapons.select {|weapon| weapon.name == weapon_choice}[0]
    weapon.damage
end


# HANDLE END OF GAME
def game_over
    Screen.one
    puts "You got FORKED"
end


