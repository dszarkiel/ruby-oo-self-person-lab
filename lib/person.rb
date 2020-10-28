require 'pry'
class Person

    def initialize(name, balance=25, happiness=8, hygiene=8)
        @name = name 
        @balance = balance
        @happiness = happiness
        @hygiene = hygiene

    end

    def name
        @name
    end

    def bank_account
        @balance
    end

    def bank_account=(new_balance)
        @balance = new_balance
    end

    def happiness
        @happiness
    end

    def happiness=(new_index)
        if new_index >= 10
            new_index = 10
        elsif new_index < 0
            new_index = 0
        end
        @happiness = new_index
    end

    def hygiene
        @hygiene
    end

    def hygiene=(new_hygiene)
        if new_hygiene >= 10
            new_hygiene = 10
        elsif new_hygiene < 0
            new_hygiene = 0
        end
        @hygiene = new_hygiene
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @balance = bank_account + salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend_name)
        self.happiness += 3
        friend_name.happiness += 3
        "Hi #{friend_name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(convo_person, topic)
        if topic == 'politics'
            self.happiness -= 2
            convo_person.happiness -= 2
            "blah blah partisan blah lobbyist"
            elsif topic == 'weather'
                self.happiness += 1
            convo_person.happiness += 1
                "blah blah sun blah rain"
            else
                "blah blah blah blah blah"
        end
    end
end   