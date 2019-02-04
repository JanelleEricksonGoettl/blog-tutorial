class Article < ApplicationRecord
  # ensures that all articles will have a title at least 5 characters long
  validates :title, presence: true, length: { minimum: 5 }
end
