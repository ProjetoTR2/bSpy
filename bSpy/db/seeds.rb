# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

profile1 = Profile.create(
					      :name             => "Admin",
					  	)

user1 = User.new(
			      :email                 => "admin@gmail.com",
			      :name                  => "Admin",
			      :password              => "admin123",
			      :password_confirmation => "admin123",
			      :profile_id            => profile1.id
  				)
user1.save!