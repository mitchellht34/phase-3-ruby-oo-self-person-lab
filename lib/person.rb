# your code goes here
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize name
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        if value < 0
            value = 0
        elsif value > 10
            value = 10
        end
        @happiness = value
    end
    
    def hygiene=(value)
        if value < 0
            value = 0
        elsif value > 10
            value = 10
        end
        @hygiene = value
    end

    def clean?
        self.hygiene > 7 ? true : false
    end
    
    def happy?
        self.happiness > 7 ? true : false
    end

    def get_paid(amount)
        self.bank_account += amount
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
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            response = ["partisan", "lobbyist"]
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            response = ["sun", "rain"]
        else
            response = ["blah", "blah"]
        end

        "blah blah #{response[0]} blah #{response[1]}"
    end
end