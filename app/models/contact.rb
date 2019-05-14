class Contact < ApplicationRecord
  # Associations 
  has_many :notes, dependent: :destroy  
  has_one :address, dependent: :destroy 
end
