class Board
    include Enumerable
    #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases
    attr_accessor :tab

    def initialize (tab = [])
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
        @tab=tab
        9.times do |i|
        tab<<BoardCase.new("", i)
            i += 1
        end
    end

    def show_board
        #to_s
        #TO DO : afficher le plateau
        puts "    1   2   3"
        puts "A  #{tab[0]}  | #{tab[1]}  | #{tab[2]} " 
        puts "  ---|---|---"
        puts "B  #{tab[3]}  | #{tab[4]}  |#{tab[5]} "
        puts "  ---|---|---"
        puts "C  #{tab[6]}  | #{tab[7]}  | #{tab[8]} "
        puts
    end

    def play
        #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
        tab[0].value=Player.team
    end

    def victory?
        #TO DO : qui gagne ?
        [[0, 1, 2],
        [0, 4, 8],
        [0, 3, 6],
        [3, 4, 5],
        [6, 7, 8],
        [6, 4, 2],
        [1, 4, 7],
        [2, 5, 8]]

    check_for_winner
    end
    
    def check_for_winner 
        win_combos.each do |combos| 
            if combos[0] == "O" && combos[1] == "O" && combos[2] == "O"
            puts "Player2 wins! Good job!"
            exit 
            elsif combos[0] == "X" && combos[1] == "X" && combos[2] == "X"
            puts "Player1 wins! Good job!"
            exit
            #else
            #puts "Tie! Enter q to quit game."
            end
        end
    
    end
end


