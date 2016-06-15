class Person
	attr_accessor :bank_account
	attr_reader :name
	attr_writer

	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end



	def happiness=(num)
		if @happiness > 10 
			@happiness = 10 
		elsif @happiness < 0 
			@happiness = 0
		else
			@happiness = num
		end
	end

	def hygiene=(num)
		if @hygiene > 10 
			@hygiene = 10 
		elsif @hygiene < 0 
			@hygiene = 0
		else
			@hygiene = num
		end
	end

	def hygiene
		normalize(@hygiene)
	end

	def happiness
		normalize(@happiness)
	end

	def normalize(attribute)
		if attribute > 10 
			attribute = 10 
		elsif attribute < 0 
			attribute = 0
		else
			attribute 
		end
	end

	#####################


	def happy?
		self.happiness > 7 ? true : false
	end

	def clean?
		self.hygiene > 7 ? true : false
	end

	def get_paid(amount)
		@bank_account += amount
		return 'all about the benjamins'
	end

	def take_bath
		self.hygiene += 4
		return "♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
     self.hygiene -= 3
     self.happiness += 2
     return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
  	self.happiness += 3
  	friend.happiness += 3
  	return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
  	if topic.eql?("politics")
  		political_talk(self, friend)
  	elsif topic.eql?("weather")
  		weather_talk(self, friend)
  	else
  		other_talk
  	end

  end

  def political_talk(person1, person2)
  	person1.happiness -= 2
  	person2.happiness -= 2
        
    return 'blah blah partisan blah lobbyist'
  end

  def weather_talk(person1, person2)
  	person1.happiness += 1
  	person2.happiness += 1
        
    return 'blah blah sun blah rain'
  end

  def other_talk
  	return 'blah blah blah blah blah'
  end

end














