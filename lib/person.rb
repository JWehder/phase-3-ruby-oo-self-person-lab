# your code goes here
class Person
    attr_reader :name
    attr_reader :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account=(bank_value)
        @bank_account = bank_value
    end

    def happiness
        @happiness
    end

    def happiness=(happiness_points)
        @happiness = if (happiness_points < 0)
            0
        elsif happiness_points > 10 
            10
        else 
            happiness_points
        end
    end

    def hygiene
        @hygiene
    end

    def hygiene=(hygiene_points)
        @hygiene = if (hygiene_points < 0)
            0
        elsif hygiene_points > 10 
            10
        else 
            hygiene_points
        end
    end

    def clean?
        if self.hygiene > 7
            true
        else
            false
        end
    end

    def happy?
        if self.happiness > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
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
