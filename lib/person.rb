require 'pry'
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness
def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8 
end

def bank_account
    @bank_account
end

def happiness=(num)
    if num > 10
        @happiness = 10
    elsif num < 0
        @happiness = 0
    else 
        @happiness = num 
    end
    # binding.pry
end

def hygiene=(num)
        if num > 10
        @hygiene = 10
    elsif num < 0
        @hygiene = 0
    else 
        # binding.pry
        @hygiene = num 
    end
end
def hygiene
    @hygiene
end

def happy?
    if @happiness > 7
        true
    else
        false
    end

end

def clean?
    if @hygiene > 7
        true
    else
        false
    end
  end
  
  def get_paid(salary)
      @bank_account += salary
       "all about the benjamins"
  end

  def take_bath
    
    self.hygiene=(@hygiene+4)
   "♪ Rub-a-dub just relaxing in the tub ♫"
    end

def work_out
    self.hygiene=(@hygiene-3)
    self.happiness=(@happiness+2)
    "♪ another one bites the dust ♫"
end

def call_friend(friend)
    
    self.happiness+=3
    friend.happiness+=3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
    
end

def start_conversation(friend, topic)
    if topic == "politics" 
       self.happiness-=2
       friend.happiness-=2 
       "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        self.happiness+=1
        friend.happiness+=1
        "blah blah sun blah rain"
    else
        "blah blah blah blah blah"
    end
end


end
