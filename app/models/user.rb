class User < ApplicationRecord
  has_many :users_groupnames
  has_many :groupnames, through: :users_groupnames
end
