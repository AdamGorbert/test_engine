module TestEngine
	class FixedSession < Session
	  def up
	    raise "Cannot move fixed session!"
	  end
	  def down
	    raise "Cannot move fixed session!"
	  end
	end
end