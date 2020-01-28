#################################
#DESAFIO TERMINADO
#################################


class Carta
    attr_reader :numero, :color

    def initialize
        @numero = rand(1..13)
        @color =  ['T','C','D','E'].sample
    end

    def reveal
        "#{@numero}-#{@color}"
    end
end


class Play 
    attr_accessor :play, :nombre

    def initialize(nombre)
        @nombre = nombre
        @play = []
        5.times do
            @play << Carta.new.reveal
        end
    end
end

   
##################################
#EN LA TERMINAL LO SIGUIENTE:
# irb
# require_relative 'carta'
# carta = Carta.new
# carta.reveal

# hand = Play.new('hand_2')
# hand.play
###################################