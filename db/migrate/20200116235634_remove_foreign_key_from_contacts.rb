class RemoveForeignKeyFromContacts < ActiveRecord::Migration[6.0]
  def change
	remove_foreign_key "contacts", "users", column: "user_id"
	remove_foreign_key "contacts", "users", column: "record_id"
  end
end

