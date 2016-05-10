# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create([
  {
    email:    'a@maildrop.cc',
    password: 'password',
    is_admin: false  
  },
  {
    email:    'b@maildrop.cc',
    password: 'password',
    is_admin: false
  },
  {
    email:    'admin@maildrop.cc',
    password: 'password',
    is_admin: true    
  }
])


Feature.delete_all

require 'open-uri'
require 'json'

open("https://raw.githubusercontent.com/geotunes/geotunes/master/features.json") do |features|
  data = []
  features.read.each_line do |feature|
    json = JSON.parse(feature)
    json["features"].each do |f|
      object = {
    		"href":   f["href"],
    		"title":  f["title"],
    		"artist": f["artist"],
    		"place":  f["place"],
    		"quip":   f["quip"]
      }
      data << object
    end
  end
  Feature.create!(data)
end
