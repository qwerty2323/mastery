class Page < ActiveRecord::Base
  validates :name, :content, presence: true
  validates :name, format: { with: /\w/ }
  validates :name, length: { minimum: 2 }
end
