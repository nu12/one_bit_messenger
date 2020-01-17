class RemoveForeignKeyFromMessages < ActiveRecord::Migration[6.0]
  def change
  	remove_foreign_key "messages", "users", column: "receiver_id"
	remove_foreign_key "messages", "users", column: "sender_id"
  end
end
