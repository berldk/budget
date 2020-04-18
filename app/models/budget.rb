class Budget < ApplicationRecord
    belongs_to :user
    has_many :items, dependent: :destroy
    validates :name, presence: true,
                    length: { minimum: 2 }
    validates :startDate, presence: true
    validates :endDate, presence: true 
           


end
