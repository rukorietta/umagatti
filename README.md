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
<div class="mxgraph" style="max-width:100%;border:1px solid transparent;" data-mxgraph="{&quot;highlight&quot;:&quot;#0000ff&quot;,&quot;nav&quot;:true,&quot;resize&quot;:true,&quot;toolbar&quot;:&quot;zoom layers tags lightbox&quot;,&quot;edit&quot;:&quot;_blank&quot;,&quot;xml&quot;:&quot;&lt;mxfile&gt;&lt;diagram id=\&quot;BtI4fsro8sdW8b-vxdlj\&quot; name=\&quot;ページ1\&quot;&gt;&lt;mxGraphModel dx=\&quot;667\&quot; dy=\&quot;641\&quot; grid=\&quot;1\&quot; gridSize=\&quot;10\&quot; guides=\&quot;1\&quot; tooltips=\&quot;1\&quot; connect=\&quot;1\&quot; arrows=\&quot;1\&quot; fold=\&quot;1\&quot; page=\&quot;1\&quot; pageScale=\&quot;1\&quot; pageWidth=\&quot;827\&quot; pageHeight=\&quot;1169\&quot; math=\&quot;0\&quot; shadow=\&quot;0\&quot;&gt;&lt;root&gt;&lt;mxCell id=\&quot;0\&quot;/&gt;&lt;mxCell id=\&quot;1\&quot; parent=\&quot;0\&quot;/&gt;&lt;mxCell id=\&quot;6\&quot; value=\&quot;一覧ページ\&quot; style=\&quot;rounded=1;whiteSpace=wrap;html=1;\&quot; vertex=\&quot;1\&quot; parent=\&quot;1\&quot;&gt;&lt;mxGeometry x=\&quot;120\&quot; y=\&quot;80\&quot; width=\&quot;120\&quot; height=\&quot;40\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;7\&quot; value=\&quot;馬の詳細ページ\&quot; style=\&quot;rounded=1;whiteSpace=wrap;html=1;\&quot; vertex=\&quot;1\&quot; parent=\&quot;1\&quot;&gt;&lt;mxGeometry x=\&quot;320\&quot; y=\&quot;80\&quot; width=\&quot;120\&quot; height=\&quot;40\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;8\&quot; value=\&quot;騎手の詳細ページ\&quot; style=\&quot;rounded=1;whiteSpace=wrap;html=1;\&quot; vertex=\&quot;1\&quot; parent=\&quot;1\&quot;&gt;&lt;mxGeometry x=\&quot;320\&quot; y=\&quot;160\&quot; width=\&quot;120\&quot; height=\&quot;40\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;10\&quot; value=\&quot;\&quot; style=\&quot;endArrow=none;html=1;entryX=0;entryY=0.5;entryDx=0;entryDy=0;\&quot; edge=\&quot;1\&quot; parent=\&quot;1\&quot; target=\&quot;7\&quot;&gt;&lt;mxGeometry width=\&quot;50\&quot; height=\&quot;50\&quot; relative=\&quot;1\&quot; as=\&quot;geometry\&quot;&gt;&lt;mxPoint x=\&quot;240\&quot; y=\&quot;99.5\&quot; as=\&quot;sourcePoint\&quot;/&gt;&lt;mxPoint x=\&quot;290\&quot; y=\&quot;99.5\&quot; as=\&quot;targetPoint\&quot;/&gt;&lt;Array as=\&quot;points\&quot;&gt;&lt;mxPoint x=\&quot;280\&quot; y=\&quot;100\&quot;/&gt;&lt;/Array&gt;&lt;/mxGeometry&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;11\&quot; value=\&quot;\&quot; style=\&quot;endArrow=none;html=1;\&quot; edge=\&quot;1\&quot; parent=\&quot;1\&quot;&gt;&lt;mxGeometry width=\&quot;50\&quot; height=\&quot;50\&quot; relative=\&quot;1\&quot; as=\&quot;geometry\&quot;&gt;&lt;mxPoint x=\&quot;280\&quot; y=\&quot;180\&quot; as=\&quot;sourcePoint\&quot;/&gt;&lt;mxPoint x=\&quot;280\&quot; y=\&quot;100\&quot; as=\&quot;targetPoint\&quot;/&gt;&lt;/mxGeometry&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;12\&quot; value=\&quot;\&quot; style=\&quot;endArrow=none;html=1;\&quot; edge=\&quot;1\&quot; parent=\&quot;1\&quot;&gt;&lt;mxGeometry width=\&quot;50\&quot; height=\&quot;50\&quot; relative=\&quot;1\&quot; as=\&quot;geometry\&quot;&gt;&lt;mxPoint x=\&quot;280\&quot; y=\&quot;180\&quot; as=\&quot;sourcePoint\&quot;/&gt;&lt;mxPoint x=\&quot;320\&quot; y=\&quot;179.5\&quot; as=\&quot;targetPoint\&quot;/&gt;&lt;/mxGeometry&gt;&lt;/mxCell&gt;&lt;/root&gt;&lt;/mxGraphModel&gt;&lt;/diagram&gt;&lt;/mxfile&gt;&quot;}"></div>
<script type="text/javascript" src="https://viewer.diagrams.net/js/viewer-static.min.js"></script>
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