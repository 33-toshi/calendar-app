# Plan Calendar
[![Image from Gyazo](https://i.gyazo.com/25660259c4514fe5a0f7296961717c5b.jpg)](https://gyazo.com/25660259c4514fe5a0f7296961717c5b)

## テスト用アカウント
### メールアドレス
test@gmail.com
### パスワード
aaa111


## 概要

ログイン機能があります。<br>
会員登録、ログイン、ログアウトができます。<br>
ログイン後、ニックネームをクリックするとマイページに遷移します。<br>
ニックネームとメールアドレスの確認、修正ができます。<br>
[![Image from Gyazo](https://i.gyazo.com/3cb53be811f002fb18be63298fe40e18.jpg)](https://gyazo.com/3cb53be811f002fb18be63298fe40e18)


ログインするとカレンダーが表示されます。<br>
登録ボタンをクリックすると、プラン登録ページに遷移します。<br>
プランにはタイトル、タスク、メモの３つのフォーマットがあり、自由に入力できます。<br>
日にちを入力することでカレンダーと連動し、カレンダーにタイトルが表示されます。<br>
[![Image from Gyazo](https://i.gyazo.com/4c41da9993d86055bf2c77855efdb447.jpg)](https://gyazo.com/4c41da9993d86055bf2c77855efdb447)

## テーブル
user
|column      |type   |option
|------------|-------|------------
|nickname    |string |null:false
|email       |string |null:false
|password    |string |null:false

has_many :plan

plan
|column    |type   |
|----------|-------|
|title     |string |
|task      |text   |
|memo      |text   |
|start_time|date   |
|checked   |boolean|

belongs_to :user




## 制作背景
学習や筋トレなどを習慣化したい時に、管理ができてモチベーション維持にもなるアプリがほしいと思いました。<br>
カレンダーにタスクが表示され、できたら完了機能がありひと目でこれまでどれだけやってきたのかがわかるアプリにしたいと思いました。<br>

## 今後実装したいこと
<<<<<<< HEAD
完了ボタンの実装
ログイン者のイベントのみの表示
積み上げたタスクをわかりやすくする機能（レベルアップのような要素)


=======
完了ボタンの実装<br>
ログイン者のプランのみの表示<br>
積み上げたタスクをわかりやすくする機能（レベルアップのような要素)<br>
>>>>>>> 283a9393df4b722bd884114543bbae1fa4d04551
