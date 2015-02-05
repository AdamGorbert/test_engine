module TestEngine
  class Duration < ActiveRecord::Base
    belongs_to :learning_journey
    belongs_to :session
  end
end
