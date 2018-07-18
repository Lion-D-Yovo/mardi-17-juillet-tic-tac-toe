require "pry"

class BoardCase
    #TO DO : la classe a 2 attr_accessor, 
    # sa valeur (X, O, ou vide), ainsi que son numéro de case)
    attr_accessor :value, :position
    
    def initialize (value, position)
    #TO DO doit régler sa valeur, ainsi que son numéro de case
        @value = value
        @position = position
    end
    
    def to_s
        self.value
    end
end


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

class Player
    #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
    attr_accessor :name, :team
    #attr_writer

    def initialize(name, team)
    #TO DO : doit régler son nom, sa valeur, son état de victoire
        @name = name
        @team = team
    end
end

class Game
    def initialize
    #TO DO : créé 2 joueurs, créé un board
        player1 = Player.new("P1", "X")
        player2 = Player.new("P2", "O")
        board = Board.new
    end

    def go
        # TO DO : lance la partie
    end

    def turn
        #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
    end

end

Board.new.show_board


#Game.new.go


binding.pry
