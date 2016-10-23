class Page < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }
  validates :urlname, presence: true, length: { minimum: 5 }
end
