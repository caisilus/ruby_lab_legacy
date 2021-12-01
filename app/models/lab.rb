class Lab < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :content_path, presence: true
  belongs_to :group
end
