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

## usersテーブル

|Column|Type|Options|Options|
|------|----|-------|-------|
|name|string|null: false|
|password|string|null: false|
|email|string|null:false|unique: true|
|reset_password_token|string|

### Association
- belongs_to : groups_users
- belongs_to : massage



## groupnamesテーブル
|Column|Type|Options|
|------|----|-------|
|groupnames|string|null: false|

### Association
- belongs_to : groups_users
- belongs_to : massage

## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|foreign_key: true|
|groupnames_id|references|foreign_key: true|

### Association
- has_many : users
- has_many : groups


## massageテーブル

|Column|Type|Options|
|------|----|-------|
|body|text|
|image|string|
|users_id|references|foreign_key: true|
|groupnames_id|references|foreign_key: true|

### Association
- has_many :user
- has_many :groupnames

### index
- add_index :users,  [:name, :email]