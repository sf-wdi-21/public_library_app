class Book < ActiveRecord::Base
  has_many :library_books
  has_many :libraries, through: :library_books
end
