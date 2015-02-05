module TestEngine
  class LearningJourney < ActiveRecord::Base
	  has_many :sessions
	  has_many :program_modules
	  has_many :durations
  end
end
