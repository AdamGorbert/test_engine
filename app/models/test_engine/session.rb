module TestEngine
  class Session < ActiveRecord::Base
	  belongs_to :learning_journey
	  has_one :duration

	  def program_module
	    begin
	      ProgramModule.find(self.program_module_id)
	    rescue ActiveRecord::RecordNotFound
	    end
	  end

	  
	  alias_attribute :bookable?, :duration

	  def bookable?
	    if self.duration
	      return self.duration.type == "TestEngine::Call"
	    else
	      return false
	    end
	  end

	  def up
	    self.ordinal-=1
	    self.save
	  end

	  def down

	    self.ordinal+=1
	    self.save
	  end


	  def up?
	    return false if self.is_a? FixedSession
	    !learning_journey.sessions.order(:ordinal).first.id == self.id
	  end

	  def down?
	    return false if self.is_a? FixedSession
	    !learning_journey.sessions.order(:ordinal).last.id == self.id
	  end

	  def move direction
	    if direction == :down

	      session_below = (Session.find_by ordinal: (self.ordinal+1),learning_journey: self.learning_journey)
	      session_below.up

	      self.down

	    else

	      session_above = (Session.find_by ordinal: (self.ordinal-1),learning_journey: self.learning_journey)
	      session_above.down
	      self.up
	    end

	  end
  end
end
