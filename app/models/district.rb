class District < ActiveRecord::Base
  default_scope -> { order_by(name: :asc) }
  belongs_to :city
end
