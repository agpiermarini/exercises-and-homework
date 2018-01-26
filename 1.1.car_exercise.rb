require "pry"

class Car
    attr_accessor   :make,              #both attr_reader and attr_writer
                    :model,
                    :color,
                    :odometer,
                    :running

    def initialize(make, model)
        @make = make
        @model = model
        @color = "white"
        @odometer = 0
        @running = false
    end

    def paint(new_color)
        @color = new_color
    end

    def horn
        return "BEEEEP!"
    end

    def drive(distance)
        @odometer += distance
        return "I'm driving #{distance} miles."
    end

    def start
        if @running == false    # if car is off
            @running = true    # car turned on
            return "Starting up!"
        else
            return "BZT! Nice try, though."
        end
    end
end

vehicle_1 = Car.new("Mazda", "3")

binding.pry

p "Vehicle 1: #{vehicle_1}"



#READER METHOD
#def color          # must define methods for each of the attributes, but attr_reader does this for you
#    return @color  # this is an explicit return, not necessary to put return though
#end

#WRITER METHOD
#def make=(make)         # this allows you to run vehicle_1.color = "new color", which evaluates to vehicle_1.color=("new color")
                        # that is, it is calling the .color= method
#    @make = make
#end
