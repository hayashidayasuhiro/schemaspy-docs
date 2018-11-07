SchemaSpyを使ったER図生成
===

Java製のDBスキーマを解析してテーブル一覧やER図を出力してくれるツール

## SchemaSpy

Official: http://schemaspy.org/
Github: https://github.com/schemaspy/schemaspy

## セットアップ

1. SchemaSpy.jarファイルをgithubからダウンロードする
2. ダウンロードしたschemaspy-6.0.0.jarファイルを `lib` フォルダに移動する
3. JDBC for MySQL（https://dev.mysql.com/downloads/file/?id=480291）をダウンロードする
4. ダウンロードしたmysql-connector-java-8.0.13.jarを `driver` フォルダに移動する

## 使い方

下記コマンドを実行すると結果ブラウザで表示される

```
./schemaspy.sh -d <database> -h <host> -p <port> -u <user>
```

※デフォルトではoutputディレクトリに結果が保存する。
