require_all './lib'
class Screen               
    def self.welcome
        puts ''
        puts ''
        puts '                                                       \        / __      __  __  _   _  __    _____ __                      '
        puts '                                                        \  /\  / |__ |   |   |  | |\ /| |__      |  |  |                     '
        puts '                                                         \/  \/  |__ |__ |__ |__| | v | |__      |  |__|                     '
        puts '                                       _____                  _____                                                      _   '
        puts '                                      |  ___|                |  ___|                                                    | |  '
        puts '                                      | |        _   _____   | |     _____   _____    _  _    _   _   _   _____   ____  | |  '
        puts '                                      | |  ___  | | |__ __|  | |__  |  _  | |  _  |  | |/ /  | | | | | | |__ __| |  __| | |  '
        puts '                                      | | |_  | | |   | |    |  __| | | | | | |_| |  |   |   |  \| | | |   | |   | |__  |_|  '
        puts '                                      | |___| | | |   | |    | |    | |_| | | | \ \  | |\ \  | |\  | | |   | |   | |__   _   '
        puts '                                      |_______| |_|   |_|    |_|    |_____| |_|  \_\ |_| \_\ |_| \_| |_|   |_|   |____| |_|  '
        puts ''
        puts ''
        puts '                                                             Enter number of players between 2 and 5!'
        puts ''
    end
    def self.player_path
        puts ''
        puts ''
        puts '                                         Welcome, champion!         '
        puts '                                                                            / \               '
        puts '                                                                           |   |                                     '
        puts '                                                                            \ /                                      '
        puts '                                                                             |                                       '
        puts '                                                                           / | \                                     '
        puts '                                                                          /  |  \                                    '
        puts '                                                                             |                                       '
        puts '                                                                            / \                                      '
        puts '                                                                           /   \                                     '
        puts '                                                                          /     \                                    '
        puts '                                        ------------------------------------------------------------------------------------'
    end
    def self.new_player
        puts ''
        puts ''
        puts 'Welcome, new champion!                                                         '
        puts '                                                                            / \            '
        puts '                                                                           |   |                                     '
        puts '                                                                            \ /                                      '
        puts '                                                                             |                                       '
        puts '                                                                           / | \                                     '
        puts '                                                                          /  |  \                                    '
        puts '                                                                             |                                       '
        puts '                                                                            / \                                      '
        puts '                                                                           /   \                                     '
        puts 'Please enter your name:                                                   /     \                                    '
        puts '                                        ------------------------------------------------------------------------------------'
    end
    def self.weapon_selection                                                                                                            
        puts '                                                                            / \                                      '
        puts '                                                                           |   |                                     '
        puts '                                                                            \ /                                      '
        puts '                                                                        \/   |                                       '
        puts '                                                                         \__ | \                                     '
        puts 'Please choose 2 weapons:                                                     |  \                                    '
        puts '                                                                             |                                       '
        puts 'Press up and down arrows to toggle through weapons                          / \                                      '
        puts 'Press spacebar to select weapons                                           /   \                                     '
        puts 'Press enter to submit weapon choice                                       /     \                                    '
        puts '                                        ------------------------------------------------------------------------------------'
    end
    def self.spell_selection                                                                                                            
        puts '                                                                            / \                                      '
        puts '                                                                           |   |                                     '
        puts '                                                                            \ /                                      '
        puts '                                                                        \    |                                       '
        puts '                                                                         \__ | \                                     '
        puts 'Please choose a spell:                                                       |  \                                    '
        puts '                                                                             |                                       '
        puts 'Press up and down arrows to toggle through spells                           / \                                      '
        puts 'Press spacebar to select a spell                                           /   \                                     '
        puts '                                                                          /     \                                    '
        puts '                                        ------------------------------------------------------------------------------------'
    end
    def self.one                 
        puts '                                                                                                                                                                                                                                        '
        puts Pastel.green(Font.write("#1 BASH ROYALE".center(100)))                                                                                                                    
        puts '                                                                                                                    '
        puts '                                                                                                                    '                                                                          
        puts ''
        puts ''
        puts '                                                            / \                                                     '
        puts '                                                           |   |                                                    '
        puts '                                                            \ /                                                     '
        puts '                                                          \  |  /                                                   '
        puts '                                                           \ | /                                                    '
        puts '                                                             |                                                      '
        puts '                                                             |                        |                             '
        puts '                                                            / \          |            |      _ _ _                  '
        puts '                                                           /   \         |__ __ __ __ |_ __ /   X  \                '
        puts '                                                          /     \                           \_ _X _/                '
        puts '                                        ------------------------------------------------------------------------------------'
    end
    def self.two
        puts ''
        puts Pastel.red(Font.write("Duel!!!".center(125)))
        puts ''
        puts '                                                               / \                 / \                                      '
        puts '                                                              |   |               |   |                                     '
        puts '                                                               \ /                 \ /                                      '
        puts '                                                                |                   |                                       '
        puts '                                                              / | __ __       __ __ | \                                     '
        puts '                                                             /  |                   |  \                                    '
        puts '                                                                |                   |                                       '
        puts '                                                               / \                 / \                                      '
        puts '                                                              /   \               /   \                                     '
        puts '                                                             /     \             /     \                                    '
        puts '                                        ------------------------------------------------------------------------------------'
    end
    def self.three
        puts ''
        puts Pastel.red(Font.write("Battle!!!".center(125)))
        puts ''
        puts '                                                          / \                 / \                 / \                       '
        puts '                                                         |   |               |   |               |   |                      '
        puts '                                                          \ /                 \ /                 \ /                       '
        puts '                                                           |                   |                   |                        '
        puts '                                                         / | __ __       __ __ | __ __       __ __ | \                      '
        puts '                                                        /  |                   |                   |  \                     '
        puts '                                                           |                   |                   |                        '
        puts '                                                          / \                 / \                 / \                       '
        puts '                                                         /   \               /   \               /   \                      '
        puts '                                                        /     \             /     \             /     \                     '
        puts '                                        ------------------------------------------------------------------------------------'
    end
    def self.four
        puts ''
        puts Pastel.red(Font.write("Battle!!!".center(125)))
        puts ''
        puts '                                                   / \                 / \                 / \                 / \          '
        puts '                                                  |   |               |   |               |   |               |   |         '
        puts '                                                   \ /                 \ /                 \ /                 \ /          '
        puts '                                                    |                   |                   |                   |           '
        puts '                                                  / | __ __       __ __ | __ __       __ __ | __ __       __ __ | \         '
        puts '                                                 /  |                   |                   |                   |  \        '
        puts '                                                    |                   |                   |                   |           '
        puts '                                                   / \                 / \                 / \                 / \          '
        puts '                                                  /   \               /   \               /   \               /   \         '
        puts '                                                 /     \             /     \             /     \             /     \        '
        puts '                                        ------------------------------------------------------------------------------------'
    end
    def self.five
        puts ''
        puts Pastel.red(Font.write("Battle!!!".center(125)))
        puts ''
        puts '                                               / \               / \               / \               / \             / \    '
        puts '                                              |   |             |   |             |   |             |   |           |   |   '
        puts '                                               \ /               \ /               \ /               \ /             \ /    '
        puts '                                                |                 |                 |                 |               |     '
        puts '                                              / |__ __      __ __ | __ __     __ __ | __ __     __ __ | __ __   __ __ | \   '
        puts '                                             /  |                 |                 |                 |               |  \  '
        puts '                                                |                 |                 |                 |               |     '
        puts '                                               / \               / \               / \               / \             / \    '
        puts '                                              /   \             /   \             /   \             /   \           /   \   '
        puts '                                             /     \           /     \           /     \           /     \         /     \  '
        puts '                                        ------------------------------------------------------------------------------------'
    end
end

