miz-chefrepo
===============

1. 公開ディレクトリからcookbooksを集める
berks install --path berks-cookbooks

2.
各サーバ用のnodesファイルを作成し、使いたいroleを設定する
（127.0.0.1.jsonがサンプル）

3. 自動設定したい対象サーバにchefを仕込む
knife solo prepare <sudo可能なユーザ名>@<対象ホストのホスト名 or IP>

4. デプロイする
knife solo cook -i "<秘密鍵のパス>" -p <port番号> <sudo可能なユーザ名>@<対象ホストのホスト名 or IP>


