class Contact < ApplicationRecord
  belongs_to :user
  belongs_to :record, class_name: "User"

  validate :uniqueness_user_record, :cannot_add_self

  def uniqueness_user_record
  	errors.add(:user_id, "can't add twice") unless Contact.where(user_id: user.id, record_id: record.id).empty?
  end

  def cannot_add_self
    errors.add(:user_id, "can't add self") if record == user    
  end
end

