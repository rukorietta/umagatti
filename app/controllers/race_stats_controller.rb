class RaceStatsController < ApplicationController
  before_action :authenticate_user!, only: [:save_data]

  def win_percentage
    @percentage = RaceResult.win_percentage
    @race_result = RaceResult.new
    @race_results = RaceResult.all.order(race_date: :desc)
    @horse_names = RaceResult.distinct_horse_names
    @jockey_names = RaceResult.distinct.pluck(:jockey_name) 
  
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
      @percentage = RaceResult.win_percentage
      @race_results = RaceResult.all.order(race_date: :desc)
      @horse_names = RaceResult.distinct_horse_names
      @jockey_names = RaceResult.distinct.pluck(:jockey_name)
      @horse_wins = RaceResult.distinct_horse_names.map do |horse_name|
        wins = RaceResult.where(horse_name: horse_name, position: 1).count
        race_results_count = RaceResult.race_results_count(horse_name)
        win_percentage = race_results_count > 0 ? wins.to_f / race_results_count * 100 : 0
    
        OpenStruct.new(horse_name: horse_name, wins: wins, race_results_count: race_results_count, win_percentage: win_percentage)
      end
    
      return render :win_percentage
    end
  end

  def delete_data
    race_result = RaceResult.find(params[:id])
    race_result.destroy
    redirect_to race_stats_win_percentage_path, notice: 'データが削除されました。'
  end

  def show_horse_data
    @horse_name = params[:horse_name]
    @horse_results = RaceResult.where(horse_name: @horse_name)

    @horse_names = RaceResult.distinct.pluck(:horse_name)
    @jockey_names = RaceResult.distinct.pluck(:jockey_name)
  end

  def show_jockey_data
    @jockey_name = params[:jockey_name]
    @jockey_results = RaceResult.where(jockey_name: @jockey_name)
    # その他の処理...

    @horse_names = RaceResult.distinct.pluck(:horse_name)
    @jockey_names = RaceResult.distinct.pluck(:jockey_name)

    render :show_jockey_data
  end

  

  private

  def race_params
    params.require(:race_result).permit(:race_date, :horse_name, :position, :jockey_name, :race_name)
  end
end