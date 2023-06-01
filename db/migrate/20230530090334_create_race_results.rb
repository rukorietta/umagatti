class CreateRaceResults < ActiveRecord::Migration[6.0]
  def change
    create_table :race_results do |t|
      # カラム定義
      t.date :race_date
      t.string :horse_name
      t.integer :position
      t.string :jockey_name
      t.string :race_name

      t.timestamps
    end
  end
end