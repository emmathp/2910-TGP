class User < ApplicationRecord
  belongs_to :city
  has_secure_password

  has_many :LierPrivateMessageUsers
  has_many :received_messages,through: :LierPrivateMessageUsers, source: :private_message
  has_many :sent_messages, foreign_key: 'sender_id',class_name: "PrivateMessage"
  
  #validates :first_name, presence: true
  #validates :description, presence: true
  #validates :email,
    #presence: true,
    #uniqueness: true,
    #format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }

end
