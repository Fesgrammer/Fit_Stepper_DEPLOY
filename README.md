# Fit_Stepper_DEPLOY
デプロイ（Docker）リポジトリ

# Dockerでの起動方法
1. このリポジトリをcloneする  
2. コマンドプロンプトで、cloneしたリポジトリ内に移動する
3. Docker Desktopを立ち上げる
4. コマンドプロンプトで、docker-compose buildを入力して実行する
5.   〃　docker-compose upを入力して実行する。　（これでdocker上でアプリが起動する）
6. 初回起動時はDBへの初期登録の都合上、必ずappサーバが停止する。そのため、Docker Desktopのダッシュボードを開いて、  
　　fit_stepper_deployのアプリケーションの、fit-appを再鼓動（起動ボタンを押す）する。
7. 正常に起動したら、ブラウザでlocalhost:8080/にアクセスする。

# 実装（ソースファイル）について
フロントエンド（Vue）：https://github.com/Fesgrammer/Fit_Stepper_FRONT  
バックエンド（Spring）：https://github.com/Fesgrammer/Fit_Stepper_BACK  
