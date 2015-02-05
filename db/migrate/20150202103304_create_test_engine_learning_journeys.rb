class CreateTestEngineLearningJourneys < ActiveRecord::Migration
  def change
    create_table :test_engine_learning_journeys do |t|

      t.timestamps
    end
  end
end
