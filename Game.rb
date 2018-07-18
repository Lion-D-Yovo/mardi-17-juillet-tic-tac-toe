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
