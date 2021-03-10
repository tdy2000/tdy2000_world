class Article < ApplicationRecord
  belongs_to :category

  validates_presence_of :title, :content,
    allow_blank: false

  scope :alphabetical, ->{ order(title: :asc) }
  scope :active, ->{ where(active: true) }
end
