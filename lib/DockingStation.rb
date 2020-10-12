class DockingStation

    attr_reader :bikes

    def initialize
        @bikes = []
    end
    
    def release_bike()
        return Bike.new()
    end

    def dock(bike)

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