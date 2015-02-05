# This migration comes from test_engine (originally 20150202104944)
class CreateTestEngineSessions < ActiveRecord::Migration
  def change
    create_table :test_engine_sessions do |t|
      t.string :workflow_state
      t.integer :ordinal
      t.string :type
      t.boolean :has_duration
      t.boolean :has_module
      t.references :program_module, index: true
      t.references :duration, index: true
      t.references :learning_journey, index: true

      t.timestamps
    end
  end
end
