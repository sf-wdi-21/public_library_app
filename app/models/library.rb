class Library < ActiveRecord::Base
  has_many :library_users
  has_many :users, through: :library_users
  has_many :library_books
  has_many :books, through: :library_books
end
