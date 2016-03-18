class Page < ActiveRecord::Base
  extend ActsAsTree::TreeWalker
  validates :name, :content, presence: true
  validates :name, format: { with: /\w/ }
  validates :name, length: { minimum: 2 }
  acts_as_tree order: 'name'
end
