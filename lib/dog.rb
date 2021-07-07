require 'pry'
class Dog
    attr_accessor :name

    @@all = []
   def initialize(name)
    @name = name
    save
   end

   def self.all
    @@all
   end

   def self.clear_all
    @@all.clear
   end

   def self.print_all
    dogs = @@all.map {|dog| dog.name}
    dog_string = dogs.join("\n")
    puts dog_string
end


    def save
        @@all << self
    end
end
# Dog.print_all

# binding.pry

# Dog.new("Pluto")
# Dog.new("Fido")
# Dog.new("Maddy")