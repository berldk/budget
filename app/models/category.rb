class Category < ApplicationRecord
      validates :cDesc, presence: true,
                    length: { minimum: 2 }
end
