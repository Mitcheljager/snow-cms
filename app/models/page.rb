class Page < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }
  validates :urlname, presence: true, length: { minimum: 5 }

  default_scope { order('priority ASC') }
end
