class Ship

  attr_accessor :name, :type, :booty

  @@all = []

  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]
    @@all << self
  end


  # def initialize(attributes)
  #   attributes.each {|key, value| self.send("#{key}=", value)}
  # end


  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

end
