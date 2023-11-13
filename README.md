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

ユーザー同士が書籍の貸し借りを通じてコミュニケーションを取ることができます。

# URL



# テスト用アカウント



# 利用方法

書籍を借りる

1.トップページ(一覧ページ)のヘッダーからユーザー新規登録を行います。

2.トップページの書籍一覧から借りたい書籍の画像をクリックすると書籍詳細ページに遷移する。

(検索機能を追加後、借りたい書籍を検索し借りられるようになります。)

3.必要事項を入力し、「レンタルする」ボタンを押すと書籍借り出し申請が成立します。

書籍を貸す

1.トップページ(一覧ページ)のヘッダーからユーザー新規登録を行います。

2.書籍貸し出し申請ページで、貸したい書籍の情報を入力後、「貸し出す」ボタンを押すと書籍の貸し出し申請が成立します。

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

ER図：https://i.gyazo.com/f1ac2d1066ee659ba27c327a71a9f7b6.png

# 画面遷移図



# 開発環境
・フロントエンド
・バックエンド
・インフラ
・テスト
・テキストエディタ
・タスク管理

# ローカルでの動作方法
以下のコマンドを順に実行。
% git clone https://github.com/sin-bit0731/honta
% cd xxxxxx
% bundle install
% yarn install

# 工夫したポイント
