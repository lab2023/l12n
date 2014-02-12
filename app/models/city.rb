class City < ActiveRecord::Base
  default_scope -> { order_by(name: :asc) }
  has_many :districts
end
