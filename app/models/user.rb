class User < ApplicationRecord
  	has_many :user_tickets	
	has_many :tickets, :through => :user_tickets

	validates :email, presence: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}, uniqueness: true

	
  	validates :password, presence: true, format: {with: /\A[a-zA-Z0-9\.]{8,12}\z/ , message: "assword must be between 8 to 12 alphanumeric characters"}

	validates :name, presence: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}, uniqueness: true
	validates :last_name, presence: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}, uniqueness: true

  # Numero de telefono entre 9 y 12 digitos

 	 validates :phone, presence: true, length: {in: 9..12}

end
