class Pirate
    attr_accessor :name, :height, :weight, :ships
    @@all = []
    
    def initialize(params)
        @name = params[:name]
        @height = params[:height]
        @weight = params[:weight]
        @ships = []
        @@all << self
    end
    
    def self.all
        @@all
    end
    
end