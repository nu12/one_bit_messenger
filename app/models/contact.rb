class Contact < ApplicationRecord
  belongs_to :user
  belongs_to :record, class_name: "User"

  validates :record_id, presence: true 
  validate :uniqueness_user_record, :cannot_add_self

  def uniqueness_user_record
  	if record && Contact.where(user_id: user.id, record_id: record.id).empty?
  		errors.add(:user_id, "can't add twice") 
  	end
  end

  def cannot_add_self
    errors.add(:user_id, "can't add self") if record == user    
  end
end

