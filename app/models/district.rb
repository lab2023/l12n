class District < ActiveRecord::Base
  default_scope  { order(name: :asc) }
  belongs_to :city
end
