class Bank < ApplicationRecord
  has_many :branches, dependent: :destroy
end
