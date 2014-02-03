# encoding: UTF-8
require 'yaml'
class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
    end
    cities = YAML.load_file(l12n::Engine.root.to_s + '/config/l12n/cities.yml')
    cities.each do |city|
      City.create(name: city['name'])
    end
  end
end
