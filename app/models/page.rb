class Page < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }
  validates :urlname, presence: true, length: { minimum: 5 }
  validates :menu, presence: true
  validates :parent_id, presence: true

  default_scope { order('priority ASC') }
end
