class Ship

    attr_accessor :name, :type, :booty

    @@all = []

    def initialize(name, type, booty)
        @name = name
        @type = type
        @booty = booty
        @@all << self
    end

    def self.from_params(params)
        self.new(params[:name], params[:type], params[:booty])
    end

    def self.all
        @@all
    end

    def self.clear
        @@all = []
    end

end