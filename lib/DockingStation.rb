class DockingStation

    attr_reader :bike

    def initialize
        @bike = []
    end
    
    def release_bike()
        if @bike.empty?
            raise "There is no bikes left"
        else
            return @bike.pop
        end
    end

    def dock(bike)
        if @bike.empty?
            @bike << bike
        else
            raise "This dock is taken"
        end
    end
    
end

class Bike

    def initialize
        @working = true
    end

    def working?
        return @working
    end
end