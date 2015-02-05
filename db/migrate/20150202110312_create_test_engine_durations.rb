class CreateTestEngineDurations < ActiveRecord::Migration
  def change
    create_table :test_engine_durations do |t|
      t.string :minutes
      t.string :type
      t.references :learning_journey, index: true
      t.references :session, index: true

      t.timestamps
    end
  end
end
