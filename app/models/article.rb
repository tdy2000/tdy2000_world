class Article < ApplicationRecord
  has_one :category

  validates_presence_of :title, :content,
    allow_blank: false

  scope :alphabetical, ->{ order('title') }
  scope :active, ->{ where(active: true) }
end
