class Listing < ApplicationRecord
  belongs_to :user

  default_scope { order(max_occupants: :desc) }
end
