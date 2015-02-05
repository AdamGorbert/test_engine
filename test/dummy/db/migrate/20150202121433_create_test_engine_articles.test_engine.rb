# This migration comes from test_engine (originally 20150202084648)
class CreateTestEngineArticles < ActiveRecord::Migration
  def change
    create_table :test_engine_articles do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
