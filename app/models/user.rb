class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :validatable
  
  has_many :contacts,	dependent: :destroy
  has_many :records, 	class_name: "Contact", foreign_key: "record_id", 	dependent: :destroy
  has_many :sent, 		class_name: "Message", foreign_key: "sender_id", 	dependent: :destroy
  has_many :received, 	class_name: "Message", foreign_key: "receiver_id", 	dependent: :destroy

  has_one_attached :photo

  validates :name, presence: true 
end
