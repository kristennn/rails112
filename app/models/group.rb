class Group < ApplicationRecord
  has_many :posts
  belongs_to :user

  has_many :group_relationships
  has_many :members, :through => :group_relationships, :source => :user
  validates :title, presence: true
end
