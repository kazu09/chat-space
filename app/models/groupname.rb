class Groupname < ApplicationRecord
  has_many :users_groupnames
  has_many :users, through: :users_groupnames
end
