Rails.application.routes.draw do
  devise_for :users
  get '/race_stats/win_percentage', to: 'race_stats#win_percentage', as: 'race_stats_win_percentage'
  root to: 'race_stats#win_percentage'  # ルートを勝率表示に設定
  post 'race_stats/save_data', to: 'race_stats#save_data', as: 'race_stats_save_data'
  delete 'race_stats/delete_data/:id', to: 'race_stats#delete_data', as: 'race_stats_delete_data'
  get '/race_stats/show_horse_data/:horse_name', to: 'race_stats#show_horse_data', as: 'race_stats_show_horse_data'
  get '/race_stats/show_jockey_data', to: 'race_stats#show_jockey_data', as: 'race_stats_show_jockey_data'
  resources :tweets, only: [:show]
end