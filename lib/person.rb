class Person

attr_reader :name, :happiness, :hygiene
attr_accessor :bank_account

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @hygiene = hygiene
        @happiness = happiness
        @bank_account = bank_account
        @name = name
    end

    def happiness=(happiness = 8)
        case
        when happiness < 0
            @happiness = 0
        when happiness > 10
            @happiness = 10
        else
            @happiness = happiness
        end

        # if happiness < 0
        #     @happiness = 0
        # elsif happiness > 10
        #     @happiness = 10
        # else
        #     @happiness = happiness
        # end
    end

    def hygiene=(hygiene = 8)
        case
        when hygiene < 0
            @hygiene = 0
        when hygiene > 10
            @hygiene = 10
        else
            @hygiene = hygiene
        end

        # if hygiene < 0
        #     @hygiene = 0
        # elsif hygiene > 10
        #     @hygiene = 10
        # else
        #     @hygiene = hygiene
        # end
    end

    def happy?
        return happiness > 7
    end

    def clean?
        return hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return '♪ another one bites the dust ♫'
    end

    def call_friend(person)
        calling_person = person
        calling_person.happiness += 3
        self.happiness += 3
        return "Hi #{calling_person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            return 'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end

end
