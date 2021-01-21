class Person 

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name) 
        @name = name 
        @bank_account = 25 
        @happiness = 8
        @hygiene = 8

    end

    def happiness
        @happiness = 0 if @happiness < 0 
        @happiness = 10 if @happiness > 10
        @happiness 
    end

    def hygiene 
        @hygiene = 0 if @hygiene < 0
        @hygiene = 10 if @hygiene > 10
        @hygiene
    end

    def clean? 
        @hygiene > 7
    end
    
    def happy? 
        @happiness > 7 
    end 

    def get_paid(balance) 
        @bank_account += balance 
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
    
    def call_friend(frd)
        self.happiness +=3
        frd.happiness += 3 
        "Hi #{frd.name}! It's #{@name}. How are you?"
    end 
    

    def start_conversation(frd, topic)
        if topic == "politics"
            self.happiness -= 2
            frd.happiness -= 2
            "blah blah partisan blah lobbyist"
        
        elsif topic == "weather" 
            self.happiness += 1 
            frd.happiness += 1
            "blah blah sun blah rain"

        else 
            "blah blah blah blah blah"
        end 
    end


end
