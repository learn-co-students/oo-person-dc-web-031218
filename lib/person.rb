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

	def happiness=(val)
		@happiness = val
		if @happiness > 10
			@happiness = 10
		elsif @happiness < 0
			@happiness = 0
		end
	end

	def hygiene=(val)
		@hygiene = val
		# if @hygiene > 10
		# 	@hygiene = 10
		# elsif @hygiene < 0
		# 	@hygiene = 0
		# end
		@hygiene > 10 ? @hygiene = 10 : @hygiene
		@hygiene < 0? @hygiene = 0 : @hygiene

	end


	def happy?
		self.happiness > 7
	end

	def clean?
		self.hygiene > 7
	end

	def get_paid(salary)
		self.bank_account += salary
		salary >= 100 ? "all about the benjamins" : self.bank_account
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

	def call_friend(le_friend)
		self.happiness += 3
		le_friend.happiness += 3
		"Hi #{le_friend.name}! It's #{self.name}. How are you?"
	end 


	def start_conversation(person, topic)

		if topic == "politics"
			self.happiness -= 2
			person.happiness -= 2
			return "blah blah partisan blah lobbyist"
		elsif topic == "weather"
			self.happiness += 1
			person.happiness +=1
			return "blah blah sun blah rain"
		else 
			"blah blah blah blah blah"
		end
	end
end