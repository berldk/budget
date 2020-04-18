class Item < ApplicationRecord
  belongs_to :budget
  belongs_to :user
  validates :iName, presence: true,
  length: { minimum: 2 }
  
end
