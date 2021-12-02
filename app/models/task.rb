class Task < ApplicationRecord
  validates :title, :content_path, presence: true
  has_and_belongs_to_many :labs
end
