class CreateTestEngineArticles < ActiveRecord::Migration
  def change
    create_table :test_engine_articles do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
