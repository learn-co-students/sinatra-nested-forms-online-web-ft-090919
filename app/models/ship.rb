class Ship

    attr_reader :name, :type, :booty

    @@ships = []

    def initialize(param)
        @name = param[:name]
        @type = param[:type]
        @booty = param[:booty]
        @@ships << self
    end

    def self.all
        @@ships 
    end

    def self.clear
        @@ships = []
    end

end