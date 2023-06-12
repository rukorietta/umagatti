# アプリケーション名
Uma合致

# アプリケーション概要
馬の出走した情報を入力すると勝率を求めることができます。

# URL
https://umagatti.onrender.com/<br>

# Basic認証
・ID : ichikawa<br>
・パスワード : 2616<br>

# 利用方法

## データ入力
1.データ入力フォームから、内容(競争日・馬名・騎手名・レース名・着順)を入力し保存できます<br>
2.保存したらデータが保存されたデータが表示されるので、間違ってないか確認できます<br>
3.サイドメニューの馬名・騎手名の欄に保存された馬名と騎手名が被らずに表示されます<br>

## 詳細データの確認
1.馬名をクリックすると馬が出走したレースの一覧を出して、3位までの勝利数と確率をそれぞれ表示することができます<br>
2.騎手名をクリックするとその騎手が出たレースの一覧を出して、3位までの勝利数と確率をそれぞれ表示することができます<br>

# アプリケーションを作成した背景
嫁から競馬の勝率が求められるようなものが欲しいと依頼があったからです。騎手名と馬名をよく見てるということなので。そこを中心に
3位までの確率をそれぞれ出せれば、いいのではないかと思い作成に至りました。


# 洗い出した要件
https://docs.google.com/spreadsheets/d/1mFpl1dGNE48ctb-Kas-waS-m4sWmxH8r6hseakTXcAg/edit#gid=982722306<br>

# 実装予定の機能
1.ユーザー機能(ログイン・ログアウト)を追加する<br>
2.ログイン中はコメントが打てるようにする<br>

# テーブル設計

## race_results テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| race_date          | date    | null: false |
| horse_name         | string  | null: false |
| jockey_name        | string  | null: false |
| race_name          | string  | null: false |
| position           | integer | null: false |

# 画面遷移図

# 開発環境
・ソフトウェア<br>
・ハードウェア<br>
・インフラ<br>
・テキストエディッタ<br>
・テスト<br>
・タスク管理<br>

# ローカルでの動作方法
以下のコマンドを順に実行。<br>
% git clone https://github.com/rukorietta/umagatti<br>
% cd umagatti<br>
% bundle install<br>
% yarn install<br>

# 工夫したポイント
1.サイドメニューにトグルを追加することで、クリックするとメニューが開閉され、ユーザビリティを向上させます。<br>
2.リセットCSSを導入して、ブラウザのデフォルトスタイルをリセットしてます。<br>
3.ヘッダーとフッターの色を統一し、親和性を高めています。<br>
