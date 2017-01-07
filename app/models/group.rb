class Group < ApplicationRecord
  belongs_to :user
  has_many :posts
  validates :title, presence: true

  has_many :group_relationshios
  has_many :members,through: :group_relationshios, source: :user
end
