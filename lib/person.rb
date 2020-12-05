class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene, :topic

    def initialize(new_name)
        @name = new_name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness
        @happiness = 0 if @happiness < 0
        @happiness = 10 if @happiness >10
        @happiness
    end

    def hygiene
        @hygiene = 0 if @hygiene < 0
        @hygiene = 10 if @hygiene >10
        @hygiene
    end

    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic.downcase == "politics"
            person.happiness -= 2
            self.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif topic.downcase == "weather"
            person.happiness += 1
            self.happiness += 1
            'blah blah sun blah rain'
        else topic.downcase
            'blah blah blah blah blah'
        end
    end






end
