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
