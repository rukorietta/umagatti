class RaceStatsController < ApplicationController
  def win_percentage
    @percentage = RaceResult.win_percentage
    @race_result = RaceResult.new
    @race_results = RaceResult.all.order(race_date: :desc)
    @horse_names = RaceResult.distinct_horse_names
  
    @horse_wins = RaceResult.distinct_horse_names.map do |horse_name|
      wins = RaceResult.where(horse_name: horse_name, position: 1).count
      race_results_count = RaceResult.race_results_count(horse_name)
      win_percentage = race_results_count > 0 ? wins.to_f / race_results_count * 100 : 0
  
      OpenStruct.new(horse_name: horse_name, wins: wins, race_results_count: race_results_count, win_percentage: win_percentage)
    end
  end

  def save_data
    @race_result = RaceResult.new(race_params)
    @race_result.jockey_name = params[:race_result][:jockey_name]
    @race_result.race_name = params[:race_result][:race_name]

    if @race_result.save
      redirect_to race_stats_win_percentage_path, notice: 'データが保存されました。'
    else
      flash.now[:alert] = 'データの保存に失敗しました。'
      @percentage = RaceResult.win_percentage
      @race_results = RaceResult.all.order(race_date: :desc)
      @horse_names = RaceResult.distinct_horse_names
      render :win_percentage
    end
  end

  def delete_data
    race_result = RaceResult.find(params[:id])
    race_result.destroy
    redirect_to race_stats_win_percentage_path, notice: 'データが削除されました。'
  end

  private

  def race_params
    params.require(:race_result).permit(:race_date, :horse_name, :position, :jockey_name, :race_name)
  end
end