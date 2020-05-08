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
- has_many :groups,through: :groups_users
- has_many : messages



## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many : groups_users,through: :groups_users
- has_many : messages

## groups_usersテーブル

|Column|Type|Options|Options|
|------|----|-------|-------|
|user_id|references|foreign_key: true|null: false|
|group_id|references|foreign_key: true|null: false|

### Association
- belongs_to : users
- belongs_to : group


## messagesテーブル

|Column|Type|Options|Options|
|------|----|-------|-------|
|body|text|
|image|string|
|users_id|references|foreign_key: true|null: false|
|group_id|references|foreign_key: true|null: false|

### Association
- belongs_to :user
- belongs_to :group
