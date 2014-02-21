class City < ActiveRecord::Base
  default_scope  { order(name: :asc) }
  has_many :districts
end
