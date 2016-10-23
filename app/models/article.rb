class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }
  validates :urlname, presence: true, length: { minimum: 5 }, uniqueness: true
  validates :category, presence: true
end
