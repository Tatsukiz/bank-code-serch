class Bank < ApplicationRecord
  has_many :branches, dependent: :destroy

  def to_params
    code
  end
end
