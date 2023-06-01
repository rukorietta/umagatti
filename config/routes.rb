Rails.application.routes.draw do
  get 'race_stats/win_percentage', to: 'race_stats#win_percentage'
  root to: 'race_stats#win_percentage'  # ルートを勝率表示に設定
  post 'race_stats/save_data', to: 'race_stats#save_data', as: 'race_stats_save_data'
  delete 'race_stats/delete_data/:id', to: 'race_stats#delete_data', as: 'race_stats_delete_data'
end