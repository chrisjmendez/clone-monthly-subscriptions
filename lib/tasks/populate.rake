
# http://railscasts.com/episodes/126-populating-a-database
namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'
    
    [Publication].each(&:delete_all)  
    
    Publication.populate 10 do |publication|
      #Populator.words(1..3).titleize
      publication.title       = Faker::Book.title
      publication.description = Faker::Hipster.sentences
      publication.file_url    = Faker::Internet.url
      #product.created_at = 2.years.ago..Time.now
    end
    
=begin
    User.populate 100 do |user|
      user.name    = Faker::Name.name
      user.company = Faker::Company.name
      user.email   = Faker::Internet.email
      user.phone   = Faker::PhoneNumber.phone_number
      user.street  = Faker::Address.street_address
      user.city    = Faker::Address.city
      user.state   = Faker::Address.us_state_abbr
      user.zip     = Faker::Address.zip_code
    end
=end
  end
end