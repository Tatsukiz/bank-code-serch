class Branch < ApplicationRecord
  belongs_to :bank

  def to_params
    code
  end
end
