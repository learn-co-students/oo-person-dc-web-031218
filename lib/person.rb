# your code goes here

class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(points)
    @happiness = points
    if self.happiness > 10
      self.happiness = 10
    elsif self.happiness < 0
      self.happiness = 0
    end
  end

  def hygiene=(hygiene_points)
    @hygiene = hygiene_points
    if self.hygiene > 10
      self.hygiene = 10
    elsif self.hygiene < 0
      self.hygiene = 0
    end
  end

  def clean?
    self.hygiene > 7
  end

  def happy?
    self.happiness > 7
  end

  def get_paid(salary)
    self.bank_account = self.bank_account + salary
    'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4
    return '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    self.hygiene -= 3
    self.more_happy(2)
    '♪ another one bites the dust ♫'
  end

  def call_friend(person)
    self.more_happy(3)
    person.more_happy(3)
    "Hi #{person.name}! It\'s #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == 'politics'
      self.less_happy(2)
      person.less_happy(2)
      'blah blah partisan blah lobbyist'
    elsif topic == 'weather'
      self.more_happy(1)
      person.more_happy(1)
      'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end
  end

  def more_happy(happiness_points)
    self.happiness = self.happiness + happiness_points
  end

  def less_happy(happiness_points)
    self.happiness = self.happiness - happiness_points
  end
end
