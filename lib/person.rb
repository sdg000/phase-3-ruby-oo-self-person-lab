require "pry"
class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25.00
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        max = 10
        min = 0
        @happiness = 
            if value > max
                max
        elsif value < min
            min
        else
            value
        end
        #ALTERNATIVELY: Clam: values less than 0 are overidden by zero, more than 10 => overidden by 10
        #@happiness = value.clamp(0, 10)
    end

    def hygiene=(value)
        @hygiene = value.clamp(0, 10)
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid(amt)
        @bank_account += amt
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = @happiness + 2
        self.hygiene = @hygiene - 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        # friend = Person.new(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"

        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end

    end
end
sam = Person.new("sam")
# binding.pry