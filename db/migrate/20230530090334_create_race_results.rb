class CreateRaceResults < ActiveRecord::Migration[6.0]
  def change
    create_table :race_results do |t|
      # カラム定義
      t.date :race_date, null: false
      t.string :horse_name, null: false
      t.integer :position, null: false
      t.string :jockey_name, null: false
      t.string :race_name, null: false

      t.timestamps
    end
  end
end 