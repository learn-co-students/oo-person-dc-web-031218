class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @hygiene = 8
    @happiness = 8
  end

  def clean?
    self.hygiene > 7
  end

  def happy?
    self.happiness > 7
  end

  def hygiene=(num)
    @hygiene = num

    if(@hygiene > 10)
      @hygiene = 10
    elsif(@hygiene < 0)
      @hygiene = 0
    end
  end

  def happiness=(num)
    @happiness = num

    if(@happiness > 10)
      @happiness = 10
    elsif(@happiness < 0)
      @happiness = 0
    end
  end

  def take_bath
    self.hygiene += 4#need to make sure it doesn't exceed 10
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -=3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    person.happiness += 3
    self.happiness += 3

    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)

    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end

  end

  def get_paid(salary)
    self.bank_account += salary
    "all about the benjamins"
  end



end #end Person
