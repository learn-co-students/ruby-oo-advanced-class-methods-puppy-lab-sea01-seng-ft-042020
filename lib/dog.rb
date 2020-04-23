class Dog
    attr_accessor :name

    @@all=[]

    def initialize(name) 
        @name = name
        save
    end

    def self.all
        @@all
    end

    def self.clear_all
        all.clear
    end

    def self.print_all
        all.each {|dog_instance| puts dog_instance.name}
    end

    def save
        @@all.push(self)
    end
end
