class ArticleCategory < ApplicationRecord
  validates :name, presence: true, length: { minimum: 5 }
  validates :slug, presence: true, length: { minimum: 5 }, uniqueness: true
end
