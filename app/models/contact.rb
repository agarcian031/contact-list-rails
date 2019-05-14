class Contact < ApplicationRecord
  # Associations 
  has_many :notes, dependent: :destroy  
  has_one :address, dependent: :destroy 

  #Validations 
  validates :email, :first_name, :last_name,  presence: true 
  validates :email, uniqueness: true 

  #Class Method 
  def self.by_first_name
    order(:first_name)
  end 
end
