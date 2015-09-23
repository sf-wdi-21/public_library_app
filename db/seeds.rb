# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user = User.create(
  email: 'test@test.com',
  first_name: "test",
  last_name: "subject",
  password: "123"
)

sfpl = Library.create(
  name: "San Francisco Public Library",
  floor_count: 6,
  floor_area: 100000
)

sfpl.users << user

Book.create(
  title: "As I Lay Dying",
  author: "Faulkner",
  year: 1930,
  publisher: "Modern Library"
)

p "Finished seeding..."
p "Created #{Library.count} libraries, #{User.count} users, #{LibraryUser.count} library patrons, #{Book.count} books"
