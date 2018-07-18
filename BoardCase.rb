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
