class Pirate

  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(args)
    @name = args[:name]
    @weight = args[:weight]
    @height = args[:height]
    @@all << self
  end

  # def initialize(attributes)
  #   attributes.each {|key, value| self.send("#{key}=", value)}
  # end


  def self.all
    @@all
  end

end
