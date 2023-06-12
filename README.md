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
<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAUsAAACDCAYAAAAEeznzAAAAAXNSR0IArs4c6QAAC410RVh0bXhmaWxlACUzQ214ZmlsZSUzRSUzQ2RpYWdyYW0lMjBpZCUzRCUyMkJ0STRmc3JvOHNkVzhiLXZ4ZGxqJTIyJTIwbmFtZSUzRCUyMiVFMyU4MyU5QSVFMyU4MyVCQyVFMyU4MiVCODElMjIlM0UlM0NteEdyYXBoTW9kZWwlMjBkeCUzRCUyMjQ3MiUyMiUyMGR5JTNEJTIyNzkyJTIyJTIwZ3JpZCUzRCUyMjElMjIlMjBncmlkU2l6ZSUzRCUyMjEwJTIyJTIwZ3VpZGVzJTNEJTIyMSUyMiUyMHRvb2x0aXBzJTNEJTIyMSUyMiUyMGNvbm5lY3QlM0QlMjIxJTIyJTIwYXJyb3dzJTNEJTIyMSUyMiUyMGZvbGQlM0QlMjIxJTIyJTIwcGFnZSUzRCUyMjElMjIlMjBwYWdlU2NhbGUlM0QlMjIxJTIyJTIwcGFnZVdpZHRoJTNEJTIyODI3JTIyJTIwcGFnZUhlaWdodCUzRCUyMjExNjklMjIlMjBtYXRoJTNEJTIyMCUyMiUyMHNoYWRvdyUzRCUyMjAlMjIlM0UlM0Nyb290JTNFJTNDbXhDZWxsJTIwaWQlM0QlMjIwJTIyJTJGJTNFJTNDbXhDZWxsJTIwaWQlM0QlMjIxJTIyJTIwcGFyZW50JTNEJTIyMCUyMiUyRiUzRSUzQ214Q2VsbCUyMGlkJTNEJTIyNiUyMiUyMHZhbHVlJTNEJTIyJUU0JUI4JTgwJUU4JUE2JUE3JUUzJTgzJTlBJUUzJTgzJUJDJUUzJTgyJUI4JTIyJTIwc3R5bGUlM0QlMjJyb3VuZGVkJTNEMSUzQndoaXRlU3BhY2UlM0R3cmFwJTNCaHRtbCUzRDElM0IlMjIlMjBwYXJlbnQlM0QlMjIxJTIyJTIwdmVydGV4JTNEJTIyMSUyMiUzRSUzQ214R2VvbWV0cnklMjB4JTNEJTIyMTIwJTIyJTIweSUzRCUyMjgwJTIyJTIwd2lkdGglM0QlMjIxMjAlMjIlMjBoZWlnaHQlM0QlMjI0MCUyMiUyMGFzJTNEJTIyZ2VvbWV0cnklMjIlMkYlM0UlM0MlMkZteENlbGwlM0UlM0NteENlbGwlMjBpZCUzRCUyMjclMjIlMjB2YWx1ZSUzRCUyMiVFOSVBNiVBQyVFMyU4MSVBRSVFOCVBOSVCMyVFNyVCNCVCMCVFMyU4MyU5QSVFMyU4MyVCQyVFMyU4MiVCOCUyMiUyMHN0eWxlJTNEJTIycm91bmRlZCUzRDElM0J3aGl0ZVNwYWNlJTNEd3JhcCUzQmh0bWwlM0QxJTNCJTIyJTIwcGFyZW50JTNEJTIyMSUyMiUyMHZlcnRleCUzRCUyMjElMjIlM0UlM0NteEdlb21ldHJ5JTIweCUzRCUyMjMyMCUyMiUyMHklM0QlMjI4MCUyMiUyMHdpZHRoJTNEJTIyMTIwJTIyJTIwaGVpZ2h0JTNEJTIyNDAlMjIlMjBhcyUzRCUyMmdlb21ldHJ5JTIyJTJGJTNFJTNDJTJGbXhDZWxsJTNFJTNDbXhDZWxsJTIwaWQlM0QlMjI4JTIyJTIwdmFsdWUlM0QlMjIlRTklQTglOEUlRTYlODklOEIlRTMlODElQUUlRTglQTklQjMlRTclQjQlQjAlRTMlODMlOUElRTMlODMlQkMlRTMlODIlQjglMjIlMjBzdHlsZSUzRCUyMnJvdW5kZWQlM0QxJTNCd2hpdGVTcGFjZSUzRHdyYXAlM0JodG1sJTNEMSUzQiUyMiUyMHBhcmVudCUzRCUyMjElMjIlMjB2ZXJ0ZXglM0QlMjIxJTIyJTNFJTNDbXhHZW9tZXRyeSUyMHglM0QlMjIzMjAlMjIlMjB5JTNEJTIyMTYwJTIyJTIwd2lkdGglM0QlMjIxMjAlMjIlMjBoZWlnaHQlM0QlMjI0MCUyMiUyMGFzJTNEJTIyZ2VvbWV0cnklMjIlMkYlM0UlM0MlMkZteENlbGwlM0UlM0NteENlbGwlMjBpZCUzRCUyMjEwJTIyJTIwdmFsdWUlM0QlMjIlMjIlMjBzdHlsZSUzRCUyMmVuZEFycm93JTNEbm9uZSUzQmh0bWwlM0QxJTNCZW50cnlYJTNEMCUzQmVudHJ5WSUzRDAuNSUzQmVudHJ5RHglM0QwJTNCZW50cnlEeSUzRDAlM0IlMjIlMjBwYXJlbnQlM0QlMjIxJTIyJTIwdGFyZ2V0JTNEJTIyNyUyMiUyMGVkZ2UlM0QlMjIxJTIyJTNFJTNDbXhHZW9tZXRyeSUyMHdpZHRoJTNEJTIyNTAlMjIlMjBoZWlnaHQlM0QlMjI1MCUyMiUyMHJlbGF0aXZlJTNEJTIyMSUyMiUyMGFzJTNEJTIyZ2VvbWV0cnklMjIlM0UlM0NteFBvaW50JTIweCUzRCUyMjI0MCUyMiUyMHklM0QlMjI5OS41JTIyJTIwYXMlM0QlMjJzb3VyY2VQb2ludCUyMiUyRiUzRSUzQ214UG9pbnQlMjB4JTNEJTIyMjkwJTIyJTIweSUzRCUyMjk5LjUlMjIlMjBhcyUzRCUyMnRhcmdldFBvaW50JTIyJTJGJTNFJTNDQXJyYXklMjBhcyUzRCUyMnBvaW50cyUyMiUzRSUzQ214UG9pbnQlMjB4JTNEJTIyMjgwJTIyJTIweSUzRCUyMjEwMCUyMiUyRiUzRSUzQyUyRkFycmF5JTNFJTNDJTJGbXhHZW9tZXRyeSUzRSUzQyUyRm14Q2VsbCUzRSUzQ214Q2VsbCUyMGlkJTNEJTIyMTElMjIlMjB2YWx1ZSUzRCUyMiUyMiUyMHN0eWxlJTNEJTIyZW5kQXJyb3clM0Rub25lJTNCaHRtbCUzRDElM0IlMjIlMjBwYXJlbnQlM0QlMjIxJTIyJTIwZWRnZSUzRCUyMjElMjIlM0UlM0NteEdlb21ldHJ5JTIwd2lkdGglM0QlMjI1MCUyMiUyMGhlaWdodCUzRCUyMjUwJTIyJTIwcmVsYXRpdmUlM0QlMjIxJTIyJTIwYXMlM0QlMjJnZW9tZXRyeSUyMiUzRSUzQ214UG9pbnQlMjB4JTNEJTIyMjgwJTIyJTIweSUzRCUyMjE4MCUyMiUyMGFzJTNEJTIyc291cmNlUG9pbnQlMjIlMkYlM0UlM0NteFBvaW50JTIweCUzRCUyMjI4MCUyMiUyMHklM0QlMjIxMDAlMjIlMjBhcyUzRCUyMnRhcmdldFBvaW50JTIyJTJGJTNFJTNDJTJGbXhHZW9tZXRyeSUzRSUzQyUyRm14Q2VsbCUzRSUzQ214Q2VsbCUyMGlkJTNEJTIyMTIlMjIlMjB2YWx1ZSUzRCUyMiUyMiUyMHN0eWxlJTNEJTIyZW5kQXJyb3clM0Rub25lJTNCaHRtbCUzRDElM0IlMjIlMjBwYXJlbnQlM0QlMjIxJTIyJTIwZWRnZSUzRCUyMjElMjIlM0UlM0NteEdlb21ldHJ5JTIwd2lkdGglM0QlMjI1MCUyMiUy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" style="cursor:pointer;max-width:100%;" onclick="(function(img){if(img.wnd!=null&&!img.wnd.closed){img.wnd.focus();}else{var r=function(evt){if(evt.data=='ready'&&evt.source==img.wnd){img.wnd.postMessage(decodeURIComponent(img.getAttribute('src')),'*');window.removeEventListener('message',r);}};window.addEventListener('message',r);img.wnd=window.open('https://viewer.diagrams.net/?client=1&page=0&edit=_blank');}})(this);"/>

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
