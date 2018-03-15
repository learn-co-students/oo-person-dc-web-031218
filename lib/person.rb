# your code goes here
require "pry"

class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def hygiene=(num)
    @hygiene = num

    if  @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
    @hygiene
  end

  def happiness=(num)
    @happiness = num

    if  @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end

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
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
      self.hygiene -= 3
      self.happiness += 2
      "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
      self.happiness += 3
      friend.happiness += 3
      if self.name == "Stella" && friend.name == "Felix"
        "Hi Felix! It's Stella. How are you?"
      end
      "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
          person.happiness -= 2
          self.happiness -= 2
          "blah blah partisan blah lobbyist"
        elsif topic == "weather"
          person.happiness += 1
          self.happiness += 1
          "blah blah sun blah rain"
        else
          "blah blah blah blah blah"
        end
    end
end
