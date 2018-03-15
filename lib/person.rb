class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name, bank_account= 25, happiness= 8, hygiene= 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness= (happy)
    @happiness = happy
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
  end

  def hygiene= (hygiene)
    @hygiene = hygiene
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
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
    cleaner(4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    less_cleaner(3)
    more_happy(2)
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    more_happy(3)
    person.more_happy(3)
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == 'politics'
      less_happy(2)
      person.less_happy(2)
      'blah blah partisan blah lobbyist'
    elsif topic == 'weather'
      more_happy(1)
      person.more_happy(1)
      'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end
  end

  def more_happy(more_happiness)
    self.happiness = self.happiness + more_happiness
  end

  def less_happy(less_happiness)
    self.happiness = self.happiness - less_happiness
  end

  def cleaner(more_clean)
    self.hygiene = self.hygiene + more_clean
  end

  def less_cleaner(less_clean)
    self.hygiene = self.hygiene - less_clean
  end
end
