# your code goes here
class Person
	attr_reader :name
	attr_accessor :bank_account, :happiness, :hygiene

	def initialize(name)
		@name = name 
		@bank_balance = 25
		@happiness = 8
		@hygiene = 8
	end

	def bank_account
		@bank_balance
	end

	def happiness
		if @happiness > 10
			@happiness = 10
			return @happiness
		elsif @happiness < 0
			@happiness = 0
			return @happiness
		end
		@happiness
	end

	def hygiene=(hygiene)
		@hygiene = hygiene
	end

	def hygiene
		if @hygiene > 10
			@hygiene = 10
			return @hygiene
		elsif @hygiene < 0
			@hygiene = 0
			return @hygiene
		else
			return @hygiene
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
		@bank_balance += salary 
		return "all about the benjamins" 
	end

	def take_bath
		new_hygiene = self.hygiene += 4
		new_hygiene
		return "♪ Rub-a-dub just relaxing in the tub ♫"
	end


	def work_out
		new_happiness = self.happiness += 2
		new_hygiene = self.hygiene -= 3
		return "♪ another one bites the dust ♫"
	end

	def call_friend(friend)
		#person calling = happiness += 3
		new_happiness = self.happiness += 3
		#make friend called = happiness += 3
		friend_new_happiness = friend.happiness += 3
		#never make either happiness > 10
		#
		return "Hi #{friend.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(person_start_convo_with, topic)
		if topic == "politics"
			new_happiness = self.happiness -= 2
			new_person_start_convo_with_new_happiness = person_start_convo_with.happiness -= 2
			return "blah blah partisan blah lobbyist"
		elsif topic == "weather"
			new_happiness = self.happiness += 1
			new_person_start_convo_with_new_happiness = person_start_convo_with.happiness += 1
			return 'blah blah sun blah rain'
		else
			return 'blah blah blah blah blah'
		end
	end	
end
