# coding: utf-8
class Page < ActiveRecord::Base
  extend ActsAsTree::TreeWalker
  validates :name, :content, presence: true
  validates :name, uniqueness: true
  validates :name, format: { with: /[a-zA-zа-яА-Я0-9]/xi }
  validates :name, length: { minimum: 2 }
  acts_as_tree order: 'name'
end
