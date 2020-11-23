# your code goes here
class Person

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(setting) 
        if setting > 10 
            @happiness = 10
        elsif setting < 0
           @happiness = 0
        else
            @happiness = setting
        end
    end

    def hygiene=(setting)
        if setting > 10 
            @hygiene = 10
        elsif setting < 0
            @hygiene = 0
        else
            @hygiene = setting
        end
    end




    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def get_paid(salary)
        @bank_account += salary

        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
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