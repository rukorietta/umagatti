class RaceResult < ApplicationRecord
  validates :race_date, :horse_name, :position, :jockey_name, :race_name, presence: true

  def self.distinct_horse_names
    pluck(:horse_name).uniq
  end
  
  def self.win_percentage
    total_races = RaceResult.count
    win_count = RaceResult.where(position: 1).count

    return 0 if total_races.zero?

    (win_count.to_f / total_races) * 100
  end
  
  def self.horse_wins
    select('horse_name, COUNT(*) as wins')
      .where(position: 1)
      .group(:horse_name)
  end

  def self.race_results_count(horse_name)
    where(horse_name: horse_name).count
  end

end