opgw-chefrepo
===============

opgwの開発・試験用マシンを自動構築するためのchef repositoryです

1. 準備: chef-soloとBerkshelfをインストールしておく。
 * knife, berksコマンドが動けばOK

2. 公開ディレクトリからcookbooksを集める
berks install --path berks-cookbooks

3. 各サーバ用のnodesファイルを作成し、使いたいroleを設定する
（127.0.0.1.jsonがサンプル）

4. 自動設定したい対象サーバにchefを仕込む
knife solo prepare <sudo可能なユーザ名>@<対象ホストのホスト名 or IP>

5. デプロイする
knife solo cook -i "<秘密鍵のパス>" -p <port番号> <sudo可能なユーザ名>@<対象ホストのホスト名 or IP>
