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

|Column|Type|Options|Options|Options|
|------|----|-------|-------|-------|
|name|string|null: false|index:true|
|password|string|null: false|
|email|string|null:false|unique: true|index:true|
|reset_password_token|string|

### Association
- has_many : groups_users
- has_many : massage



## groupnamesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many : groups_users
- has_many : massage

## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|foreign_key: true|
|group_id|references|foreign_key: true|

### Association
- belongs_to : users
- belongs_to : groups


## massageテーブル

|Column|Type|Options|
|------|----|-------|
|body|text|
|image|string|
|users_id|references|foreign_key: true|
|group_id|references|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :groupnames

### index
- add_index :users,  [:name, :email]