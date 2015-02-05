# This migration comes from test_engine (originally 20150202103304)
class CreateTestEngineLearningJourneys < ActiveRecord::Migration
  def change
    create_table :test_engine_learning_journeys do |t|

      t.timestamps
    end
  end
end
