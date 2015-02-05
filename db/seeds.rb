
learning_journey = TestEngine::LearningJourney.create


fs1 = TestEngine::FixedSession.create :learning_journey => learning_journey, :ordinal => 1

TestEngine::Session.create :learning_journey => learning_journey, :ordinal => 2
TestEngine::Session.create :learning_journey => learning_journey, :ordinal => 3
TestEngine::Session.create :learning_journey => learning_journey, :ordinal => 4

fs2 = TestEngine::FixedSession.create :learning_journey => learning_journey, :ordinal => 5


5.times do |index|
  TestEngine::ProgramModule.create :learning_journey => learning_journey, :title => "Module #{index}", :description => "description for module #{index}"
end


c1 = TestEngine::Call.create :learning_journey => learning_journey,  :minutes => 30
TestEngine::Call.create :learning_journey => learning_journey,  :minutes => 60
ftf1 = TestEngine::FaceToFace.create :learning_journey => learning_journey,  :minutes => 90
TestEngine::FaceToFace.create :learning_journey => learning_journey,  :minutes => 120
TestEngine::Call.create :learning_journey => learning_journey,  :minutes => 120

fs1.duration = c1
fs1.program_module_id = TestEngine::ProgramModule.first.id
fs1.save
fs2.duration = ftf1
fs2.program_module_id = TestEngine::ProgramModule.first.id
fs2.save