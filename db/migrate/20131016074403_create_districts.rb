# encoding: UTF-8
require 'yaml'
class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :name
      t.references :city, index: true
    end

    districts = YAML.load_file(l12n::Engine.root + '/config/l12n/districts.yml')
    districts.each do |district|
      District.create(name: district['name'], city_id: district['city_id'])
    end
  end
end
