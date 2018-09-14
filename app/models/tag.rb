class Tag < ApplicationRecord
  has_many :announces
  has_many :users
end
