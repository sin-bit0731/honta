# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# アプリケーション名

honta

# アプリケーション概要

自身の過去の体験から、公共の図書館で書籍を借りる際、貸し出し中や借りたい書籍の在庫が無い
など思うように書籍を借りられないという状況がありました。
そのような問題を解決するためにhontaは国内で書籍の貸し出しを募って公共の図書館の機能を
補う形のサービスを提供し、hontaを利用するユーザーが豊かな読書体験を実現することをサポート
します。

# URL

https://honta.onrender.com

# テスト用アカウント

Basic認証 ID:sinbit/Pass:0731

# 利用方法

書籍を借りる

1.トップページ(一覧ページ)のヘッダーで、「Sign up」を押下し、ユーザー新規登録を行います。

2.トップページの書籍一覧から借りたい書籍の画像をクリックすると書籍詳細ページに遷移する。

(検索機能を追加後、借りたい書籍を検索し借りられるようになります。)

3.必要事項を入力し、「レンタル」ボタンを押すと書籍借り出し申請が成立します。

書籍を貸す

1.トップページ(一覧ページ)のヘッダーで、「Sign up」を押下し、ユーザー新規登録を行います。

2.書籍貸し出し申請ページ(Rentalボタンを押下)で、貸したい書籍の情報を入力後、「レンタル」ボタンを押すと書籍の貸し出し申請が成立します。

3.借りたいユーザーが見つかったら、マニュアルに則って書籍を郵送します。

# アプリケーションを作成した背景

過去に公共の図書館を利用したことがあり、借りたい本がなかなか見つからない、見つかっても既に借りられており

借りられるようになるまで1週間以上待たなければならないなどの問題があったことを思い出しました。そこで、公共の

図書館とは別の形で多様なジャンルの書籍を借りられるサービスがあればいいなと思い、ユーザー同士の書籍を通じた

コミュニケーションツールにもなりうるアプリケーションを作ろうと考えました。

# 洗い出した要件

https://1drv.ms/x/s!AuynhhoobtlShKN9RuHWH_cRZ01rCA?e=AQX9Ye

# 実装した機能についての画像やGIFおよびその説明



# 実装予定の機能

今後、書籍の検索機能を追加予定です。

# データベース設計

ER図：https://i.gyazo.com/76ed6866583fed76114f5714bfff899b.png

# 画面遷移図



# 開発環境
・フロントエンド(HTML, CSS, JavaScript)
・バックエンド(Ruby, JavaScript)
・インフラ(MySQL, PostgreSQL)
・テスト
・テキストエディタ(Visual Studio Code)
・タスク管理(プロジェクトボード)

# ローカルでの動作方法
以下のコマンドを順に実行。
% git clone https://github.com/sin-bit0731/honta
% cd xxxxxx
% bundle install
% yarn install

# 工夫したポイント
