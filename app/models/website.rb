class Website < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }

  mount_uploaders :images, ImageUploader
end
