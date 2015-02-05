# This migration comes from test_engine (originally 20150202105455)
class CreateTestEngineProgramModules < ActiveRecord::Migration
  def change
    create_table :test_engine_program_modules do |t|
      t.string :title
      t.text :description
      t.references :learning_journey, index: true
      t.references :session, index: true

      t.timestamps
    end
  end
end
