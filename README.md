# colorbuz
起業家密着メディア & 投稿サービス
## Setup
```sh
$ docker-compose build
$ docker-compose run frontend sh
# (コンテナ内)
$ npm install
$ exit
$ docker-compose down
$ docker-compose up
$ docker-compose exec frontend sh
# (コンテナ内)
$ firebase login --no-localhost
# < Googleに身売りをしたくなければ、nを選択 >
# linkをクリック
# 任意のアカウントでログイン
# 生成されたパスフレーズをターミナルにペースト
# firabaseにlogin完了
```