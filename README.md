## JavaScript の Error を NewRelic に投げる実験

### 使い方

 * NewRelic のアカウントを用意し、アプリケーションを追加して License Key を取得する
 * Dotenv などを用意し、上に License Key を .env ファイルなどにセットする
 * ruby & bundler と nodejs & npm を入れてそれぞれ install

### Heroku の場合

 * アプリケーションを作る
 * NewRelic add-on を追加する
 * Multi Buildpack を設定する
 * git push する

