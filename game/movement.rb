# frozen_string_literal: true

require './game/vector'

# Serves as a 'vector' that goes from one position to the other
class Movement
    include Vector
    attr_reader :x, :y

    def initialize(x, y)
        @x = x
        @y = y
    end

    def inspect
        "In direction:  X: #{x}, Y: #{y}"
    end

    def self.from_a(array)
        Movement.new array[0], array[1]
    end

    def self.from_positions(position, position2)
        Movement.from_a position2 - position
    end
end
